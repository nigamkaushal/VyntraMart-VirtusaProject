package com.virtusa.onlineshopping.cartPackage;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CartRepo extends JpaRepository<Cart, CartId> {
	
}
