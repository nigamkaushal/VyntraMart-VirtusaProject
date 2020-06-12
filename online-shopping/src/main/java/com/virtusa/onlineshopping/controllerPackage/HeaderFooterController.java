package com.virtusa.onlineshopping.controllerPackage;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HeaderFooterController {

	@RequestMapping(value = "header")
	public ModelAndView header() {
		return new ModelAndView("header");
	}
	
	@RequestMapping(value = "footer")
	public ModelAndView footer() {
		return new ModelAndView("footer");
	}
}
