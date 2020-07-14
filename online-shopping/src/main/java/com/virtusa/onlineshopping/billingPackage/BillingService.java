package com.virtusa.onlineshopping.billingPackage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BillingService {
	
	@Autowired
	private BillingRepo billingRepo;
	
	public void saveBilling(Billing b) {
		billingRepo.save(b);
	}

}
