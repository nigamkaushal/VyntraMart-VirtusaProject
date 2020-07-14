package com.virtusa.onlineshopping.controllerPackage;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class InvoiceController {

	
	@PostMapping(value="invoice")
	public ModelAndView invoice() {
		return new ModelAndView("invoice");
	}
}
