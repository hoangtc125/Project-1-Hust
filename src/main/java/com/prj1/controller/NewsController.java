package com.prj1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj1.entities.News;
import com.prj1.entities.News;
import com.prj1.entities.News;
import com.prj1.entities.News;
import com.prj1.service.NewsService;
import com.prj1.service.NewsService;

@Controller
public class NewsController {
	
//    Tiem su phu thuoc
	 @Autowired
	  private NewsService newsService;
	 
	 @RequestMapping(value="/news-list", method = RequestMethod.GET)
	  public String listNews(@RequestParam(required=false, name = "sort", defaultValue="title") String typeSort, @RequestParam(required=false,name="title") String title, Model model) {
		if(title != null) {
			model.addAttribute("listNews", newsService.searchByTitle(newsService.findAll(), title));
			return "news-list";
		}
		  
		if(typeSort.compareTo("title") == 0) {
		    model.addAttribute("listNews", newsService.sortByName(newsService.findAll()));
		} else{	
			model.addAttribute("listNews", newsService.findAll());
		}
		
	    return "news-list";
	  }
	 
	 @RequestMapping(value="/news-list-deleted", method = RequestMethod.GET)
	  public String listnewsdeleted(@RequestParam(required=false, name = "sort", defaultValue="") String typeSort, @RequestParam(required=false,name="title") String title, Model model) {
		if(title != null) {
			model.addAttribute("listNews", newsService.searchByTitle(newsService.findAllDeleted(), title));
			return "news-list-deleted";
		}
		  
		if(typeSort.compareTo("title") == 0) {
		    model.addAttribute("listNews", newsService.sortByName(newsService.findAllDeleted()));
		} else{	
			model.addAttribute("listNews", newsService.findAllDeleted());
		}
		
	    return "news-list-deleted";
	  }
	 
	 @RequestMapping("/news-list-management")
	  public String newslistmanagement(Model model) {
		 model.addAttribute("listNews", newsService.findAll());
	    return "news-list-management";
	  }
	 
	 @RequestMapping("/news-view/{id}")
	  public String viewnews(@PathVariable int id, Model model) {
	    News news = newsService.findById(id);
	    model.addAttribute("news", news);
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
	  public String doSavenews(@ModelAttribute("news") News news, Model model) {
	    newsService.save(news);
	    model.addAttribute("listNews", newsService.findAll());
	    return "redirect:/news-list-management";
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
	    return "redirect:/news-list-deleted";
	  }
	  
	  @RequestMapping("/newsSoftDelete/{id}/{newsname}")
	  public String doSoftDeletenews(@PathVariable int id, @PathVariable String newsname, Model model) {
	    newsService.softDelete(id, newsname);
	    model.addAttribute("listNews", newsService.findAll());
	    return "redirect:/news-list-management";
	  }
	  
	  @RequestMapping("/newsDelete/{id}")
	  public String doDeletenews(@PathVariable int id, Model model) {
	    newsService.delete(id);
	    model.addAttribute("listNews", newsService.findAllDeleted());
	    return "redirect:/news-list-deleted";
	  }
}
