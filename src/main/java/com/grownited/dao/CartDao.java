package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.CartBean;
@Repository
public class CartDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addCart(CartBean cartBean) {
		String insertQuery = "insert into cart (cartId,userId,productId,quantity,productName,deleted) values (?,?,?,?,?,?) ";

		stmt.update(insertQuery, cartBean.getCartId(),cartBean.getUserId(),cartBean.getProductId(), cartBean.getQuantity(),cartBean.getProductName(),false);// insert //update //delete
	}

	public  List<CartBean> getAllCart() {
		String selectQuery = "select * from cart where deleted = false";

		List<CartBean> list =  stmt.query(selectQuery, new BeanPropertyRowMapper<CartBean>(CartBean.class));
		
		//c1 c2 c3 
		
		return list;
	
	}
	
	public void deleteCart(Integer cartId) {
		String updateQuery = "update cart set deleted = true where cartId = ?";
		stmt.update(updateQuery, cartId);
		
	}
	// list
	
	public CartBean getCartById(Integer cartId) {
		CartBean cartBean = null;

		try {
			cartBean = stmt.queryForObject("select * from cart where cartId = ?",
					new BeanPropertyRowMapper<CartBean>(CartBean.class), new Object[] { cartId });
		} catch (Exception e) {
			System.out.println("ProductDao :: getProductById()");
			System.out.println(e.getMessage());
		}
		return cartBean;
	}

	
	

	// update

	// delete
}
