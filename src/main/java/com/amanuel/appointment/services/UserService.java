package com.amanuel.appointment.services;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.amanuel.appointment.controllers.User;

@Service
public class UserService {
	List<User> users = new ArrayList<User>();
//			Arrays.asList(
//					new User("Amanuel", "Gebrelibanos","amanual2@gmail.com","Inperson","academic"),
//					new User("Thomas", "Gebrelibanos", "thomas@gmail.com", "Phone", "Leadership")
//			));
	public List<User> allusers(){
		return users;
	}
	public void saveUser(User user) {
		users.add(user);
	}
}
