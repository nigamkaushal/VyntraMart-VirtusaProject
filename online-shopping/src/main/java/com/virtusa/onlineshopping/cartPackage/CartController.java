package com.virtusa.onlineshopping.cartPackage;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.onlineshopping.productPackage.Product;

@RestController
public class CartController {

	@Autowired
	private CartService cartservice;
	
	@RequestMapping(value="cart/getProducts", produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Product> getProductsInCart(Principal principal){
		return cartservice.getProductsInCart(principal.getName());
	}
	
	@RequestMapping(value="cart")
	public ModelAndView shoppingcart() {
		return new ModelAndView("shoppingcart");
	}
	
	
	//BACHA Hua hai  prod1,prod2,prod3 NOT WORKING
	@RequestMapping(value="checkout", params= {"delete=Delete"})
	public ModelAndView deleteCart(@RequestParam("pid") String pid, Principal principal ) {
		cartservice.deleteProduct(new Cart(new CartId(pid,principal.getName())));
		System.out.println(pid);
		return new ModelAndView("shoppingcart");
	}
	
}
