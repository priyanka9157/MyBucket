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
		 
		String insertQuery ="insert into orderdetail (orderDetailId,orderId,userId,productId,quantity,price,statusId,deleted) values (?,?,?,?,?,?,?,?,?)";
		stmt.update(insertQuery,orderDetailBean.getOrderDetailId(),orderDetailBean.getOrderId(),orderDetailBean.getUserId(),orderDetailBean.getProductId(),orderDetailBean.getQuantity(),orderDetailBean.getPrice(),orderDetailBean.getStatusId(),false);
	}

	public List<OrderDetailBean> getAllOrderDetail() {
		String joinQuery ="select od.orderDetailId,od.orderId,od.userId,od.productId,od.quantity,od.price,od.statusId,od.deleted from orderDetail od,product p,orders o,status s,users u where od.productId=p.productId and od.orderId=o.orderId and od.statusId=s.statusId and od.deleted=false";
		return stmt.query(joinQuery,new BeanPropertyRowMapper<OrderDetailBean>(OrderDetailBean.class));
	}
	
	public void deleteOrderDetail(Integer orderDetail) {
		String updateQuery = "update orderdetail set deleted = true where orderDetailId = ?";
		stmt.update(updateQuery, orderDetail);
		
	}
	// list
	
	public OrderDetailBean getOrderDetailById(Integer orderDetailId) {
		OrderDetailBean orderDetailBean = null;

		try {
			orderDetailBean = stmt.queryForObject("select * from orderdetail where orderDetailId = ?",
					new BeanPropertyRowMapper<OrderDetailBean>(OrderDetailBean.class), new Object[] { orderDetailId });
		} 
		catch (Exception e) {
			System.out.println("OrderDetailDao :: getOrderDetailById()");
			System.out.println(e.getMessage());
		}
		return orderDetailBean;
	}

	
}
