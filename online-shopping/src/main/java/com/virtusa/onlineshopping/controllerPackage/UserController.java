package com.virtusa.onlineshopping.controllerPackage;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.onlineshopping.userPackage.UserRepo;
import com.virtusa.onlineshopping.userPackage.Users;

@RestController
public class UserController {
	
	@Autowired
	private UserRepo userRepo;
	
	@GetMapping(value="manage_products")
	public ModelAndView manageProduct() {
		return new ModelAndView("manage_products");
	}
	
	@GetMapping(value="get_userinfo", produces = MediaType.APPLICATION_JSON_VALUE)
	public List<String> get_user(Principal principal) {
		List<String> list = new ArrayList<>();
		String email = principal.getName();
		Users u = userRepo.findByEmail(email).get();
		list.add(u.getFullname());
		list.add(u.getRoles());
		return list;
	}
	
}
