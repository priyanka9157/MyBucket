package com.grownited.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
		model.addAttribute("list", cartDao.getAllCart()) ;

		return "NewCart";
	}
	
	
	@PostMapping("/savecart")
	public String saveCart(CartBean cartBean) {
		System.out.println(cartBean.getProductId());
		cartDao.addCart(cartBean);
		return "redirect:/listcart";
	}

	
	@GetMapping("/listcart")
	public String listCart(Model model) {
		List<CartBean> list = cartDao.getAllCart();
		model.addAttribute("list",list);
		return "ListCart";
	}
	
}
