package com.ismt.micropharma.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ismt.micropharma.model.User;
import com.ismt.micropharma.service.UserService;

@Controller
public class HomeController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getLoginPage() {
		return "login";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String getHomePage() {
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam String userName, @RequestParam String password, HttpServletRequest request,
			HttpSession session) {
		User user = userService.getUserInfoByUnameAndPass(userName, password);
		if (user != null) {
			session.setAttribute("username", userName);
			return "home";
		} else {
			request.setAttribute("logInError", "Wrong username or password!!!");
			return "login";
		}

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpSession session) {
		session.invalidate();
		request.setAttribute("logOutMsg", "You are successfully logged out!!!");
		return "login";
	}
}
