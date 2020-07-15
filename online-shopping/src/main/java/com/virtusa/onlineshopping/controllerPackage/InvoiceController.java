package com.virtusa.onlineshopping.controllerPackage;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.onlineshopping.invoicePackage.InvoiceService;

@RestController
public class InvoiceController {
	@Autowired
	private InvoiceService invoiceService;
	
	@PostMapping(value="invoice")
	public ModelAndView invoice(Principal principal) {
		return new ModelAndView("invoice", "data", invoiceService.getInvoice(principal.getName()));
	}
}
