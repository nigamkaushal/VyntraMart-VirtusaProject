package com.virtusa.onlineshopping.invoicePackage;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.onlineshopping.billingPackage.Billing;
import com.virtusa.onlineshopping.billingPackage.BillingService;
import com.virtusa.onlineshopping.orderPackage.OrderDetails;
import com.virtusa.onlineshopping.orderPackage.OrderDetailsService;
import com.virtusa.onlineshopping.productPackage.Product;
import com.virtusa.onlineshopping.productPackage.ProductService;

@Service
public class InvoiceService {
	@Autowired
	private OrderDetailsService orderDetailsService;
	@Autowired
	private ProductService productService;
	@Autowired
	private BillingService billingService;
	
	public Invoice getInvoice(String cust_email) {
		List<OrderDetails> orders = orderDetailsService.getOrderDetails(cust_email);
		List<InvoiceDetails> invoice_details_list = new ArrayList<>();
	
		for(OrderDetails o : orders) {
			Product p = productService.getProductByCode(o.getOrderId().getProduct_id());
			invoice_details_list.add(new InvoiceDetails(p.getProduct_id(),
					o.getProduct_qty(),o.getProduct_price(),o.getOrder_date(),
					p.getProduct_title(),p.getBrand_name()));
		}
		
		Billing b = billingService.getBilling(cust_email);

		return new Invoice(b.getFullname(), cust_email, b.getAddress(),
				b.getCity(), b.getContact_no(), b.getCountry(),
				b.getPin(), invoice_details_list);
	} 
}
