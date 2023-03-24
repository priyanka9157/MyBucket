package com.grownited.bean;

public class AddressBean {
	
	private Integer addressId;
	private String addressLine;
	private String landMark;
	private String pincode;
	private String city;
	private String state;
	private Boolean deleted;
	private Boolean defaultInd;
	
	
	public Integer getAddressId() {
		return addressId;
	}
	

	public void setAddressId(Integer addressId) {
		this.addressId=addressId;
	}
	
	public String getAddressLine() {
		return addressLine;
	}

	public void setAddressLine(String addressLine) { 
		this.addressLine = addressLine;
	}
	
	public String getLandMark() {
		return landMark;
	}

	public void setLandMark(String landmark, String landMark) { 
		this.landMark = landMark;
	}
	
	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) { 
		this.pincode = pincode;
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
	
	
	public Boolean isDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}


	public Boolean getDefaultInd() {
		return defaultInd;
	}


	public void setDefaultInd(Boolean defaultInd) {
		this.defaultInd = defaultInd;
	}
	
	
}
