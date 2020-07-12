package com.virtusa.onlineshopping.productPackage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class productController {
	
	private ModelAndView mv;
	
	@Autowired
	private productService proService;
	
	@GetMapping(value="product/{id}")
	public ModelAndView product(@PathVariable String id) {
		mv = new ModelAndView("product", "data", proService.getProductByCode(id));
		return mv;
	}

	
}
