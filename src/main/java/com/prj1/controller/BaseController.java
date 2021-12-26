package com.prj1.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj1.service.MyUserDetailsService;
import com.prj1.service.NotiService;
import com.prj1.service.UserService;
import com.prj1.utils.AppUtils;
import com.prj1.utils.UserAccount;

@Controller
public class BaseController {

	 @Autowired
	  private UserService userService;

	 @Autowired
	  private UserAccount userAccount;

	 @Autowired
	  private NotiService notiService;
	
	@RequestMapping("/")
	public String index(HttpServletRequest request) {
		System.out.println(MyUserDetailsService.username);
		userAccount = new UserAccount(MyUserDetailsService.username);
		AppUtils.storeLoginedUser(request.getSession(), userAccount);
		return "redirect:news-list";
	}
	
	@RequestMapping("/accessDenied")
	public String error403() {
		return "accessDenied";
	}

	@RequestMapping(value = {"/login"})
	public String login(HttpServletRequest request, @RequestParam(value = "error", required = false) final String error, final Model model) {
		
		// login failed
		if (error != null) {
			model.addAttribute("message", "Login Failed!");
		}
		// login first
		return "login";
	}

	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}

	@RequestMapping("/myAcc")
	public String user() {
		return "user";
	}

	@RequestMapping("/logout")
	public String logout(final Model model, HttpServletRequest request) {
		model.addAttribute("message", "Logged out!");
		MyUserDetailsService.username = "";
//		request.removeAttribute("loginedUser");
		// login again
		return "login";
	}
	

	@RequestMapping("/noti-view")
	public String noti(Model model, HttpServletRequest request) {
		model.addAttribute("listNoti", notiService.loadNotiByUsername(AppUtils.getLoginedUser(request.getSession())));
		return "noti-view";
	}

}
