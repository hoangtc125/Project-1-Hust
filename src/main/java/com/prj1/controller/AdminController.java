package com.prj1.controller;

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

import com.prj1.entities.Follow;
import com.prj1.entities.News;
import com.prj1.entities.Noti;
import com.prj1.entities.User;
import com.prj1.service.FollowService;
import com.prj1.service.MailService;
import com.prj1.service.MyUserDetailsService;
import com.prj1.service.NewsService;
import com.prj1.service.NotiService;
import com.prj1.service.UserService;
import com.prj1.utils.AppUtils;

@Controller
public class AdminController {
	
//    Tiem su phu thuoc
	 @Autowired
	  private UserService userService;
	 @Autowired
	  private NewsService newsService;
	 @Autowired
	  private MailService mailService;
	 @Autowired
	  private FollowService followService;
	 @Autowired
	  private NotiService notiService;
	 
	  @RequestMapping(value="/user-list", method = RequestMethod.GET)
	  public String listuser(@RequestParam(required=false, name = "sort", defaultValue="name") String typeSort, @RequestParam(required=false,name="mssv") String mssv, @ModelAttribute("user") User user, Model model) {
		if(mssv != null) {
			System.out.println(mssv);
			model.addAttribute("listUser", userService.searchByMssv(userService.findAll(), mssv));
			return "user-list";
		}
		  
		if(typeSort.compareTo("name") == 0) {
		    model.addAttribute("listUser", userService.sortByName(userService.findAll()));
		} else if(typeSort.compareTo("mssv") == 0) {
			model.addAttribute("listUser", userService.sortByMssv(userService.findAll()));
		} else if(typeSort.compareTo("role") == 0) {
			model.addAttribute("listUser", userService.sortByRole(userService.findAll()));
		} else{	
			model.addAttribute("listUser", userService.findAll());
		}
		
	    return "user-list";
	  }
	  
	  @RequestMapping(value="/user-list-deleted", method = RequestMethod.GET)
	  public String listuserdeleted(@RequestParam(required=false, name = "sort", defaultValue="") String typeSort, @RequestParam(required=false,name="mssv") String mssv, @ModelAttribute("user") User user, Model model) {
		if(mssv != null) {
			System.out.println(mssv);
			model.addAttribute("listUser", userService.searchByMssv(userService.findAllDeleted(), mssv));
			return "user-list-deleted";
		}
		  
		if(typeSort.compareTo("name") == 0) {
		    model.addAttribute("listUser", userService.sortByName(userService.findAllDeleted()));
		} else if(typeSort.compareTo("mssv") == 0) {
			model.addAttribute("listUser", userService.sortByMssv(userService.findAllDeleted()));
		} else if(typeSort.compareTo("role") == 0) {
			model.addAttribute("listUser", userService.sortByRole(userService.findAllDeleted()));
		} else{	
			model.addAttribute("listUser", userService.findAllDeleted());
		}
		
	    return "user-list-deleted";
	  }

	  
	  @RequestMapping("/follow/{id}")
	  public String follow(@PathVariable(required=true, name = "id") int id, Model model, HttpServletRequest request) {
		  User user = userService.findById(id);
		  	followService.save(new Follow(user.getUsername(), AppUtils.getLoginedUser(request.getSession())));
		  	Date date = new Date();
		  	notiService.save(new Noti(user.getUsername(), AppUtils.getLoginedUser(request.getSession()) + " followed you", 0, "/prj1.com/", date.toString()));
		  return "redirect:/user-view/" + id + "/" + user.getUsername();
	  }
	  
	  @RequestMapping("/unFollow/{id}")
	  public String unFollow(@PathVariable(required=false, name = "id") int id, Model model, HttpServletRequest request) {
		  User user = userService.findById(id);
		  	Follow follow = followService.loadFollow(user.getUsername(), AppUtils.getLoginedUser(request.getSession()));
		  	followService.delete(follow.getId());
		  	Date date = new Date();
		  	notiService.save(new Noti(user.getUsername(), AppUtils.getLoginedUser(request.getSession()) + " unfollowed you", 0, "/prj1.com/", date.toString()));
		  return "redirect:/user-view/" + id + "/" + user.getUsername();
	  }
	  
	  @RequestMapping("/user-save")
	  public String insertuser(Model model) {
	    model.addAttribute("user", new User());
	    return "user-save";
	  }
	  @RequestMapping("/user-view/{id}/{username}")
	  public String viewuser(HttpServletRequest request, @PathVariable(required=false, name = "id") int id, @PathVariable(required=false, name = "username") String username, Model model) {
		  if(id == -1) {
			  List<News> news = newsService.loadNewsByAuthor(username);
			  model.addAttribute("listNews", news);
			  User user = userService.findByUsername(username);
			  if(user.getUsername().compareTo(AppUtils.getLoginedUser(request.getSession())) != 0) {
				  List<Follow> follows = followService.loadFollowByFollower(AppUtils.getLoginedUser(request.getSession()));
				  int canFollow = 1;
				  for (Follow follow : follows) {
					if(follow.getUsername().compareTo(user.getUsername()) == 0) {
						canFollow = 0;
						break;
					}
				}
				  model.addAttribute("canFollow", canFollow);
			  }
			  model.addAttribute("user", user);
			    return "user-view";
		  }
		  User user = userService.findById(id);
		  if(user.getUsername().compareTo(AppUtils.getLoginedUser(request.getSession())) != 0) {
			  List<Follow> follows = followService.loadFollowByFollower(AppUtils.getLoginedUser(request.getSession()));
			  int canFollow = 1;
			  for (Follow follow : follows) {
				if(follow.getUsername().compareTo(user.getUsername()) == 0) {
					canFollow = 0;
					break;
				}
			}
			  model.addAttribute("canFollow", canFollow);
		  }
		  List<News> news = newsService.loadNewsByAuthor(user.getUsername());
		  model.addAttribute("listNews", news);
	    model.addAttribute("user", user); 
	    return "user-view";
	  }
	  
	  @RequestMapping("/user-update/{id}/{username}")
	  public String updateuser(@PathVariable("id") int id, @PathVariable("username") String username, Model model, HttpServletRequest request) {
		if(id != -1) {			
			User user = userService.findById(id);
		    model.addAttribute("roleAdmin", mailService.checkRoleAdmin(AppUtils.getLoginedUser(request.getSession())));
			model.addAttribute("user", user);
		} else if(id == -1) {
//			User user = userService.findByUsername(username);
			User user = userService.findByUsername(AppUtils.getLoginedUser(request.getSession()));
		    model.addAttribute("roleAdmin", mailService.checkRoleAdmin(AppUtils.getLoginedUser(request.getSession())));
			model.addAttribute("user", user);
		}
		return "user-update";
	  }
	 
	  @RequestMapping("/saveUser")
	  public String doSaveuser(@ModelAttribute("user") User user, Model model) {
	    userService.saveUser(user);
	    model.addAttribute("listUser", userService.findAll());
	    return "redirect:/user-list";
	  }
	  @RequestMapping("/saveAdmin")
	  public String doSaveadmin(@ModelAttribute("user") User user, Model model) {
	    userService.saveAdmin(user);
	    model.addAttribute("listUser", userService.findAll());
	    return "redirect:/user-list";
	  }
	  @RequestMapping("/updateUser")
	  public String doUpdateuser(@ModelAttribute("user") User user, Model model) {
	    userService.update(user);
	    model.addAttribute("listUser", userService.findAll());
	    return "redirect:/user-list";
	  }
	  
	  @RequestMapping("/user-restore/{id}")
	  public String dorestoreUser(@PathVariable int id, Model model) {
	    userService.restoreById(id);
	    model.addAttribute("listUser", userService.findAllDeleted());
	    return "redirect:/user-list-deleted";
	  }
	  
	  @RequestMapping("/userSoftDelete/{id}/{username}")
	  public String doSoftDeleteuser(@PathVariable int id, @PathVariable String username, Model model, HttpServletRequest request) {
//	    userService.softDelete(id, username);
		  userService.softDelete(id, AppUtils.getLoginedUser(request.getSession()));
	    model.addAttribute("listUser", userService.findAll());
	    return "redirect:/user-list";
	  }
	  
	  @RequestMapping("/userDelete/{id}")
	  public String doDeleteuser(@PathVariable int id, Model model) {
	    userService.delete(id);
	    model.addAttribute("listUser", userService.findAllDeleted());
	    return "redirect:/user-list-deleted";
	  }
}
