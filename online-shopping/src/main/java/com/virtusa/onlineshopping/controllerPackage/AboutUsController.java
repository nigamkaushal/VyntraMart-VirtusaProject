package com.virtusa.onlineshopping.controllerPackage;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AboutUsController {
	
	@RequestMapping(value = "aboutus")
	public ModelAndView home() {
		return new ModelAndView("aboutus");
	}
	
}
