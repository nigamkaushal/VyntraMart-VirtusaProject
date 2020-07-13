package com.virtusa.onlineshopping.controllerPackage;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.virtusa.onlineshopping.cartPackage.CartService;
import com.virtusa.onlineshopping.productPackage.Product;

@RestController
public class CartController {

	@Autowired
	private CartService cartservice;
	
	@RequestMapping(value="cart/getProducts", produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Product> getProductsInCart(Principal principal){
		return cartservice.getProductsInCart(principal.getName());
	}
	
}
