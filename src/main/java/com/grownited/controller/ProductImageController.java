package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.ProductImageBean;
import com.grownited.dao.ProductImageDao;
import com.grownited.dao.Productdao;
@Controller
public class ProductImageController {
	@Autowired
	ProductImageDao productImageDao;
	
	@Autowired
	Productdao productDao;
	
	@GetMapping("/newproductimage")
	public String newproduct(Model model) {
		model.addAttribute("listProducts", productDao.getAllProduct());
		

		return "NewProductImage";
	}
	
	
	
	@PostMapping("/saveproductimage")
	public String saveProductImage(ProductImageBean productImageBean) {
		System.out.println(productImageBean.getProductImageId());
		System.out.println(productImageBean.getProductId());
		productImageDao.addProductImage(productImageBean);
		return "redirect:/listproductimage";
	}

	//listproduct 
	
	@GetMapping("/listproductimage")
	public String listProductImage (Model model) {
		List<ProductImageBean> list = productImageDao.getAllProductImage();
		model.addAttribute("listProductimage",list);
		return "ListProductImage";
	}
	
	@GetMapping("/deleteproductImage/{productImageId}")
	public String deleteProductImage(@PathVariable("productImageId") Integer productImageId ) {
		//12 45 
		productImageDao.deleteProductImage(productImageId);
		return "redirect:/listproductImage";//
	}
	
	


	@GetMapping("/viewproductimage/{productImageId}")
	public String viewProductImage(@PathVariable("productImageId") Integer productImageId,Model model) {
		ProductImageBean productImageBean = productImageDao.getProductImageById(productImageId);
		model.addAttribute("productImageBean",productImageBean);
		return "ViewProductImage";
	}

}
