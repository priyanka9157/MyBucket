package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.OrderBean;
import com.grownited.dao.OrderDao;
@Controller
public class OrderControler {
	@Autowired
	OrderDao orderDao;
	

	@GetMapping("/neworder")
	public String newOrder(Model model) {
		model.addAttribute("list", orderDao.getAllOrder()) ;

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

}
