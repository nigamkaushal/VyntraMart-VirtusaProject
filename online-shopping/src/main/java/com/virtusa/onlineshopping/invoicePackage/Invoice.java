package com.virtusa.onlineshopping.invoicePackage;

import java.util.List;

public class Invoice {
	
	private String customer_fullname;
	private String customer_email;
	private String address;
	private String city;
	private String contact_no;
	private String country;
	private String pincode;
	private List<InvoiceDetails> invoice_details;
//	private List<Product> products;
//	private List<OrderDetails> orderDetails;

	public String getCustomer_fullname() {
		return customer_fullname;
	}
	public void setCustomer_fullname(String customer_fullname) {
		this.customer_fullname = customer_fullname;
	}
	public String getCustomer_email() {
		return customer_email;
	}
	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((city == null) ? 0 : city.hashCode());
		result = prime * result + ((contact_no == null) ? 0 : contact_no.hashCode());
		result = prime * result + ((country == null) ? 0 : country.hashCode());
		result = prime * result + ((customer_email == null) ? 0 : customer_email.hashCode());
		result = prime * result + ((customer_fullname == null) ? 0 : customer_fullname.hashCode());
		result = prime * result + ((invoice_details == null) ? 0 : invoice_details.hashCode());
		result = prime * result + ((pincode == null) ? 0 : pincode.hashCode());
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
		Invoice other = (Invoice) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (city == null) {
			if (other.city != null)
				return false;
		} else if (!city.equals(other.city))
			return false;
		if (contact_no == null) {
			if (other.contact_no != null)
				return false;
		} else if (!contact_no.equals(other.contact_no))
			return false;
		if (country == null) {
			if (other.country != null)
				return false;
		} else if (!country.equals(other.country))
			return false;
		if (customer_email == null) {
			if (other.customer_email != null)
				return false;
		} else if (!customer_email.equals(other.customer_email))
			return false;
		if (customer_fullname == null) {
			if (other.customer_fullname != null)
				return false;
		} else if (!customer_fullname.equals(other.customer_fullname))
			return false;
		if (invoice_details == null) {
			if (other.invoice_details != null)
				return false;
		} else if (!invoice_details.equals(other.invoice_details))
			return false;
		if (pincode == null) {
			if (other.pincode != null)
				return false;
		} else if (!pincode.equals(other.pincode))
			return false;
		return true;
	}
	public List<InvoiceDetails> getInvoice_details() {
		return invoice_details;
	}
	public void setInvoice_details(List<InvoiceDetails> invoice_details) {
		this.invoice_details = invoice_details;
	}
	public Invoice(String customer_fullname, String customer_email, String address, String city, String contact_no,
			String country, String pincode, List<InvoiceDetails> invoice_details) {
		super();
		this.customer_fullname = customer_fullname;
		this.customer_email = customer_email;
		this.address = address;
		this.city = city;
		this.contact_no = contact_no;
		this.country = country;
		this.pincode = pincode;
		this.invoice_details = invoice_details;
	}
	
	
	
	
	
}
