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
		 
		String insertQuery ="insert into orderDetail (orderId,userId,productId,quantity,price,status,productName,deleted) values (?,?,?,?,?,?,?)";
		stmt.update(insertQuery,orderDetailBean.getOrderId(),orderDetailBean.getUserId(),orderDetailBean.getProductId(),orderDetailBean.getQuantity(),orderDetailBean.getPrice(),orderDetailBean.getStatus(),orderDetailBean.getProductName(),false);
	}

	public List<OrderDetailBean> getAllOrderDetail() {
		
		String joinQuery = " select od.orderDetailId,u.userId,p.productId,od.quantity,od.price,od.status,p.productName,od.deleted from orderDetail od,product p where od.productId=p.productId and od.deleted=false;";
		return stmt.query(joinQuery,new BeanPropertyRowMapper<OrderDetailBean>(OrderDetailBean.class));
	}
	
	public void deleteOrderDetail(Integer orderDetail) {
		String updateQuery = "update orderDetail set deleted = true where orderDetailId = ?";
		stmt.update(updateQuery, orderDetail);
		
	}
	// list
	
	public OrderDetailBean getOrderDetailById(Integer orderDetailId) {
		OrderDetailBean orderDetailBean = null;

		try {
			orderDetailBean = stmt.queryForObject("select * from orderDetail where orderDetailId = ?",
					new BeanPropertyRowMapper<OrderDetailBean>(OrderDetailBean.class), new Object[] { orderDetailId });
		} 
		catch (Exception e) {
			System.out.println("OrderDetailDao :: getOrderDetailById()");
			System.out.println(e.getMessage());
		}
		return orderDetailBean;
	}

	
}
