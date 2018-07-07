package com.amanuel.appointment.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String booking(@ModelAttribute("book") User book,@RequestParam(value = "username", required = false) String username, Model model) {
		//System.out.println("firstname: ");
		System.out.println("username: " + username);
		userservice.saveUser(book);;
		String str = book.toString();
		System.out.println("User: " + str);
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
