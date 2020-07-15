package com.virtusa.onlineshopping.cartPackage;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class CartId implements Serializable{
	
	private static final long serialVersionUID = -6690808024007215310L;

	@Column(name = "product_id" )
	private String product_id;
	
	@Column(name = "customer_email")
	private String customer_email;
	
	public CartId() {}

	public CartId(String product_id, String customer_email) {
		super();
		this.product_id = product_id;
		this.customer_email = customer_email;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((customer_email == null) ? 0 : customer_email.hashCode());
		result = prime * result + ((product_id == null) ? 0 : product_id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartId other = (CartId) obj;
		if (customer_email == null) {
			if (other.customer_email != null)
				return false;
		} else if (!customer_email.equals(other.customer_email))
			return false;
		if (product_id == null) {
			if (other.product_id != null)
				return false;
		} else if (!product_id.equals(other.product_id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CartId [product_Id=" + product_id + ", customer_Email=" + customer_email + "]";
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getCustomer_email() {
		return customer_email;
	}

	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	
}
