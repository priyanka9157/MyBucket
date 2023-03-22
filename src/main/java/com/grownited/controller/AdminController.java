package com.grownited.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.dao.AdminDao;

@Controller
public class AdminController {
	
	
	@Autowired
	AdminDao adminDao;

	@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {
		System.out.println("InSide admindashboard--url-metho--");
		//totaleOrdersCount-Today
	
		
		
		model.addAttribute("totaleSales",200);
		model.addAttribute("totaleProfit",200);
		model.addAttribute("totalePayments",200);
		model.addAttribute("totaleTransactions",200);
		return "AdminDashboard";
	}
}
