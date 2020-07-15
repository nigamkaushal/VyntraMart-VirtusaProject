package com.virtusa.onlineshopping;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.virtusa.onlineshopping.billingPackage.BillingRepo;
import com.virtusa.onlineshopping.cartPackage.CartRepo;
import com.virtusa.onlineshopping.orderPackage.OrderDetailsRepo;
import com.virtusa.onlineshopping.productPackage.ProductRepo;
import com.virtusa.onlineshopping.userPackage.UserRepo;

@EnableJpaRepositories(basePackageClasses = {UserRepo.class, ProductRepo.class,
		CartRepo.class,OrderDetailsRepo.class,BillingRepo.class})
@SpringBootApplication
public class OnlineShoppingApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineShoppingApplication.class, args);
	}

}
