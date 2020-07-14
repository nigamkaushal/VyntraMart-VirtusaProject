package com.virtusa.onlineshopping.orderPackage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {

	@Autowired
	private OrderRepo orderRepo;
	
	public void save_Order(String pid, String email, String qty, String price) {
		Order o = new Order(new OrderId(pid, email), qty, price);
//		orderRepo.save(o);
//		ORDER TABLE CREATE nhi ho rhi
		System.out.println(o.toString());

	}
}
