package com.amanuel.appointment.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.amanuel.appointment.services.UserService;

@Controller
public class User {
	
//	public User(String firstname, String lastname, String string3, String string4, String string5) {
//		// TODO Auto-generated constructor stub
//	}
	private UserService userservice;
	public User(UserService userservice) {
		this.userservice = userservice;
	}
	@RequestMapping("")
	public String index(Model model) {
		return "index";
	}
	@RequestMapping("/book")
	public String booking(Model model) {
		return "bookingPage";
	}
	@PostMapping("/bookme")
	public String bookme(@ModelAttribute("user") User user, Model model) {
		System.out.println("firstname: ");
		userservice.saveUser(user);
		String str = user.toString();
		System.out.println("User: " + str);
		return "redirect:/confirm";
	}
	@RequestMapping("/confirm")
	public String confirmation(Model model) {
		return "confirmBookingPage";
	}
}
