package com.virtusa.onlineshopping.controllerPackage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.onlineshopping.userPackage.UserRepo;
import com.virtusa.onlineshopping.userPackage.Users;

@RestController
public class SignUpController {
	
	@Autowired
	private UserRepo repo; 
	
	@RequestMapping(value = "signup")
	public ModelAndView home() {
		return new ModelAndView("signup");
	}
	
	@PostMapping(value="signupform", params={"sign=Sign"})
	public ModelAndView signup(@ModelAttribute Users user) {
		repo.save(user);
		return new ModelAndView("signin");
	}
}
