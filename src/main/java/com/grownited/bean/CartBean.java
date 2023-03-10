package com.grownited.bean;

public class CartBean {

	private Integer cartId,productId;
	private Integer userId;
	private String quantity;
	private Boolean deleted;
	private String productName;
	
	public Integer getCartId() {
		return cartId;
	}
	

	public void setCartId(Integer cartId) {
		this.cartId=cartId;
	}
	
	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}


	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId=userId;
	}
	
	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) { 
		this.quantity = quantity;
	}
	
	public Boolean isDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}
	
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productname) {
		this.productName = productname;
	}


}
