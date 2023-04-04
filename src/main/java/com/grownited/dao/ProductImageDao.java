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
	public void saveProductImage(ProductImageBean pb) {
		stmt.update("insert into productimage (productId,imageUrl) values (?,?)", pb.getProductId(), pb.getImageUrl());

	}

	public List<ProductImageBean> getAllProductImages() {
		return stmt.query("select * from productimage,product where product.productId = productimage.productId",
				new BeanPropertyRowMapper<>(ProductImageBean.class));
	}

	public void deleteProductImage(Integer productImageId) {
		stmt.update("delete from productimage where productimageid  = ?", productImageId);

	}
}
