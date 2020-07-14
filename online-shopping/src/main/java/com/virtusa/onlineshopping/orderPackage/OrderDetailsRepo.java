package com.virtusa.onlineshopping.orderPackage;

import org.springframework.data.jpa.repository.JpaRepository;

import com.virtusa.onlineshopping.cartPackage.CartId;

public interface OrderDetailsRepo extends JpaRepository<OrderDetails, CartId> {

}
