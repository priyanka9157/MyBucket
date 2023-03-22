package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.ProductBean;

@Repository
public class Productdao {

	@Autowired
	JdbcTemplate stmt;

	// add
	public void addProduct(ProductBean productBean) {
		String insertQuery = "insert into product (productId,productName,description,quantity,price,topSelling,mostValueInd,brandName,categoryId,subCategoryId,deleted) values (?,?,?,?,?,?,?,?,?,?,?)";

		stmt.update(insertQuery, productBean.getproductId(),productBean.getproductName(),productBean.getdescription(),productBean.getquantity(),productBean.getprice(),productBean.getTopSelling(),productBean.getMostValueInd(), productBean.getbrandName(),productBean.getCategoryId(),productBean.getSubCategoryId(), false);// insert //update //delete
	}

	public  List<ProductBean> getAllProduct() {

		String joinQuery="select  p.productId,p.productName,p.description,p.quantity,p.price,p.topSelling,p.mostValueInd,p.brandName,p.deleted,c.categoryId,sb.subCategoryId,p.deleted from product p,category c,subCategory sb where p.productId = c.categoryId and p.productId = sb.subCategoryId and p.deleted = false";

		List<ProductBean> list =  stmt.query(joinQuery, new BeanPropertyRowMapper<ProductBean>(ProductBean.class));
		
		//c1 c2 c3 
		return list;
		
	}

	public void deleteProduct(Integer product) {
		String updateQuery = "update product set deleted = true where productId = ?";
		stmt.update(updateQuery, product);
		
	}
	// list
	
	public ProductBean getProductById(Integer productId) {
		ProductBean productBean = null;

		try {
			productBean = stmt.queryForObject("select * from product where productId = ?",
					new BeanPropertyRowMapper<ProductBean>(ProductBean.class), new Object[] { productId });
		} 
		catch (Exception e) {
			System.out.println("ProductDao :: getProductById()");
			System.out.println(e.getMessage());
		}
		return productBean;
	}

	
	
	// update

	// delete

	
}
