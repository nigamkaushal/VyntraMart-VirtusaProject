package com.virtusa.onlineshopping.controllerPackage;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class SignInController {
	
	@RequestMapping(value = "signin")
	public ModelAndView home() {
		return new ModelAndView("signin");
	}

}
