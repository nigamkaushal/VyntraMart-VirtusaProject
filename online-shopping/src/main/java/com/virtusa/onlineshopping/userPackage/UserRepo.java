package com.virtusa.onlineshopping.userPackage;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<Users, String> {
	Optional<Users> findByEmail(String email);	
}
