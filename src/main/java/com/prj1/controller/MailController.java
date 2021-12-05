package com.prj1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj1.entities.Mail;
import com.prj1.entities.User;
import com.prj1.service.MailService;
import com.prj1.service.MyUserDetailsService;
import com.prj1.service.UserService;

@Controller
public class MailController {
	
//    Tiem su phu thuoc
	 @Autowired
	  private MailService mailService;
	 @Autowired
	  private UserService userService;
	 
	 @RequestMapping(value="/mail-list/{username}", method = RequestMethod.GET)
	  public String listMail(@PathVariable String username, 
			  @RequestParam(required=false, name = "mode", defaultValue="") String mode,
			  @RequestParam(required=false,name="title") String title, 
			  @RequestParam(required=false, name = "sort", defaultValue="title") String typeSort, Model model) {
//		  User user = userService.findByUsername(username);
		  User user = userService.findByUsername(MyUserDetailsService.username);
		if(title != null) {
			model.addAttribute("listMail", mailService.searchByTitle(mailService.findAll(user.getId()), title));
			return "mail-list";
		}
		if(mode.compareTo("receive") == 0) {
			model.addAttribute("listMail", mailService.findAllReceive(user.getId()));
		} else if(mode.compareTo("send") == 0) {
			model.addAttribute("listMail", mailService.findAllSend(user.getId()));
		} else {
			model.addAttribute("listMail", mailService.findAll(user.getId()));
		}
		  
	    return "mail-list";
	  }
	 
	 @RequestMapping("/mail-view/{id}/{username}")
	  public String viewmail(@PathVariable int id, @PathVariable String username, Model model) {
	    Mail mail = mailService.findById(id);
//	    mail = mailService.checkRead(mail, username);
	    mail = mailService.checkRead(mail, MyUserDetailsService.username);
	    mailService.update(mail);
	    model.addAttribute("mail", mail);
	    return "mail-view";
	  }

	  @RequestMapping("/mail-save")
	  public String insertmail(Model model) {
	    model.addAttribute("mail", new Mail());
	    return "mail-save";
	  }
	  
	  @RequestMapping("/mail-update/{id}/{mailname}")
	  public String updatemail(@PathVariable("id") int id, @PathVariable("mailname") String mailname, Model model) {
		if(id != -1) {			
			Mail mail = mailService.findById(id);
			model.addAttribute("mail", mail);
		} 
		return "mail-update";
	  }

	  @RequestMapping("/saveMail/{username}")
	  public String doSavemail(@PathVariable String username, @ModelAttribute("mail") Mail mail, Model model) {
//		  User user = userService.findByUsername(username);
		  User user = userService.findByUsername(MyUserDetailsService.username);
		  mail.setIdUser(user.getId());
		  mail.setSender(MyUserDetailsService.username);
		  mail.setIsRead("No");		  
		  if(mail.getReceiver().compareTo("all") == 0 && mailService.checkRoleAdmin(MyUserDetailsService.username)) {
			  List<User> users = userService.findAll();
			  for (User user2 : users) {
				  if(user2.getUsername().compareTo(MyUserDetailsService.username) == 0) {
					  continue;
				  }
				mail.setReceiver(user2.getUsername());
				mailService.save(mail);
			}
			  return "redirect:/mail-list/" + MyUserDetailsService.username;
		  }
	    mailService.save(mail);
	    model.addAttribute("listMail", mailService.findAll(user.getId()));
	    return "redirect:/mail-list/" + MyUserDetailsService.username;
	  }
	 
	  @RequestMapping("/updateMail")
	  public String doUpdatemail(@ModelAttribute("mail") Mail mail, Model model) {
	    mailService.update(mail);
	    model.addAttribute("listMail", mailService.findAll(mail.getIdUser()));
	    return "mail-list-management";
	  }
	  
	  @RequestMapping("/mailDelete/{id}/{username}")
	  public String doDeletemail(@PathVariable int id, @PathVariable String username, Model model) {
//		  User user = userService.findByUsername(username);
		  User user = userService.findByUsername(MyUserDetailsService.username);
	    mailService.delete(id, MyUserDetailsService.username);
	    model.addAttribute("listMail", mailService.findAll(user.getId()));
	    return "redirect:/mail-list/" + MyUserDetailsService.username;
	  }
}
