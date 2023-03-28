package com.grownited.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.bean.AddressBean;
import com.grownited.dao.AddressDao;
@Controller
public class AddressController {
	@Autowired
	AddressDao addressDao;
	

	@GetMapping("/newaddress")
	public String newAddress(Model model) {
		model.addAttribute("list", addressDao.getAllAddress()) ;

		return "NewAddress";
	}
	
	
	@PostMapping("/saveaddress")
	public String saveAddress(AddressBean addressBean,HttpServletRequest request) {
		System.out.println(addressBean.getAddressId());
		System.out.println(addressBean.getUserId());
		System.out.println(addressBean.getAddressLine());
		System.out.println(addressBean.getLandMark());
		System.out.println(addressBean.getPincode());
		System.out.println(addressBean.getCity());
		System.out.println(addressBean.getState());
		System.out.println(addressBean.getDeleted());
		System.out.println(addressBean.getDefaultInd());
		addressDao.addAddress(addressBean);
		//cookie
		int userId=-1;
		// read all cookies from request
		String firstName="";
		Cookie c[] = request.getCookies();//jSessionId userId octo firstName 

		for (Cookie x : c) {// jsessionid userId firstname
			if (x.getName().equals("userId")) {
				userId = Integer.parseInt(x.getValue());
			}
			if (x.getName().equals("firstName")) {
				firstName = x.getValue();
			}
		}
		addressBean.setUserId(userId);
    	
    	addressDao.addAddress(addressBean);
		return "redirect:/listaddress";
	}

	
	@GetMapping("/listaddress")
	public String listAddress(Model model) {
		List<AddressBean> listAddress = addressDao.getAllAddress();
		model.addAttribute("listAddress",listAddress);
		return "ListAddress";
	}
	
	@GetMapping("/deleteaddress/{addressId}")
	public String deleteAddress(@PathVariable("addressId") Integer addressId ) {
		//12 45 
		addressDao.deleteAddress(addressId);
		return "redirect:/listaddress";//
	}
	
	@GetMapping("/viewaddress/{addressId}")
	public String viewAddress(@PathVariable("addressId") Integer addressId,Model model) {
		AddressBean addressBean = addressDao.getAddressById(addressId);
		model.addAttribute("addressBean",addressBean);
		return "ViewAddress";
	}

}
