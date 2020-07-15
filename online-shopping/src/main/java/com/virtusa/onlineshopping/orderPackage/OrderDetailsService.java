package com.virtusa.onlineshopping.orderPackage;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

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
		OrderDetails o = new OrderDetails(new CartId(pid, email), qty, price, LocalDate.now().toString());
		orderDetailsRepo.save(o);
		cartService.deleteProduct(new Cart(new CartId(pid, email)));
	}
	public List<OrderDetails> getOrderDetails(String email) {
		List<OrderDetails> all =  orderDetailsRepo.findAll();
		List<OrderDetails> orders = new ArrayList<>();
		for(OrderDetails o : all) {
			if(o.getCartId().getCustomer_email().equals(email)) {
				orders.add(o);
			}
		}
		
		return orders;
	}
}
