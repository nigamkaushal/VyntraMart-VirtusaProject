package com.virtusa.onlineshopping.productPackage;

import org.springframework.data.jpa.repository.JpaRepository;

public interface productRepo extends JpaRepository<Product, String> {
	
}
