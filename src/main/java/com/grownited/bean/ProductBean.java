package com.grownited.bean;

public class ProductBean {
	private Integer productId;
	private String productName;
	private String description;
	private String quantity;
    private String price;
    private String topSelling;
    private String mostValueInd;
    private String brandName;
	private Boolean deleted;

	public Integer getproductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getproductName() {
		return productName;
	}

	public void setproductName(String productName) {
		this.productName = productName;
	}
	
	public String getdescription() {
		return getdescription();
	}

	public void setgetdescription(String description) {
		this.description = description;
	}
	
	
	public String getquantity() {
		return getquantity();
	}

	public void setquantity(String quantity) { 
		this.quantity = quantity;
	}
	
	public String getprice() {
		return getprice();
	}

	public void setprice(String price) { 
		this.price = price;
	}
	
	public String gettopSelling() {
		return topSelling;
	}

	public void settopSelling(String topSelling) { 
		this.topSelling = topSelling;
	}
	
	public String getmostValueInd() {
		return mostValueInd;
	}

	public void setmostValueInd(String mostValueInd) { 
		this.mostValueInd = mostValueInd;
	}
	 
	public String getbrandName() {
		return brandName;
	}

	public void setbrandName(String brandName) { 
		this.brandName = brandName;
	}
	
	public Boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}

}
