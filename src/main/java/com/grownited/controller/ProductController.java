package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
		System.out.println(productBean.getdescription());
		System.out.println(productBean.getquantity());
		System.out.println(productBean.getprice());
		System.out.println(productBean.gettopSelling());
		System.out.println(productBean.getmostValueInd());
		System.out.println(productBean.getbrandName());
		System.out.println(productBean.getproductName());
		
		
		//dao 
		//insert 
		productDao.addProduct(productBean);
		return "redirect:/listproducts";
	}

	//listproduct 
	
	@GetMapping("/listproducts")
	public String listProduct (Model model) {
		List<ProductBean> listProducts = productDao.getAllProduct();
		model.addAttribute("listProducts",listProducts);
		return "ListProducts";
	}
	
	@GetMapping("/deleteproduct/{productId}")
	public String deleteProduct(@PathVariable("productId") Integer productId ) {
		//12 45 
		productDao.deleteProduct(productId);
		return "redirect:/listproducts";//
	}

	}


