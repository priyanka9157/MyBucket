package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.grownited.bean.ProductImageBean;
@Repository
public class ProductImageDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addProductImage(ProductImageBean productImageBean) {
		String insertQuery = "insert into productImage (productImageId,productId,deleted) values (?,?,?)";

		stmt.update(insertQuery, productImageBean.getProductImageId(),productImageBean.getProductId(), false);// insert //update //delete
	}

	public  List<ProductImageBean> getAllProductImage() {

		String joinQuery="select pi.productImageId,p.productId,pi.deleted from productimage pi,product p where pi.productId=p.productId and pi.deleted=false";

		List<ProductImageBean> list =  stmt.query(joinQuery, new BeanPropertyRowMapper<ProductImageBean>(ProductImageBean.class));
		
		//c1 c2 c3 
		return list;
		
	}

	public void deleteProductImage(Integer productImage) {
		String updateQuery = "update productImage set deleted = true where productImageId = ?";
		stmt.update(updateQuery, productImage);
		
	}
	// list
	
	public ProductImageBean getProductImageById(Integer productImageId) {
		ProductImageBean productImageBean = null;

		try {
			productImageBean = stmt.queryForObject("select * from productImage where productImageId = ?",
					new BeanPropertyRowMapper<ProductImageBean>(ProductImageBean.class), new Object[] { productImageId });
		} 
		catch (Exception e) {
			System.out.println("ProductImageDao :: getProductImageById()");
			System.out.println(e.getMessage());
		}
		return productImageBean;
	}
}
