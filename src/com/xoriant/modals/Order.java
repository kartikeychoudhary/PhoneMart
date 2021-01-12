package com.xoriant.modals;

import java.util.List;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="order_data")
public class Order {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer orderId;
	@Column
	private Integer customerId;
	@Column
	private Integer phoneId;
	@Column
	private String status;
	@Column
	private double bill;
	
	
	public Order() {
		// TODO Auto-generated constructor stub
	}

	public Order(Integer customerId, Integer phoneId, String status, double bill) {
		super();
		this.customerId = customerId;
		this.phoneId = phoneId;
		this.status = status;
		this.bill = bill;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", customerId=" + customerId + ", phoneId=" + phoneId + ", status="
				+ status + ", bill=" + bill + "]";
	}


	public Integer getOrderId() {
		return orderId;
	}


	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
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


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public double getBill() {
		return bill;
	}


	public void setBill(double bill) {
		this.bill = bill;
	}

}
