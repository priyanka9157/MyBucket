package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.OrderBean;
import com.grownited.bean.ProductBean;
import com.grownited.dao.OrderDao;
import com.grownited.dao.Productdao;
@Controller
public class OrderControler {
	@Autowired
	OrderDao orderDao;
	
	@Autowired
	Productdao productdao;

	@GetMapping("/neworder")
	public String newOrder(Model model) {
		model.addAttribute("listProducts", productdao.getAllProduct()) ;

		return "NewOrder";
	}
	
	
	@PostMapping("/saveorder")
	public String saveOrder(OrderBean orderBean) {
		System.out.println(orderBean.getOrderId());
		System.out.println(orderBean.getUserId());
		System.out.println(orderBean.getTotaleAmount());
		orderDao.addOrder(orderBean);
		return "redirect:/listOrder";
	}

	
	@GetMapping("/listorder")
	public String listOrder(Model model) {
		List<OrderBean> listOrder = orderDao.getAllOrder();
		model.addAttribute("listOrder",listOrder);
		return "ListOrder";
	}
	
	@GetMapping("/deleteorder/{orderId}")
	public String deleteOrder(@PathVariable("orderId") Integer orderId ) {
		//12 45 
		orderDao.deleteOrder(orderId);
		return "redirect:/listorder";//
	}
	
	


	@GetMapping("/vieworder/{orderId}")
	public String viewOrder(@PathVariable("orderId") Integer orderId,Model model) {
		OrderBean orderBean = orderDao.getOrderById(orderId);
		model.addAttribute("orderBean",orderBean);
		return "ViewOrder";
	}

}
