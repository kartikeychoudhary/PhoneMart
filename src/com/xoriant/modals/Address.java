package com.xoriant.modals;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity  
@Table(name="address_data") 
public class Address {
	
	@Id  
    @GeneratedValue(strategy=GenerationType.AUTO)  
	private Integer addressId;
	
	@Column
	private Integer houseNo;
	
	@Column
	private String street;
	
	@Column
	private String city;
	
	@Column
	private String state;
	
	@Column
	private double pincode;
	
	@OneToOne(targetEntity=Customer.class) 
	private Customer customer;

	
	

	public Address() {
		// TODO Auto-generated constructor stub
	}

	public Integer getAddressId() {
		return addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public Integer getHouseNo() {
		return houseNo;
	}

	public void setHouseNo(Integer houseNo) {
		this.houseNo = houseNo;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public double getPincode() {
		return pincode;
	}

	public void setPincode(double pincode) {
		this.pincode = pincode;
	}
    
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", houseNo=" + houseNo + ", street=" + street + ", city=" + city
				+ ", state=" + state + ", pincode=" + pincode + "]";
	}

}