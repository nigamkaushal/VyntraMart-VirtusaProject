package com.virtusa.onlineshopping.invoicePackage;

public class InvoiceDetails {
	private String product_id;
	private String product_qty;
	private String product_price;
	private String order_date;
	private String product_title;
	private String brand_name;
	
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getProduct_qty() {
		return product_qty;
	}
	public void setProduct_qty(String product_qty) {
		this.product_qty = product_qty;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
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
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((brand_name == null) ? 0 : brand_name.hashCode());
		result = prime * result + ((order_date == null) ? 0 : order_date.hashCode());
		result = prime * result + ((product_id == null) ? 0 : product_id.hashCode());
		result = prime * result + ((product_price == null) ? 0 : product_price.hashCode());
		result = prime * result + ((product_qty == null) ? 0 : product_qty.hashCode());
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
		InvoiceDetails other = (InvoiceDetails) obj;
		if (brand_name == null) {
			if (other.brand_name != null)
				return false;
		} else if (!brand_name.equals(other.brand_name))
			return false;
		if (order_date == null) {
			if (other.order_date != null)
				return false;
		} else if (!order_date.equals(other.order_date))
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
		if (product_qty == null) {
			if (other.product_qty != null)
				return false;
		} else if (!product_qty.equals(other.product_qty))
			return false;
		if (product_title == null) {
			if (other.product_title != null)
				return false;
		} else if (!product_title.equals(other.product_title))
			return false;
		return true;
	}
	public InvoiceDetails(String product_id, String product_qty, String product_price, String order_date,
			String product_title, String brand_name) {
		super();
		this.product_id = product_id;
		this.product_qty = product_qty;
		this.product_price = product_price;
		this.order_date = order_date;
		this.product_title = product_title;
		this.brand_name = brand_name;
	}
	public InvoiceDetails() {}
	
}
