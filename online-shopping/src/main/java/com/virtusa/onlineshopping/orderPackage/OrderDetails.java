package com.virtusa.onlineshopping.orderPackage;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

import com.virtusa.onlineshopping.cartPackage.CartId;

@Entity
public class OrderDetails implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@EmbeddedId
	private CartId cartId;
	
	private String product_qty;
	private String product_price;
	private String order_date;
		
	public CartId getOrderId() {
		return cartId;
	}
	public String getProduct_qty() {
		return product_qty;
	}
	public String getProduct_price() {
		return product_price;
	}

	public OrderDetails(CartId cartId, String product_qty, String product_price, String order_date) {
		super();
		this.cartId = cartId;
		this.product_qty = product_qty;
		this.product_price = product_price;
		this.order_date = order_date;
	}
	public OrderDetails() {}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public CartId getCartId() {
		return cartId;
	}
	public String getOrder_date() {
		return order_date;
	}
	@Override
	public String toString() {
		return "OrderDetails [cartId=" + cartId + ", product_qty=" + product_qty + ", product_price=" + product_price
				+ ", order_date=" + order_date + "]";
	}
	
	
	
	
}
