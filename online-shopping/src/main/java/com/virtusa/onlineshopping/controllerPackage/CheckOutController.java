package com.virtusa.onlineshopping.controllerPackage;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.onlineshopping.orderPackage.OrderService;

@RestController
public class CheckOutController {
	@Autowired
	private OrderService orderService;
	
	@PostMapping(value="checkout", params={"proceed=Proceed To Checkout"})
	public ModelAndView checkout(@RequestParam("pid") String pid,
			@RequestParam("price") String price, @RequestParam("qty") String qty,
			Principal principal) {
		
		String[] pids = pid.split(",");
		String[] qtys = qty.split(",");
		String[] prices = price.split(",");
		for(int i=0;i<pids.length;i++) {
			orderService.save_Order(pids[i],principal.getName(),qtys[i],prices[i]);
		}
		return new ModelAndView("checkout");
	}
}
