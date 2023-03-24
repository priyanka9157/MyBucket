package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.OrderBean;
import com.grownited.dao.AddressDao;
import com.grownited.dao.OrderDao;
import com.grownited.dao.StatusDao;
@Controller
public class OrderControler {
	@Autowired
	OrderDao orderDao;
	
	
	@Autowired
	AddressDao addressDao;
	
	@Autowired
	StatusDao statusDao;

	@GetMapping("/neworder")
	public String newOrder(Model model) {
		model.addAttribute("listAddress", addressDao.getAllAddress());
		model.addAttribute("list", statusDao.getAllstatus());


		return "NewOrder";
	}
	
	
	@PostMapping("/saveorder")
	public String saveOrder(OrderBean orderBean) {
		System.out.println(orderBean.getOrderId());
		System.out.println(orderBean.getUserId());
		System.out.println(orderBean.getAddressId());
		System.out.println(orderBean.getStatusId());
		System.out.println(orderBean.getOrderDate());
		System.out.println(orderBean.getTotaleAmount());
		System.out.println(orderBean.getStatus());
		
		orderDao.addOrder(orderBean);
		return "redirect:/listorders";
	}

	
	@GetMapping("/listorders")
	public String listOrder(Model model) {
		List<OrderBean> listOrders = orderDao.getAllOrder();
		model.addAttribute("listOrders",listOrders);
		return "ListOrders";
	}
	
	@GetMapping("/deleteorder/{orderId}")
	public String deleteOrder(@PathVariable("orderId") Integer orderId ) {
		//12 45 
		orderDao.deleteOrder(orderId);
		return "redirect:/listorders";//
	}
	
	


	@GetMapping("/vieworder/{orderId}")
	public String viewOrder(@PathVariable("orderId") Integer orderId,Model model) {
		OrderBean orderBean = orderDao.getOrderById(orderId);
		model.addAttribute("orderBean",orderBean);
		return "ViewOrder";
	}

}
