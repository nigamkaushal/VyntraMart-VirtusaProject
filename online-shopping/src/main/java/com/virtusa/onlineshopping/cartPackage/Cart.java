package com.virtusa.onlineshopping.cartPackage;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class Cart implements Serializable {

	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private CartId cartid;

	public Cart() {}

	public Cart(CartId cartid) {
		super();
		this.cartid = cartid;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cartid == null) ? 0 : cartid.hashCode());
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
		Cart other = (Cart) obj;
		if (cartid == null) {
			if (other.cartid != null)
				return false;
		} else if (!cartid.equals(other.cartid))
			return false;
		return true;
	}

	public CartId getCartid() {
		return cartid;
	}

	@Override
	public String toString() {
		return "Cart [Customer_Email=" + cartid.getCustomer_Email() + ","
				+ "Product_id=" + cartid.getProduct_Id() + "]";
	}
	
	
	
	
	
}
