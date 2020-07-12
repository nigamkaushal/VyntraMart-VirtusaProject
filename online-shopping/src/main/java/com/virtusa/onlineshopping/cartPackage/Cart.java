package com.virtusa.onlineshopping.cartPackage;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

@Entity
@IdClass(CartId.class)
public class Cart implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	private String customer_email;
	
	@Id
	private String product_id;
	
	public Cart() {}

	public Cart(String customer_email, String product_id) {
		super();
		this.customer_email = customer_email;
		this.product_id = product_id;
	}

	public String getCust_email() {
		return customer_email;
	}

	public void setCust_email(String cust_email) {
		this.customer_email = cust_email;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	@Override
	public String toString() {
		return "Cart [cust_email=" + customer_email + ", product_id=" + product_id + "]";
	}
	
	
}
