package com.xoriant.modals;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="phone_data")
public class Phone {
	@Id 
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="phone_id")
	private Integer phoneId;
	
	@Column(name="phone_name")
	private String phoneName;
	
	@Column(name="model")
	private String model;
	
	@Column(name="brand")
	private String brand;
	
	@Column(name="cost")
	private String cost;
	
	@Column(name="img_url")
	private String imgUrl;
	
	@Embedded
	private Features features;
	
	public Phone() {
		
	}

	public Phone(String phoneName, String model, String brand, String cost, String imgUrl,
			Features features) {
		super();
		this.phoneName = phoneName;
		this.model = model;
		this.brand = brand;
		this.cost = cost;
		this.imgUrl = imgUrl;
		this.features = features;
	}

	@Override
	public String toString() {
		return "Phone [phoneId=" + phoneId + ", phoneName=" + phoneName + ", model=" + model + ", brand=" + brand
				+ ", cost=" + cost + ", imgUrl=" + imgUrl + ", features=" + features.toString() + "]";
	}
	
	public Phone updatePhone(Phone phone) {
		this.phoneName = phone.phoneName;
		this.model = phone.model;
		this.brand = phone.brand;
		this.cost = phone.cost;
		this.imgUrl = phone.imgUrl;
		this.features = phone.features;
		return this;
	}

	public Integer getPhoneId() {
		return phoneId;
	}

	public void setPhoneId(Integer phoneId) {
		this.phoneId = phoneId;
	}

	public String getPhoneName() {
		return phoneName;
	}

	public void setPhoneName(String phoneName) {
		this.phoneName = phoneName;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getCost() {
		return cost;
	}

	public void setCost( String cost) {
		this.cost = cost;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public Features getFeatures() {
		return features;
	}

	public void setFeatures(Features features) {
		this.features = features;
	}
	
}