package com.amanuel.appointment.services;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.amanuel.appointment.controllers.User;

@Service
public class UserService {
	List<String> users = new ArrayList<String>();
//			Arrays.asList(
//					new User("Amanuel", "Gebrelibanos","amanual2@gmail.com","Inperson","academic"),
//					new User("Thomas", "Gebrelibanos", "thomas@gmail.com", "Phone", "Leadership")
//			));
	List<User> userInfo = new ArrayList<User>();
	public List<String> allusers(){
		return users;
	}
	public void saveUser(String user) {
		users.add(user);
	}
	public void saveUserInfo(User user) {
		userInfo.add(user);
		
	}
	public List<User> alluserInfo(){
		return userInfo;
	}
}
