package com.virtusa.onlineshopping.productPackage;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product {
	
	@Id
	private String product_id;
	private String product_title;
	private String brand_name;
	private String product_description;
	private String product_price;
	
	public Product() {
		super();
	}
	
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getProduct_title() {
		return product_title;
	}
	public void setProduct_title(String product_title) {
		this.product_title = product_title;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", product_title=" + product_title + ", brand_name=" + brand_name
				+ ", product_description=" + product_description + ", product_price=" + product_price + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((brand_name == null) ? 0 : brand_name.hashCode());
		result = prime * result + ((product_description == null) ? 0 : product_description.hashCode());
		result = prime * result + ((product_id == null) ? 0 : product_id.hashCode());
		result = prime * result + ((product_price == null) ? 0 : product_price.hashCode());
		result = prime * result + ((product_title == null) ? 0 : product_title.hashCode());
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
		Product other = (Product) obj;
		if (brand_name == null) {
			if (other.brand_name != null)
				return false;
		} else if (!brand_name.equals(other.brand_name))
			return false;
		if (product_description == null) {
			if (other.product_description != null)
				return false;
		} else if (!product_description.equals(other.product_description))
			return false;
		if (product_id == null) {
			if (other.product_id != null)
				return false;
		} else if (!product_id.equals(other.product_id))
			return false;
		if (product_price == null) {
			if (other.product_price != null)
				return false;
		} else if (!product_price.equals(other.product_price))
			return false;
		if (product_title == null) {
			if (other.product_title != null)
				return false;
		} else if (!product_title.equals(other.product_title))
			return false;
		return true;
	}
	
	
	
	
}
