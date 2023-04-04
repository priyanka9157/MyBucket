package com.grownited.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BuyerController {
	
	@GetMapping("/welcome")
	public String welcome() {
		return "Welcome";
	}
	
	
	@GetMapping("/home")
	public String home() {
		return "Home";
	}
}