package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.OrderBean;
@Repository
public class OrderDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addOrder(OrderBean orderBean) {
		String insertQuery = "insert into order (orderDate,userId,totaleAmount,productId,productName,delete) values (?,?,?,?,?,?) ";

		stmt.update(insertQuery,orderBean.getOrderDate(),orderBean.getUserId(),orderBean.getTotaleAmount(),orderBean.getProductId(),orderBean.getProductName(),false );// insert //update //delete
	}

	public  List<OrderBean> getAllOrder() {
		
		String selectQuery = "select * from order where deleted = false";
		return stmt.query(selectQuery,new BeanPropertyRowMapper<OrderBean>(OrderBean.class));
		
	
	}
	public void deleteOrder(Integer order) {
		String updateQuery = "update order set deleted = true where orderId = ?";
		stmt.update(updateQuery, order);
		
	}
	// list
	
	public OrderBean getOrderById(Integer orderId) {
		OrderBean orderBean = null;

		try {
			orderBean = stmt.queryForObject("select * from order where orderId = ?",
					new BeanPropertyRowMapper<OrderBean>(OrderBean.class), new Object[] { orderId });
		} 
		catch (Exception e) {
			System.out.println("OrderDao :: getOrderById()");
			System.out.println(e.getMessage());
		}
		return orderBean;
	}
	

	
	

	// update

	// delete

}
