package com.xoriant.modals;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;


@Entity  
@Table(name="customer_data") 

public class Customer {
	
	@Id  
    @GeneratedValue(strategy=GenerationType.AUTO)  
    @PrimaryKeyJoinColumn
	private Integer custId;
	
	@Column
	private String email;
	
	@Column
	private String name;
	
	@Column
	private String password;
	
	@OneToOne(targetEntity=Address.class,cascade=CascadeType.ALL)  
	private Address address;
	
	@Column
	private double contactNo;
	
	public double getContactNo() {
		return contactNo;
	}

	public void setContactNo(double contactNo) {
		this.contactNo = contactNo;
	}

	public Customer() {
		// TODO Auto-generated constructor stub
	}
   
	public Integer getCustId() {
		return custId;
	}

	public void setCustId(Integer custId) {
		this.custId = custId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Customer [custId=" + custId + ", email=" + email + ", name=" + name + ", password=" + password
				+ ", address=" + address + ", contactNo=" + contactNo + "]";
	}

	
	

}
