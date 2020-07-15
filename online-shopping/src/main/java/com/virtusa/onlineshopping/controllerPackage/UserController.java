package com.virtusa.onlineshopping.controllerPackage;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.virtusa.onlineshopping.userPackage.UserRepo;
import com.virtusa.onlineshopping.userPackage.Users;

@RestController
public class UserController {
	
	@Autowired
	private UserRepo userRepo;
	
	@GetMapping(value="get_userinfo", produces = MediaType.APPLICATION_JSON_VALUE)
	public Map<String,String> get_user(Authentication authentication) {
		Map<String,String> map = new HashMap<>();
		if(authentication==null){
			map.put("fullname", "empty");
			map.put("role", "null");
			return map;
		}
		String email = authentication.getName();
		Users u = userRepo.findByEmail(email).get();
		map.put("fullname", u.getFullname());
		map.put("role", u.getRoles());
		return map;
	}
	
}
