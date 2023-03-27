package com.grownited.bean;

public class ProductImageBean {
   private Integer productImageId,productId;
   private String productName;
   
   private Boolean deleted;



   	public Integer getProductImageId() {
	return productImageId;
}

public void setProductImageId(Integer productImageId) {
	this.productImageId = productImageId;
}

public Integer getProductId() {
	return productId;
}

public void setProductId(Integer productId) {
	this.productId = productId;
}
  


public String getproductName() {
	return productName;
}

public void setProductName(String productName) {
	this.productName = productName;
}

public Boolean getDeleted() {
	return deleted;
}

public void setDeleted(Boolean deleted) {
	this.deleted = deleted;
}
}
