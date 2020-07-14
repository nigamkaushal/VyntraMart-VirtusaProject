package com.virtusa.onlineshopping.orderPackage;

import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderRepo extends JpaRepository<Order, OrderId> {

}
