package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.SubCategoryBean;
import com.grownited.dao.CategoryDao;
import com.grownited.dao.SubCategoryDao;


@Controller
public class SubCategoryController {
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	SubCategoryDao subcategoryDao;


	@GetMapping("/newsubcategory")
	public String newSubCategory(Model model) {
		model.addAttribute("list", categoryDao.getAllCategory());
		return "NewSubCategory";
	}
	
	
	@PostMapping("/savesubcategory")
	public String saveSubCategory(SubCategoryBean subCategoryBean) {
		System.out.println(subCategoryBean.getSubCategoryName());
		System.out.println(subCategoryBean.getCategoryId());
		subcategoryDao.addSubCategory(subCategoryBean);
		return "redirect:/listsubcategory";
	}

	//listsubcategory 
	
	@GetMapping("/listsubcategory")
	public String listSubCategory(Model model) {
		List<SubCategoryBean> listSubCategory = subcategoryDao.getAllSubCagetgory();
		model.addAttribute("listSubCategory",listSubCategory);
		return "ListSubCategory";
	}



}	