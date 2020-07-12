package com.virtusa.onlineshopping.controllerPackage;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CheckOutController {
	
	@RequestMapping(value="checkout")
	public ModelAndView checkout() {
		return new ModelAndView("checkout");
	}
}
