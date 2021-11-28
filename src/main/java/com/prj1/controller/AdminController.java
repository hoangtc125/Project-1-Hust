package com.prj1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj1.entities.User;
import com.prj1.service.UserService;

@Controller
public class AdminController {
	
//    Tiem su phu thuoc
	 @Autowired
	  private UserService userService;
	 
	  @RequestMapping(value={"/user-list"})
	  public String listuser(@RequestParam("sort") String typeSort, Model model) {
		if(typeSort.compareTo("name") == 0) {
		    model.addAttribute("listUser", userService.sortByName());
		} else if(typeSort.compareTo("mssv") == 0) {
			model.addAttribute("listUser", userService.sortByMssv());
		} else if(typeSort.compareTo("role") == 0) {
			model.addAttribute("listUser", userService.sortByRole());
		} else{	
			model.addAttribute("listUser", userService.findAll());
		}
	    return "user-list";
	  }
	  
	  @RequestMapping("/user-save")
	  public String insertuser(Model model) {
	    model.addAttribute("user", new User());
	    return "user-save";
	  }
	  @RequestMapping("/user-view/{id}")
	  public String viewuser(@PathVariable int id, Model model) {
	    User user = userService.findById(id);
	    model.addAttribute("user", user);
	    return "user-view";
	  }
	  
	  @RequestMapping("/user-update/{id}/{username}")
	  public String updateuser(@PathVariable("id") int id, @PathVariable("username") String username, Model model) {
		if(id != -1) {			
			User user = userService.findById(id);
			model.addAttribute("user", user);
		} else if(id == -1) {
			User user = userService.findByUsername(username);
			model.addAttribute("user", user);
		}
		return "user-update";
	  }
	 
	  @RequestMapping("/saveUser")
	  public String doSaveuser(@ModelAttribute("user") User user, Model model) {
	    userService.save(user);
	    model.addAttribute("listUser", userService.findAll());
	    return "user-list";
	  }
	  @RequestMapping("/updateUser")
	  public String doUpdateuser(@ModelAttribute("user") User user, Model model) {
	    userService.update(user);
	    model.addAttribute("listUser", userService.findAll());
	    return "user-list";
	  }
	  
	  @RequestMapping("/userDelete/{id}")
	  public String doDeleteuser(@PathVariable int id, Model model) {
	    userService.delete(id);
	    model.addAttribute("listUser", userService.findAll());
	    return "user-list";
	  }
}
