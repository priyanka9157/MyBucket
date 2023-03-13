package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.OrderDetailBean;
@Repository
public class OrderDetailDao {
	@Autowired
	JdbcTemplate stmt;
		 
	public void addOrderDetail(OrderDetailBean orderDetailBean) {
		 
		String insertQuery ="insert into orderDetail (orderId,userId,productId,quantity,price,status,productName) values (?,?,?,?,?,?,?)";
		stmt.update(insertQuery,orderDetailBean.getOrderId(),orderDetailBean.getUserId(),orderDetailBean.getProductId(),orderDetailBean.getQuantity(),orderDetailBean.getPrice(),orderDetailBean.getStatus(),orderDetailBean.getProductName());
	}

	public List<OrderDetailBean> getAllOrderDetail() {
		
		String joinQuery = "select o.orderId,u.userId,p.productId,p.productName,od.deleted from order o, orderdetail od where p.productId = od.orderId and od.deleted = false";
		return stmt.query(joinQuery,new BeanPropertyRowMapper<OrderDetailBean>(OrderDetailBean.class));
	}
}
