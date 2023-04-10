package com.grownited.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.bean.ProductBean;
import com.grownited.dao.Productdao;

@Controller
public class BuyerController {
	
	@Autowired
	Productdao productDao;
	
	@GetMapping("/welcome")
	public String welcome(Model model) {
		List<ProductBean> latestProduct  = productDao.getAllLatestProducts();
		model.addAttribute("latestProducts",latestProduct);
		return "Welcome";
	}
	
	
	@GetMapping("/home")
	public String home() {
		return "Home";
	}
}