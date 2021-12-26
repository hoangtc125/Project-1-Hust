package com.prj1.utils;

import javax.servlet.http.HttpSession;


public class AppUtils {

	public static void storeLoginedUser(HttpSession session, UserAccount loginedUser) {
		session.setAttribute("loginedUser", loginedUser);
	}

	public static String getLoginedUser(HttpSession session) {
		UserAccount loginedUser = (UserAccount) session.getAttribute("loginedUser");
		if(loginedUser == null) {
			return "";
		}
		return loginedUser.getUserName();
	}
}
