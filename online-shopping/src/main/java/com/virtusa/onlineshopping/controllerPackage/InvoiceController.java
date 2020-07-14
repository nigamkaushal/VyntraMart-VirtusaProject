package com.virtusa.onlineshopping.controllerPackage;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class InvoiceController {
	
	@RequestMapping(value="invoice")
	public ModelAndView invoice() {
		return new ModelAndView("invoice");
	}
}
