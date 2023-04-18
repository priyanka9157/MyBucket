package com.grownited.bean;

public class CategoryBean {

	private Integer categoryId;
	private String categoryName;
	private Boolean deleted;
	Integer productId;
	String productName;
	String price;

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}

	public Integer getproductId() {
		return productId;
	}

	public void setproductId(Integer productId) {
		this.productId = productId;
	}

	public String getproductName() {
		return productName;
	}

	public void setproductName(String productName) {
		this.productName = productName;
	}

	public String getprice() {
		return price;
	}

	public void setprice(String price) {
		this.price = price;
	}
	
	

}