package com.xoriant.dao;

import java.util.List;

import com.xoriant.modals.Customer;

public interface CustomerDao {
	
	public int addCustomer(Customer customer);
	public int updateCustomer(Integer custId);
	public Customer fetchCustomer(String email);
	public Customer getCustomer(Integer customerId);
	public List<Customer> fetchAllCustomers();
	
}