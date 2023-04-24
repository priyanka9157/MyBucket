package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.grownited.bean.WishListBean;

public class WishListDao {
	@Autowired
	static
	JdbcTemplate stmt;
	
	
	

	public void addToWishList(WishListBean wishBean) {
		stmt.update("insert into cart (userId,productId,quantity) values (?,?,?) ", wishBean.getUserId(), wishBean.getProductId(),
				wishBean.getQuantity());
		
	}

	public List<WishListBean> mywList(Integer userId) {
		return stmt.query(
		"select p.productId , p.price , p.productName  , w.quantity , w.wishlistId from product p , wishlist w where w.userId = ? and w.productId = p.productId",
		new BeanPropertyRowMapper<>(WishListBean.class), new Object[] { userId });
	}
	
	
	public void removeItemsFromWhislist(Integer userId) {
		stmt.update("delete from wishlist where userId = ?",userId);

	}

	public static void deleteWishlist(Integer wislistId) {
		String updateQuery = "update wishlist set deleted = true where wishlistId = ?";
		stmt.update(updateQuery, wislistId);
		
	}
	

}
