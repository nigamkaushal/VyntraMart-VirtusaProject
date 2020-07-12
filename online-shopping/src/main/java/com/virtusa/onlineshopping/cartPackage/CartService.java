package com.virtusa.onlineshopping.cartPackage;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {
	
	@Autowired
	private CartRepo cartRepo;
	
	public void add_prodtoCart(String pid, Principal principal) {
		Cart c = new Cart(principal.getName(), pid);
		cartRepo.save(c);
	} 
}
