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

	@GetMapping("/neworderdetail")
	public String newOrderDetail(Model model) {
		model.addAttribute("listProducts",productdao.getAllProduct());
		model.addAttribute("listOrders",orderDao.getAllOrder()) ;
		model.addAttribute("list",statusDao.getAllstatus()) ;

		return "NewOrderDetail";
	}
	
	
	@PostMapping("/saveorderdetail")
	public String saveOrderDetail(OrderDetailBean orderDetailBean,HttpServletRequest request) {
		System.out.println(orderDetailBean.getOrderDetailId());
		System.out.println(orderDetailBean.getOrderId());
		System.out.println(orderDetailBean.getUserId());
		System.out.println(orderDetailBean.getProductId());
		System.out.println(orderDetailBean.getQuantity());
		System.out.println(orderDetailBean.getPrice());
		System.out.println(orderDetailBean.getStatusId());
		orderDetailDao.addOrderDetail(orderDetailBean);
		
		//cookie
		int userId=-1;
		// read all cookies from request
		String firstName="";
		Cookie c[] = request.getCookies();//jSessionId userId octo firstName 

		for (Cookie x : c) {// jsessionid userId firstname
			if (x.getName().equals("userId")) {
				userId = Integer.parseInt(x.getValue());
			}
			if (x.getName().equals("firstName")) {
				firstName = x.getValue();
			}
		}
		orderDetailBean.setUserId(userId);
    	
    	orderDetailDao.addOrderDetail(orderDetailBean);
		return "redirect:/listorderdetail";
	}

	
	@GetMapping("/listorderdetail")
	public String listOrderdetail(Model model) {
		List<OrderDetailBean> list = orderDetailDao.getAllOrderDetail();
		model.addAttribute("listOrderDetail",list);
		return "ListOrderDetail";
	}
	
	@GetMapping("/deleteorderdetail/{orderDetailId}")
	public String deleteOrderDetail(@PathVariable("orderDetailId") Integer orderDetailId ) {
		//12 45 
		orderDetailDao.deleteOrderDetail(orderDetailId);
		return "redirect:/listorderDetail";//
	}
	
	@GetMapping("/vieworderdetail/{orderDetailId}")
	public String viewOrderDetail(@PathVariable("orderDetailId") Integer orderDetailId,Model model) {
		OrderDetailBean orderDetailBean = orderDetailDao.getOrderDetailById(orderDetailId);
		model.addAttribute("orderDetailBean",orderDetailBean);
		return "ViewOrderDetail";
	}

}
