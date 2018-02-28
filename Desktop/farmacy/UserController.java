package com.ismt.micropharma.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ismt.micropharma.model.User;
import com.ismt.micropharma.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/user_form", method = RequestMethod.GET)
	public String getUserForm(@ModelAttribute User user) {
		return "userForm";
	}

	@RequestMapping(value = "/user_save", method = RequestMethod.POST)
	public String saveUserInfo(@ModelAttribute User user) {
		if (user != null) {
			userService.saveUserInfo(user);
		}
		return "redirect:/user_list";

	}

	@RequestMapping(value = "/user_list", method = RequestMethod.GET)
	public String listUser(Model model) {
		model.addAttribute("users", userService.getAllUserInfo());
		return "userList";
	}
	
	@RequestMapping(value = "/user_delete", method = RequestMethod.GET)
	public String deleteStudentInfo(@RequestParam int id) {
		userService.deleteUserInfo(id);
		return "redirect:/user_list";
	}

	@RequestMapping(value = "/user_edit", method = RequestMethod.GET)
	public String getUserEditForm(Model model, @RequestParam int id) {
		model.addAttribute("user", userService.getUserInfoById(id));
		return "userEdit";
	}

	@RequestMapping(value = "/user_update", method = RequestMethod.POST)
	public String updateUserInfo(@ModelAttribute User user) {

		if (user != null) {
			userService.saveUserInfo(user);
		}
		return "redirect:/user_list";
	}

}
