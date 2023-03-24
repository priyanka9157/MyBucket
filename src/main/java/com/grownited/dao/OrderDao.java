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
		String insertQuery = "insert into orders (orderId,userId,addressId,statusId,orderDate,totaleAmount,status,deleted) values (?,?,?,?,?,?,?,?) ";

		stmt.update(insertQuery,orderBean.getOrderId(),orderBean.getUserId(),orderBean.getAddressId(),orderBean.getStatusId(),orderBean.getOrderDate(),orderBean.getTotaleAmount(),orderBean.getStatus(),false);
	}

	public  List<OrderBean> getAllOrder() {
		
		String selectQuery = "select o.orderId,u.userId,a.addressId,s.statusId,o.orderdate,o.totaleAmount,s.status,o.deleted from orders o,users u,address a,status s where o.addressId=a.addressId and o.statusId=s.statusId and o.deleted=false;";
		return stmt.query(selectQuery,new BeanPropertyRowMapper<OrderBean>(OrderBean.class));
		
	
	}
	public void deleteOrder(Integer order) {
		String updateQuery = "update orders set deleted = true where orderId = ?";
		stmt.update(updateQuery, order);
		
	}
	// list
	
	public OrderBean getOrderById(Integer orderId) {
		OrderBean orderBean = null;

		try {
			orderBean = stmt.queryForObject("select * from orders where orderId = ?",
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
