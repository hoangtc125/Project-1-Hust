package com.prj1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj1.entities.User;
import com.prj1.service.UserService;

@Controller
public class AdminController {
	
//    Tiem su phu thuoc
	 @Autowired
	  private UserService userService;
	 
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
	    userService.saveUser(user);
	    model.addAttribute("listUser", userService.findAll());
	    return "user-list";
	  }
	  @RequestMapping("/saveAdmin")
	  public String doSaveadmin(@ModelAttribute("user") User user, Model model) {
	    userService.saveAdmin(user);
	    model.addAttribute("listUser", userService.findAll());
	    return "user-list";
	  }
	  @RequestMapping("/updateUser")
	  public String doUpdateuser(@ModelAttribute("user") User user, Model model) {
	    userService.update(user);
	    model.addAttribute("listUser", userService.findAll());
	    return "user-list";
	  }
	  
	  @RequestMapping("/user-restore/{id}")
	  public String dorestoreUser(@PathVariable int id, Model model) {
	    userService.restoreById(id);
	    model.addAttribute("listUser", userService.findAllDeleted());
	    return "user-list-deleted";
	  }
	  
	  @RequestMapping("/userSoftDelete/{id}/{username}")
	  public String doSoftDeleteuser(@PathVariable int id, @PathVariable String username, Model model) {
	    userService.softDelete(id, username);
	    model.addAttribute("listUser", userService.findAll());
	    return "user-list";
	  }
	  
	  @RequestMapping("/userDelete/{id}")
	  public String doDeleteuser(@PathVariable int id, Model model) {
	    userService.delete(id);
	    model.addAttribute("listUser", userService.findAllDeleted());
	    return "user-list-deleted";
	  }
}
