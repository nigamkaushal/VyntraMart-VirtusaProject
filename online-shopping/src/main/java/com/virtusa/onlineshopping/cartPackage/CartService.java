package com.virtusa.onlineshopping.cartPackage;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.onlineshopping.productPackage.Product;
import com.virtusa.onlineshopping.productPackage.productService;

@Service
public class CartService {
	
	@Autowired
	private CartRepo cartRepo;
	
	@Autowired 
	private productService prodService;
	
	public void add_prodtoCart(String pid, Principal principal) {
		Cart c = new Cart(new CartId(pid, principal.getName()));
		cartRepo.save(c);
	}
	
	public List<String> getProductIds(String email){
		List<Cart> cart = cartRepo.findAll();
		List<String> prod_ids = new ArrayList<>();
		for (Cart c : cart) {
			if(c.getCartid().getCustomer_Email().equals(email))
				prod_ids.add(c.getCartid().getProduct_Id());
		}
		return prod_ids;
	}
	
	public List<Product> getProductsInCart(String email){
		List<String> prod_ids = getProductIds(email);
		List<Product> products = new ArrayList<>();
		prod_ids.forEach(p -> products.add(prodService.getProductByCode(p)));
		return products;
	}
	
	public void deleteProduct(Cart c) {
		cartRepo.delete(c);
	}

}
