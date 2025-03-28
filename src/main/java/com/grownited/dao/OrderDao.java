package com.grownited.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.grownited.bean.CartBean;
import com.grownited.bean.OrderBean;
import com.grownited.bean.OrderDetailBean;
@Repository
public class OrderDao {
	@Autowired
	JdbcTemplate stmt;

	// add
	public void addOrder(OrderBean orderBean) {
		String insertQuery = "insert into orders (orderId,userId,addressId,orderDate,totaleAmount,status) values (?,?,?,?,?,?) ";

		stmt.update(insertQuery,orderBean.getOrderId(),orderBean.getUserId(),orderBean.getAddressId(),orderBean.getOrderDate(),orderBean.getTotaleAmount(),orderBean.getStatus());
	}

	
	public List<OrderBean> getOrdersByUser(Integer userId) {
		return stmt.query(
				"select o.*,s.status as statusName,a.* from orders o  ,status s ,address a  where o.userId=? and o.status=s.statusId and o.addressId = a.addressId",
				new BeanPropertyRowMapper<>(OrderBean.class), new Object[] { userId });
		
	}
	

	
	public void addOrderDetail(CartBean cart, Integer orderId) {
		stmt.update("insert into orderDetail(orderId,userId,productId,price,quantity,status) values (?,?,?,?,?,?)", orderId,
				cart.getUserId(), cart.getProductId(), cart.getPrice(), cart.getQuantity(), 7);
	}


	public List<OrderDetailBean> getOrderDetailByOrder(Integer orderId) {
		return stmt.query(
				" select * from orderdetail o ,product p where o.productId = p.productId and o.orderId = ?",
				new BeanPropertyRowMapper<>(OrderDetailBean.class), new Object[] { orderId });
	}

	
public OrderBean getOrdersByOrderId(Integer orderId) {
		
		return stmt.queryForObject(
				"select o.*, s.status as statusName, a.addressLine,a.state,a.city,a.pincode   from orders o ,status s,address a  where o.orderId = ? and o.status = s.statusId and o.addressId = a.addressId ",
				new BeanPropertyRowMapper<>(OrderBean.class), new Object[] { orderId });
	}
	
	

	
	

	// update

	// delete

}
