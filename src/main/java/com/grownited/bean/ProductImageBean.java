package com.grownited.bean;

import org.springframework.web.multipart.MultipartFile;

public class ProductImageBean {
   

   Integer productImageId;
	Integer productId;
	String imageUrl;
	String productName;
	MultipartFile imageFile;

	public Integer getProductImageId() {
		return productImageId;
	}

	public void setProductImageId(Integer productImageId) {
		this.productImageId = productImageId;
	}

	public Integer getproductId() {
		return productId;
	}

	public void setproductId(Integer productId) {
		this.productId = productId;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	

	public MultipartFile getImageFile() {
		return imageFile;
	}

	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}

	public String getproductName() {
		return productName;
	}

	public void setproductName(String productName) {
		this.productName = productName;
	}

	



}
