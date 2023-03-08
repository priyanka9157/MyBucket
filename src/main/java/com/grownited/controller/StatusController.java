package com.grownited.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StatusController {
	
		@GetMapping("/statusdashboard")
		public String statusDashboard() {
			System.out.println("InSide statusdashboard--url-metho--");
			return "StatusDashboard";
		}
	}

