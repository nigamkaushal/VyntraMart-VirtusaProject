package com.virtusa.onlineshopping.cartPackage;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.onlineshopping.productPackage.Product;

@RestController
public class CartController {

	@Autowired
	private CartService cartservice;
	
	@GetMapping(value="cart/getProducts", produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Product> getProductsInCart(Principal principal){
		return cartservice.getProductsInCart(principal.getName());
	}
	
	@RequestMapping(value="cart")
	public ModelAndView shoppingcart() {
		return new ModelAndView("shoppingcart");
	}
	
	@DeleteMapping(value="cart/delete/{prod_id}")
	public void deleteCart(@PathVariable String prod_id, Principal principal ) {
		cartservice.deleteProduct(new Cart(new CartId(prod_id,principal.getName())));
	}
	
}
