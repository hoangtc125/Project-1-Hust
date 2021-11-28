package com.prj1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj1.entities.User;
import com.prj1.service.UserService;

@Controller
public class UserController {
	
//    Tiem su phu thuoc
	 @Autowired
	  private UserService userService;
	 
	 
}
