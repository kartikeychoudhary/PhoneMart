package com.xoriant.dao;

import java.util.List;

import com.xoriant.modals.Order;
import com.xoriant.modals.Phone;

public interface OrderDao {
	
	public Integer addOrder(Order order);
	public void deleteOrder(Integer orderId);
	public Order getOrder(Integer orderId);
	public List<Phone> fetchPhones(Integer customerId);
	public List<Order> fetchOrders(Integer customerId);

}
