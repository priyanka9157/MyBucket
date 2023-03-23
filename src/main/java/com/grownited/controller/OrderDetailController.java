package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.CartBean;
import com.grownited.bean.OrderDetailBean;
import com.grownited.dao.OrderDao;
import com.grownited.dao.OrderDetailDao;
import com.grownited.dao.Productdao;

@Controller
public class OrderDetailController {
	@Autowired
	OrderDetailDao orderDetailDao;
	
	@Autowired
	Productdao productdao;
	
	@Autowired
	OrderDao orderDao;
	

	@GetMapping("/neworderdetail")
	public String newOrderdetail(Model model) {
		model.addAttribute("listProducts", productdao.getAllProduct());
		model.addAttribute("listOrder", orderDao.getAllOrder()) ;

		return "NewOrderDetail";
	}
	
	
	@PostMapping("/saveorderdetail")
	public String saveOrderDetail(OrderDetailBean orderDetailBean) {
		System.out.println(orderDetailBean.getOrderId());
		System.out.println(orderDetailBean.getUserId());
		System.out.println(orderDetailBean.getProductId());
		System.out.println(orderDetailBean.getQuantity());
		System.out.println(orderDetailBean.getPrice());
		System.out.println(orderDetailBean.getStatus());
		System.out.println(orderDetailBean.getProductName());
		orderDetailDao.addOrderDetail(orderDetailBean);
		return "redirect:/listOrderDetail";
	}

	
	@GetMapping("/listorderdetail")
	public String listOrderdetail(Model model) {
		List<OrderDetailBean> listOrderDetail = orderDetailDao.getAllOrderDetail();
		model.addAttribute("listOrderDetail",listOrderDetail);
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
