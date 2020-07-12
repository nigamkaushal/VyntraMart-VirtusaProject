package com.virtusa.onlineshopping.productPackage;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class productService {
	
	@Autowired
	private productRepo repo;
	
	public List<Product> getAllProducts(){
		List<Product> pro = new ArrayList<>();
		repo.findAll().forEach(pro::add);
		return pro;
	}
	
	public Product getProductByCode(String product_id){
		return repo.findById(product_id).get();
	}

}
