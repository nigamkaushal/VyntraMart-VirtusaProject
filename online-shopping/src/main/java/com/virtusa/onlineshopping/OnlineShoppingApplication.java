package com.virtusa.onlineshopping;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.virtusa.onlineshopping.productPackage.productRepo;
import com.virtusa.onlineshopping.userPackage.UserRepo;

@EnableJpaRepositories(basePackageClasses = {UserRepo.class, productRepo.class})
@SpringBootApplication
public class OnlineShoppingApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineShoppingApplication.class, args);
	}

}
