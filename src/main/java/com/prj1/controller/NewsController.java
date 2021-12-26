package com.prj1.controller;

import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj1.entities.Comment;
import com.prj1.entities.Follow;
import com.prj1.entities.News;
import com.prj1.entities.Noti;
import com.prj1.entities.User;
import com.prj1.service.CommentService;
import com.prj1.service.FollowService;
import com.prj1.service.MailService;
import com.prj1.service.MyUserDetailsService;
import com.prj1.service.NewsService;
import com.prj1.service.NotiService;
import com.prj1.service.UserService;
import com.prj1.utils.AppUtils;

@Controller
public class NewsController {
	
//    Tiem su phu thuoc
	 @Autowired
	  private NewsService newsService;

	 @Autowired
	  private CommentService commentService;

	 @Autowired
	  private UserService userService;

	 @Autowired
	  private MailService mailService;

	 @Autowired
	  private NotiService notiService;

	 @Autowired
	  private FollowService followService;
	 
	 @RequestMapping(value="/news-list", method = RequestMethod.GET)
	  public String listNews(HttpServletRequest request, @RequestParam(required=false, name = "sort", defaultValue="title") String typeSort, @RequestParam(required=false,name="title") String title, Model model) {
		if(title != null) {
			model.addAttribute("listNews", newsService.searchByTitle(newsService.findAll(), title));
			return "news-list";
		}

		if(typeSort.compareTo("title") == 0) {
		    model.addAttribute("listNews", newsService.sortByName(newsService.findAll()));
		} else{	
			List<News> news = newsService.findAll();
			Collections.reverse(news);
			model.addAttribute("listNews", news);
		}
		
	    return "news-list";
	  }
	 
	 @RequestMapping(value="/news-list-deleted", method = RequestMethod.GET)
	  public String listnewsdeleted(@RequestParam(required=false, name = "me", defaultValue="0") int me, @RequestParam(required=false,name="title") String title, Model model, HttpServletRequest request) {
		if(mailService.checkRoleAdmin(AppUtils.getLoginedUser(request.getSession())) && me != 1) {			
			model.addAttribute("listNews", newsService.findAllDeleted());
			return "news-list-deleted";
		} else {
			model.addAttribute("listNews", newsService.findAllDeletedByAuthor(AppUtils.getLoginedUser(request.getSession())));
			return "news-list-deleted";
		}
		
	  }
	 
	 @RequestMapping("/news-list-management")
	  public String newslistmanagement(Model model, HttpServletRequest request) {
		 if(mailService.checkRoleAdmin(AppUtils.getLoginedUser(request.getSession()))) {
			 model.addAttribute("listNews", newsService.findAll());
			 return "news-list-management";
	    } else {
	    	return "redirect:/user-view/-1/" + AppUtils.getLoginedUser(request.getSession());
	    }
	  }
	 
	 @RequestMapping("/news-view/{id}")
	  public String viewnews(@PathVariable int id, Model model, HttpServletRequest request) {
	    News news = newsService.findById(id);
	    model.addAttribute("news", news);
	    model.addAttribute("listComment", commentService.loadComments(id));
	    model.addAttribute("comment", new Comment());
	    model.addAttribute("roleAdmin", mailService.checkRoleAdmin(AppUtils.getLoginedUser(request.getSession())));
	    return "news-view";
	  }

	  @RequestMapping("/news-save")
	  public String insertnews(Model model) {
	    model.addAttribute("news", new News());
	    return "news-save";
	  }
	  
	  @RequestMapping("/news-update/{id}/{newsname}")
	  public String updatenews(@PathVariable("id") int id, @PathVariable("newsname") String newsname, Model model) {
		if(id != -1) {			
			News news = newsService.findById(id);
			model.addAttribute("news", news);
		} 
		return "news-update";
	  }

	  @RequestMapping("/saveNews")
	  public String doSavenews(@ModelAttribute("news") News news, Model model, HttpServletRequest request) {
		  news.setAuthor(AppUtils.getLoginedUser(request.getSession()));
	    newsService.save(news);
	    Date date = new Date();
	    List<Follow> follows = followService.loadFollowByUsername(AppUtils.getLoginedUser(request.getSession()));
	    for (Follow follow : follows) {
	    	User user = userService.findByUsername(follow.getUsername());
	    	notiService.save(new Noti(follow.getFollower(), follow.getUsername() + " had uploaded a news", 0, "/prj1.com/user-view/" + user.getId() + "/" + user.getUsername(), date.toString()));
		}
	    notiService.save(new Noti(AppUtils.getLoginedUser(request.getSession()), "Your news had been uploaded successfully", 0, "/prj1.com/news-view/" + news.getId(), date.toString()));
	    if(mailService.checkRoleAdmin(AppUtils.getLoginedUser(request.getSession()))) {	    	
	    	model.addAttribute("listNews", newsService.findAll());
	    	return "redirect:/news-list-management";
	    } else {
	    	return "redirect:/user-view/-1/" + AppUtils.getLoginedUser(request.getSession());
	    }
	  }
	  
	  @RequestMapping("/saveComment/{idNews}/{username}")
	  public String doSavecomment(@ModelAttribute("comment") Comment comment, @PathVariable("idNews") int idNews, @PathVariable("username") String username, Model model, HttpServletRequest request) {
	    comment.setIdNews(idNews);
//	    comment.setSender(username);
	    comment.setSender(AppUtils.getLoginedUser(request.getSession()));
	    commentService.save(comment);
	    News news = newsService.findById(idNews);
	    model.addAttribute("news", news);
	    model.addAttribute("listComment", commentService.loadComments(idNews));
	    
	    List<String> comments = commentService.loadUserCommentByIdNews(idNews);
	    Date date = new Date();
	    for (String comment2 : comments) {
			if(comment2.compareTo(AppUtils.getLoginedUser(request.getSession())) != 0) {
				notiService.save(new Noti(comment2, "Have a new comment in which news you commented", 0, "/prj1.com/news-view/" + idNews, date.toString()));
			}
		}
	    
	    return "redirect:/news-view/" + idNews;
	  }
	  
	  @RequestMapping("/commentDeleteNews/{id}/{idNews}")
	  public String doDeletecomment(@PathVariable int id, @PathVariable int idNews, Model model) {
	    commentService.delete(id);
	    return "redirect:/news-view/" + idNews;
	  }
	 
	  @RequestMapping("/updateNews")
	  public String doUpdatenews(@ModelAttribute("news") News news, Model model) {
	    newsService.update(news);
	    model.addAttribute("listNews", newsService.findAll());
	    return "redirect:/news-list-management";
	  }
	  
	  @RequestMapping("/news-restore/{id}")
	  public String dorestoreNews(@PathVariable int id, Model model) {
	    newsService.restoreById(id);
	    model.addAttribute("listNews", newsService.findAllDeleted());
	    return "redirect:/news-list-deleted?me=1";
	  }
	  
	  @RequestMapping("/newsSoftDelete/{id}/{username}")
	  public String doSoftDeletenews(@PathVariable int id, @PathVariable String username, Model model, HttpServletRequest request) {
//	    newsService.softDelete(id, newsname);
	    newsService.softDelete(id, AppUtils.getLoginedUser(request.getSession()));
	    model.addAttribute("listNews", newsService.findAll());
	    return "redirect:/news-list-management";
	  }
	  
	  @RequestMapping("/newsDelete/{id}")
	  public String doDeletenews(@PathVariable int id, Model model) {
	    newsService.delete(id);
	    model.addAttribute("listNews", newsService.findAllDeleted());
	    return "redirect:/news-list-deleted?me=1";
	  }
}
