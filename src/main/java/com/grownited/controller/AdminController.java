
package com.grownited.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.dao.AdminDao;

@Controller
public class AdminController<OrderChartBean> {
	
	
	@Autowired
	AdminDao adminDao;

	@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {
		System.out.println("InSide admindashboard--url-metho--");
		//totaleOrdersCount-Today
		//totalOrderCount-Today
				Integer totalOrderCount = adminDao.getTotaleOrderCountForCurrentDate();
				Integer totalUserCount = adminDao.getTotalUserCountForCurrentYear();
				List<OrderChartBean> chartData = (List<OrderChartBean>) adminDao.getOrderStats();
				
		
		
		model.addAttribute("totaleSales",200);
		model.addAttribute("totaleProfit",200);
		model.addAttribute("totalePayments",200);
		model.addAttribute("totaleTransactions",200);
		model.addAttribute("chartData",chartData);
		return "AdminDashboard";
	}
}
