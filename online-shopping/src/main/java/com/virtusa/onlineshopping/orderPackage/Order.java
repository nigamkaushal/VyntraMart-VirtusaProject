package com.virtusa.onlineshopping.orderPackage;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="order")
public class Order implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@EmbeddedId
	private OrderId orderId;
	
	private String product_qty;
	private String product_price;
	
	public OrderId getOrderId() {
		return orderId;
	}
	public String getProduct_qty() {
		return product_qty;
	}
	public String getProduct_price() {
		return product_price;
	}
	public Order(OrderId orderId, String product_qty, String product_price) {
		super();
		this.orderId = orderId;
		this.product_qty = product_qty;
		this.product_price = product_price;
	}
	
	public Order() {}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", product_qty=" + product_qty + ", product_price=" + product_price + "]";
	}
	
	
	
	
}
