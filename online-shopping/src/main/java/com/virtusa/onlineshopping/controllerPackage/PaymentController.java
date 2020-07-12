package com.virtusa.onlineshopping.controllerPackage;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class PaymentController {
	
	@RequestMapping(value="payment")
	public ModelAndView payment() {
		return new ModelAndView("payment");
	}

}
