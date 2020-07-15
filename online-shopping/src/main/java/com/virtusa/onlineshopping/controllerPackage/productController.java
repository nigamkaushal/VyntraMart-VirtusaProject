package com.virtusa.onlineshopping.controllerPackage;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.onlineshopping.cartPackage.CartService;
import com.virtusa.onlineshopping.productPackage.ProductService;


@RestController
public class productController {
	
	private ModelAndView mv;
	
	@Autowired
	private ProductService proService;
	
	@Autowired
	private CartService cartService;
	
	@GetMapping(value="product/{id}")
	public ModelAndView product(@PathVariable String id) {
		mv = new ModelAndView("product", "data", proService.getProductByCode(id));
		return mv;
	}
	
	@PostMapping(value="{id}/add", params={"addtocart=Add to Cart"})
	public ModelAndView addtocart(@PathVariable String id, Principal principal) {
		cartService.add_prodtoCart(id, principal);		
		mv = new ModelAndView("product", "data", proService.getProductByCode(id));
		return mv;
	}
	
}
