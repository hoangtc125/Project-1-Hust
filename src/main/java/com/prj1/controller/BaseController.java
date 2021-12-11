package com.prj1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.prj1.service.MyUserDetailsService;

@Controller
public class BaseController {
	
	@RequestMapping("/")
	public String index() {
		System.out.println(MyUserDetailsService.username);
		return "redirect:news-list";
	}
	
	@RequestMapping("/accessDenied")
	public String error403() {
		return "accessDenied";
	}

	@RequestMapping(value = {"/login"})
	public String login(@RequestParam(value = "error", required = false) final String error, final Model model) {
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
	public String logout(final Model model) {
		model.addAttribute("message", "Logged out!");
		MyUserDetailsService.username = "";
		// login again
		return "login";
	}

}
