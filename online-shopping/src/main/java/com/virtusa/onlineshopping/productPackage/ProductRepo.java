package com.virtusa.onlineshopping.productPackage;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepo extends JpaRepository<Product, String> {
	
}
