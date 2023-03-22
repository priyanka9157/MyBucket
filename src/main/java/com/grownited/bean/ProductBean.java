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
	private Integer categoryId,subCategoryId;
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
		return description;
	}

	public void setdescription(String description) {
		this.description = description;
	}
	
	
	public String getquantity() {
		return quantity;
	}

	public void setquantity(String quantity) { 
		this.quantity = quantity;
	}
	
	public String getprice() {
		return price;
	}

	public void setprice(String price) { 
		this.price = price;
	}
	

	 
	public String getTopSelling() {
		return topSelling;
	}

	public void setTopSelling(String topSelling) {
		this.topSelling = topSelling;
	}

	public String getMostValueInd() {
		return mostValueInd;
	}

	public void setMostValueInd(String mostValueInd) {
		this.mostValueInd = mostValueInd;
	}

	public String getbrandName() {
		return brandName;
	}

	public void setbrandName(String brandName) { 
		this.brandName = brandName;
	}

	
	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	
	public Integer getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(Integer subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	


	public Boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}

}
