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
		String insertQuery = "insert into order (orderDate,userId,totaleAmount) values (?,?,?) ";

		stmt.update(insertQuery,orderBean.getOderDate(),orderBean.getUserId(),orderBean.getTotaleAmount() );// insert //update //delete
	}

	public  List<OrderBean> getAllOrder() {
		String joinQuery = "select o.orderId,u.userId,p.productId,p.productName,od.deleted from order o, orderdetail od where p.productId = od.orderId and od.deleted = false";
		return stmt.query(joinQuery,new BeanPropertyRowMapper<OrderBean>(OrderBean.class));
		
	
	}
	

	
	

	// update

	// delete

}
