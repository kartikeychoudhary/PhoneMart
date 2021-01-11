package com.xoriant.dao;

import com.xoriant.modals.Customer;

public interface CustomerDao {
	
	public int addCustomer(Customer customer);
	public int updateCustomer(Integer custId);
	public Customer fetchCustomer(String email);
}