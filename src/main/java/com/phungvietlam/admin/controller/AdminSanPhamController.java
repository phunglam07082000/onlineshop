package com.phungvietlam.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phungvietlam.entity.DanhMucSanPham;
import com.phungvietlam.entity.MauSanPham;
import com.phungvietlam.entity.SanPham;
import com.phungvietlam.entity.SizeSanPham;
import com.phungvietlam.service.IDanhMuchService;
import com.phungvietlam.service.IMauSanPhamService;
import com.phungvietlam.service.ISanPhamService;
import com.phungvietlam.service.ISizeSanPhamService;

@Controller
@RequestMapping("adminsanpham")
public class AdminSanPhamController {
	@Autowired
	private ISanPhamService sanPhamService;
	
	@Autowired
	IDanhMuchService danhmucServce;
	
	@Autowired
	IMauSanPhamService mauSanPhamService;
	
	
	@Autowired
	ISizeSanPhamService sizeSanPhamService;
	
	
	@GetMapping
	public String Default(ModelMap modelMap) {
		
		List<MauSanPham> listMauSanPham=mauSanPhamService.findAll();
		List<SizeSanPham> listSizeSanPham=sizeSanPhamService.findAll();
		
		
		List<SanPham> listProduct=sanPhamService.layDanhSachSanPham(-1);
		
		List<SanPham> listSanPhams=sanPhamService.layDanhSachSanPham(0);
		
		List<DanhMucSanPham> listDanhMuc = danhmucServce.layDanhMuc();
		double tongsopage=Math.ceil((double)listProduct.size()/5);
		
		modelMap.addAttribute("listProduct", listProduct);
		modelMap.addAttribute("listSanPham", listSanPhams);
		
		modelMap.addAttribute("tongsopage", tongsopage);
		
		modelMap.addAttribute("danhmuc", listDanhMuc);
		modelMap.addAttribute("listMauSP", listMauSanPham);
		modelMap.addAttribute("listSizeSP", listSizeSanPham);
		
		
		return "sanphamadmin";
		
	}

}
