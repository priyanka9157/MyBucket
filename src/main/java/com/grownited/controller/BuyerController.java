package com.grownited.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.bean.ProductBean;
import com.grownited.bean.ProductImageBean;
import com.grownited.dao.ProductImageDao;
import com.grownited.dao.Productdao;

@Controller
public class BuyerController {
	
	@Autowired
	Productdao productDao;
	
	@Autowired
	ProductImageDao productImageDao;
	
	@GetMapping(value = {"/","/welcome"})
	public String welcome(Model model) {
		List<ProductBean> latestProduct  = productDao.getAllLatestProducts();
		model.addAttribute("latestProducts",latestProduct);
		List<ProductBean> topSellingProducts = productDao.getAllTopSellingProducts();
		model.addAttribute("topSellingProducts", topSellingProducts);
		List<ProductBean> AllProduct = productDao.getAllProduct();
		model.addAttribute("allProduct", AllProduct);
		return "Welcome";
	}
	
	
	@GetMapping("/home")
	public String home() {
		return "redirect:/welcome";
	}
	
	@GetMapping("/seedetails")
	public String seeDetails(@RequestParam("productId") Integer productId, Model model) {
		ProductBean product = productDao.getProductById(productId);

		List<ProductImageBean> productImages =productImageDao.getImagesByProductId(productId);
		model.addAttribute("products", product);
		model.addAttribute("productImages",productImages);
		return "ProductDetail";
	}

	
	
}