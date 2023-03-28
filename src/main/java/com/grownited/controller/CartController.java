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

import com.grownited.bean.CartBean;
import com.grownited.dao.CartDao;
import com.grownited.dao.Productdao;

@Controller
public class CartController {
	@Autowired
	CartDao cartDao;
	
	@Autowired
	Productdao productdao;

	
	@GetMapping("/newcart")
	public String newCart(Model model) {
		model.addAttribute("listProducts", productdao.getAllProduct());
		

		return "NewCart";
	}
	
	
	@PostMapping("/savecart")
	public String saveCart(CartBean cartBean,HttpServletRequest request) {
		
		System.out.println(cartBean.getUserId());
		System.out.println(cartBean.getProductId());
		System.out.println(cartBean.getProductName());
		System.out.println(cartBean.getQuantity());
		cartDao.addCart(cartBean);
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
		cartBean.setUserId(userId);
    	
    	cartDao.addCart(cartBean);
		return "redirect:/listcart";
	}

	
	@GetMapping("/listcart")
	public String listCart(Model model) {
		List<CartBean> listCart = cartDao.getAllCart();
		model.addAttribute("listCart",listCart);
		return "ListCart";
	}
	
	@GetMapping("/deletecart/{cartId}")
	public String deleteCart(@PathVariable("cartId") Integer cartId ) {
		//12 45 
		cartDao.deleteCart(cartId);
		return "redirect:/listcart";//
	}
	
	@GetMapping("/viewcart/{cartId}")
	public String viewCart(@PathVariable("cartId") Integer cartId,Model model) {
		CartBean cartBean = cartDao.getCartById(cartId);
		model.addAttribute("cartBean",cartBean);
		return "ViewCart";
	}
}
