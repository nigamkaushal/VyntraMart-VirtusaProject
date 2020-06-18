package com.virtusa.onlineshopping.userPackage;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<Users, String> {
	Users findByEmail(String email);	
}
