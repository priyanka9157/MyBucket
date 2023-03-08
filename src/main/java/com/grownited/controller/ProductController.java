package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.ProductBean;
import com.grownited.dao.Productdao;

@Controller
public class ProductController {

	@Autowired
	Productdao productDao;

	@GetMapping("/newproduct")
	public String newproduct(Model model) {
		model.addAttribute("list", productDao.getAllProduct());

		return "NewProduct";
	}
	
	
	@PostMapping("/saveproduct")
	public String saveProduct(ProductBean productBean) {
		System.out.println(productBean.getproductName());
		
		
		//dao 
		//insert 
		productDao.addProduct(productBean);
		return "redirect:/listproduct";
	}

	//listproduct 
	
	@GetMapping("/listproduct")
	public String listProduct (Model model) {
		List<ProductBean> listProduct = productDao.getAllProduct();
		model.addAttribute("listProduct",listProduct);
		return "ListProduct";
	}

	}


