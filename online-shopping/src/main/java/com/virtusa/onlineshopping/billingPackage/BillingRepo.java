package com.virtusa.onlineshopping.billingPackage;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface BillingRepo extends JpaRepository<Billing, String> {
	Optional<Billing> findByEmail(String email);
	
}
