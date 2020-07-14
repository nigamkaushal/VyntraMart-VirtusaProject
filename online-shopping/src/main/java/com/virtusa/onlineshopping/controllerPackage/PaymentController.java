package com.virtusa.onlineshopping.controllerPackage;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.onlineshopping.billingPackage.Billing;
import com.virtusa.onlineshopping.billingPackage.BillingService;

@RestController
public class PaymentController {
	
	@Autowired
	private BillingService billingService;
	
	@PostMapping(value="payment", params={"pay=Proceed To Payment"})
	public ModelAndView payment(@ModelAttribute Billing bill, Principal principal) {
		bill.setEmail(principal.getName());
		billingService.saveBilling(bill);
		return new ModelAndView("payment");
	}

}
