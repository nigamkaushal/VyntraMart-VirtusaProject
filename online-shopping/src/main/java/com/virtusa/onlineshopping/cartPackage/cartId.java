package com.virtusa.onlineshopping.cartPackage;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class cartId implements Serializable{
	
	private static final long serialVersionUID = -6690808024007215310L;

	@Column(name = "product_id" )
	private String product_Id;
	
	@Column(name = "customer_email")
	private String customer_Email;
	
	public cartId() {}

	public cartId(String product_id, String customer_email) {
		super();
		this.product_Id = product_id;
		this.customer_Email = customer_email;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((customer_Email == null) ? 0 : customer_Email.hashCode());
		result = prime * result + ((product_Id == null) ? 0 : product_Id.hashCode());
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
		cartId other = (cartId) obj;
		if (customer_Email == null) {
			if (other.customer_Email != null)
				return false;
		} else if (!customer_Email.equals(other.customer_Email))
			return false;
		if (product_Id == null) {
			if (other.product_Id != null)
				return false;
		} else if (!product_Id.equals(other.product_Id))
			return false;
		return true;
	}

	public String getProduct_Id() {
		return product_Id;
	}

	public String getCustomer_Email() {
		return customer_Email;
	}

	

	
	
	
	
	
	
}
