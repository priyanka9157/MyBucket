package com.grownited.bean;

public class ProductBean {
	private Integer productId;
	private String productName;
	private String description;
	private String quantity;
    private String price;
    private Boolean topSellingInd;
    private Boolean mostValueInd;
    private String brandName;
	private Integer categoryId,subCategoryId;
	private Boolean deleted;
	private String productDetailDescriptionURL;
	private Boolean latestInd;
	
	private String categoryName;
	private String subCategoryName;
 


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
	

	

	public Boolean getTopSellingInd() {
		return topSellingInd;
	}

	public void setTopSellingInd(Boolean topSellingInd) {
		this.topSellingInd = topSellingInd;
	}

	public Boolean getMostValueInd() {
		return mostValueInd;
	}

	public void setMostValueInd(Boolean mostValueInd) {
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

	public String getProductDetailDescriptionURL() {
		return productDetailDescriptionURL;
	}

	public void setProductDetailDescriptionURL(String productDetailDescriptionURL) {
		this.productDetailDescriptionURL = productDetailDescriptionURL;
	}

	public Boolean getLatestInd() {
		return latestInd;
	}

	public void setLatestInd(Boolean latestInd) {
		this.latestInd = latestInd;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getSubCategoryName() {
		return subCategoryName;
	}

	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}
	
	
	

	

	
	
	

}
