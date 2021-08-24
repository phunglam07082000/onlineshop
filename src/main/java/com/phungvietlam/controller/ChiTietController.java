package com.phungvietlam.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.phungvietlam.dto.GioHang;
import com.phungvietlam.entity.DanhMucSanPham;
import com.phungvietlam.entity.SanPham;
import com.phungvietlam.service.IDanhMuchService;
import com.phungvietlam.service.ISanPhamService;

@Controller
@RequestMapping("/chitiet")
@SessionAttributes("giohang")
public class ChiTietController {
	
	@Autowired
	ISanPhamService sanPhamService;
	@Autowired
	IDanhMuchService danhmucServce;
	
	
	
	@GetMapping("/{masanpham}")
	public String Default(@PathVariable int masanpham,ModelMap modelMap,HttpSession httpSession) {
		SanPham sanphams= sanPhamService.layChiTietSanPham(masanpham);
		List<DanhMucSanPham> list=danhmucServce.layDanhMuc();
		
		
		if(null != httpSession.getAttribute("giohang")) {
			List<GioHang> gioHangs =(List<GioHang>) httpSession.getAttribute("giohang");
			modelMap.addAttribute("slgiohang", gioHangs.size());
			
		}
		List<SanPham> listsp = sanPhamService.layDanhSachSanPham(0);
		
		 modelMap.addAttribute("chitietsp", sanphams);
		 modelMap.addAttribute("listsp", listsp);
		 modelMap.addAttribute("danhmuc", list);
		return "chitiet";
	}

}
