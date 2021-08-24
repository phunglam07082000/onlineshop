package com.phungvietlam.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phungvietlam.entity.HoaDon;

import com.phungvietlam.service.IHoaDonService;

@Controller
@RequestMapping("/adminchitiethoadon")
public class AdminChiTietHoaDonController {
	

	@Autowired
	private IHoaDonService hoaDonService;
	
	
	@GetMapping("/{mahoadon}")
	public String ChiTietHoaDon(@PathVariable int mahoadon ,ModelMap modelMap) {
		
	 HoaDon hoaDon=	hoaDonService.layChiTietHoaDon(mahoadon);
	 	
		modelMap.addAttribute("chitiethoadon", hoaDon);
		
		return "chitiethoadonadmin";
	}
	

}
