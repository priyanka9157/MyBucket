package com.grownited.bean;

public class CartBean {

	private Integer cartId;
	private Integer userId;
	private Integer productId;
	private String productName;
	private Integer quantity;
	private Boolean deleted;
	Integer price;
	String imageUrl;
	
	
	public Integer getCartId() {
		return cartId;
	}
	

	public void setCartId(Integer cartId) {
		this.cartId=cartId;
	}
	
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId=userId;
	}
	
	public Integer getproductId() {
		return productId;
	}

	public void setproductId(Integer productId) {
		this.productId=productId;
	}
	
	public String getproductName() {
		return productName;
	}

	public void setproductName(String productname) {
		this.productName = productname;
	}

	
	
	public Integer getquantity() {
		return quantity;
	}


	public void setquantity(Integer quantity) {
		this.quantity = quantity;
	}


	public Boolean isDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}


	public Integer getprice() {
		return price;
	}


	public void setprice(Integer price) {
		this.price = price;
	}


	public String getImageUrl() {
		return imageUrl;
	}


	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	
	

}
