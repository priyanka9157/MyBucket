package com.grownited.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.OrderBean;
import com.grownited.bean.OrderDetailBean;
import com.grownited.dao.OrderDao;
import com.grownited.dao.OrderDetailDao;
import com.grownited.dao.Productdao;
import com.grownited.dao.StatusDao;

@Controller
public class OrderDetailController {
	@Autowired
	OrderDetailDao orderDetailDao;
	
	@Autowired
	Productdao productdao;
	
	@Autowired
	OrderDao orderDao;
	
	@Autowired
	StatusDao statusDao;

	@GetMapping("/orderdetails")
	public String orderDetails(@RequestParam("orderId") Integer orderId,Model model) {
		List<OrderDetailBean> myorderdetail = orderDao.getOrderDetailByOrder(orderId);
		OrderBean order = orderDao.getOrdersByOrderId(orderId);

		model.addAttribute("order",order);
		model.addAttribute("myorderdetail",myorderdetail);

		System.out.println("Order =>"+order);
		System.out.println("OrderDetail =>"+myorderdetail);
		return "MyOrderDetail";
	}

}
