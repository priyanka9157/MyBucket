package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.OrderChartBean;
import com.grownited.bean.ProductBean;
import com.grownited.bean.ProductImageBean;
@Repository
public class ProductImageDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void saveProductImage(ProductImageBean pb) {
		stmt.update("insert into productimage (productImageId,productId,imageUrl,productName) values (?,?,?,?)",pb.getProductImageId(), pb.getproductId(), pb.getImageUrl(),pb.getproductName());

	}

	public List<ProductImageBean> getAllProductImages() {
		String joinQuery = "select pi.productImageId,p.productId,pi.imageUrl,p.productName,pi.deleted from productimage pi,product p where p.productId = pi.productId";
		List<ProductImageBean> list =  stmt.query(joinQuery,new BeanPropertyRowMapper<>(ProductImageBean.class));
		return list;

	}

	public void deleteProductImage(Integer productImageId) {
		stmt.update("delete from productimage where productimageid  = ?", productImageId);

	}
	
	
}
