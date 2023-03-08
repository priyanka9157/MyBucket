package com.grownited.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class VendorController {
	
	@GetMapping("/vendordashboard")
	public String vendorDashboard() {
		System.out.println("InSide vendordashboard--url-metho--");
		return "VendorDashboard";
	}
}
