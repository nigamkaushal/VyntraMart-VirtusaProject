package com.virtusa.onlineshopping.userPackage;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserRepo repo; 
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		
		Optional<Users> user = repo.findByEmail(email);

		user.orElseThrow(() -> new UsernameNotFoundException("Not Found "
				+ email));
		
		return user.map(UserPrincipal::new).get();
	}

}
