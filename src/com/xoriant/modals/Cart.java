package com.xoriant.modals;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cart_data")
public class Cart {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer cartId;
	@Column
	private Integer customerId;
	@Column
	private Integer phoneId;
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}
	

	public Cart(Integer customerId, Integer phoneId) {
		super();
		this.customerId = customerId;
		this.phoneId = phoneId;
	}



	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", customerId=" + customerId + ", phoneId=" + phoneId + "]";
	}

	public Integer getCartId() {
		return cartId;
	}

	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public Integer getPhoneId() {
		return phoneId;
	}

	public void setPhoneId(Integer phoneId) {
		this.phoneId = phoneId;
	}
	 
	
}
