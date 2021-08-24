package com.phungvietlam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phungvietlam.entity.DanhMucSanPham;
import com.phungvietlam.entity.SanPham;
import com.phungvietlam.service.IDanhMuchService;
import com.phungvietlam.service.ISanPhamService;

@Controller
@RequestMapping("/sanpham")
public class SanPhamController {
	
	
	@Autowired
	   private IDanhMuchService danhmucService;
	
	@Autowired
	private ISanPhamService sanPhamService;
	
	@GetMapping("/{id}/{tendanhmuc}")
	public String Default( ModelMap modelMap,@PathVariable int id,@PathVariable String tendanhmuc) {
		
		List<SanPham> listDanhSachSpTheoDanhMuc=sanPhamService.layDanhSachSanPhamTheoDanhMuc(id);
		
		List<DanhMucSanPham> listDanhMuc = danhmucService.layDanhMuc();
		
		
		
		modelMap.addAttribute("danhmuc", listDanhMuc);
		modelMap.addAttribute("tendanhmuc", tendanhmuc);
		modelMap.addAttribute("spdanhmuc", listDanhSachSpTheoDanhMuc);
		
		return "sanpham";
	}

}
