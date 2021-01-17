package com.xoriant.dao;

import java.util.List;

import com.xoriant.modals.Cart;
import com.xoriant.modals.Phone;

public interface CartDao {
	
	public Integer addToCart(Cart cart);
	public void removeFromCart(Integer cartId);
	public List<Phone> fetchPhones(Integer customerId);
	public List<Cart> fetchCartItems(Integer customerId);

}
