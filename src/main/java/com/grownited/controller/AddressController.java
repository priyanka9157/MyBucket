package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	public String saveAddress(AddressBean addressBean) {
		System.out.println(addressBean.getAddressId());
		System.out.println(addressBean.getAddressLine());
		System.out.println(addressBean.getLandMark());
		System.out.println(addressBean.getPincode());
		System.out.println(addressBean.getCity());
		System.out.println(addressBean.getState());
		addressDao.addAddress(addressBean);
		return "redirect:/listaddress";
	}

	
	@GetMapping("/listaddress")
	public String listAddress(Model model) {
		List<AddressBean> listAddress = addressDao.getAllAddress();
		model.addAttribute("listAddress",listAddress);
		return "ListAddress";
	}
}
