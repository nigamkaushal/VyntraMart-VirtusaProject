package com.virtusa.onlineshopping.orderPackage;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.onlineshopping.cartPackage.Cart;
import com.virtusa.onlineshopping.cartPackage.CartId;
import com.virtusa.onlineshopping.cartPackage.CartService;

@Service
public class OrderDetailsService {

	@Autowired
	private OrderDetailsRepo orderDetailsRepo;
	
	@Autowired
	private CartService cartService;
	
	public void save_Order(String pid, String email, String qty, String price) {
		LocalDate lt = LocalDate.now(); 
		OrderDetails o = new OrderDetails(new CartId(pid, email), qty, price, lt.toString());
		orderDetailsRepo.save(o);
		cartService.deleteProduct(new Cart(new CartId(pid, email)));
	}
}
