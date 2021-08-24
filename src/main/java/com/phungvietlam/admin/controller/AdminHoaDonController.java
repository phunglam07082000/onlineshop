package com.phungvietlam.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phungvietlam.entity.HoaDon;
import com.phungvietlam.service.IHoaDonService;

@Controller
@RequestMapping("adminhoadon")
public class AdminHoaDonController {
	
	@Autowired
	private IHoaDonService hoaDonService;
	
	@GetMapping
	public String Default(ModelMap modelMap) {
		
		List<HoaDon> listHoaDon=hoaDonService.layDanhSachHoaDon(0);
		List<HoaDon> listHoaDons=hoaDonService.layDanhSachHoaDon(-1);
		
		
		double tongsopage=Math.ceil((double)listHoaDons.size()/5);
		
		
		modelMap.addAttribute("listHoaDon", listHoaDon);
		modelMap.addAttribute("listHoaDons", listHoaDons);
		
		modelMap.addAttribute("tongsopage", tongsopage);
		System.out.println(tongsopage);
		
 		
		
		
		return "hoadonadmin";
	}
	
	
	
   
	

	
	
}
