package com.xoriant.modals;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class Features {
	
//	@Id 
//	@GeneratedValue(strategy=GenerationType.SEQUENCE)
//	@Column(name="feature_id")
//	private Integer featureId;
	
	@Column
	private String color;
	@Column
	private String dimensions;
	@Column
	private String battery;
	@Column
	private String selfieCamera;
	@Column
	private String mainCamera;
	@Column
	private String processor;
	@Column
	private String memory;
	@Column
	private String os;

	public Features() {
		// TODO Auto-generated constructor stub
	}
	

	public Features(String color, String dimensions, String battery, String selfieCamera, String mainCamera,
			String processor, String memory, String os) {
		super();
		this.color = color;
		this.dimensions = dimensions;
		this.battery = battery;
		this.selfieCamera = selfieCamera;
		this.mainCamera = mainCamera;
		this.processor = processor;
		this.memory = memory;
		this.os = os;
	}



	@Override
	public String toString() {
		return "Features [color=" + color + ", dimensions=" + dimensions + ", battery=" + battery
				+ ", selfieCamera=" + selfieCamera + ", mainCamera=" + mainCamera + ", processor=" + processor
				+ ", memory=" + memory + ", os=" + os + "]";
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getDimensions() {
		return dimensions;
	}

	public void setDimensions(String dimensions) {
		this.dimensions = dimensions;
	}

	public String getBattery() {
		return battery;
	}

	public void setBattery(String battery) {
		this.battery = battery;
	}

	public String getSelfieCamera() {
		return selfieCamera;
	}

	public void setSelfieCamera(String selfieCamera) {
		this.selfieCamera = selfieCamera;
	}

	public String getMainCamera() {
		return mainCamera;
	}

	public void setMainCamera(String mainCamera) {
		this.mainCamera = mainCamera;
	}

	public String getProcessor() {
		return processor;
	}

	public void setProcessor(String processor) {
		this.processor = processor;
	}

	public String getMemory() {
		return memory;
	}

	public void setMemory(String memory) {
		this.memory = memory;
	}

	public String getOs() {
		return os;
	}

	public void setOs(String os) {
		this.os = os;
	}

}
