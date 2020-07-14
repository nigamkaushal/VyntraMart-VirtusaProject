package com.virtusa.onlineshopping.controllerPackage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.virtusa.onlineshopping.productPackage.productService;

@RestController
public class IndexController {
	
	@Autowired
	private productService proService;
	
	@RequestMapping(value = {"", "home"})
	public ModelAndView home() {
		return new ModelAndView("index","data",proService.getAllProducts());
	}

		
}
