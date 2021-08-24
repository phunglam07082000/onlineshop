package com.phungvietlam.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phungvietlam.dto.GioHang;
import com.phungvietlam.entity.DanhMucSanPham;
import com.phungvietlam.entity.SanPham;
import com.phungvietlam.service.IDanhMuchService;
import com.phungvietlam.service.INhanVienService;
import com.phungvietlam.service.ISanPhamService;

@Controller
@RequestMapping("/")
public class TrangChuController {
	@Autowired
	private ISanPhamService sanPhamService;
	
	
	@Autowired
	private INhanVienService nhanVienService;

	@Autowired
	IDanhMuchService danhmucServce;

	@GetMapping
	@Transactional
	public String TrangChu(ModelMap modelMap, HttpSession httpSession) {
		
		
		
		if (null != httpSession.getAttribute("giohang")) {
			List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			modelMap.addAttribute("slgiohang", gioHangs.size());
			modelMap.addAttribute("listgiohang", gioHangs);

		}

		List<DanhMucSanPham> listDanhMuc = danhmucServce.layDanhMuc();

		if (httpSession.getAttribute("user") != null) {
			String email = (String) httpSession.getAttribute("user");
			httpSession.invalidate();
			String chucaidau = email.substring(0, 1);

			modelMap.addAttribute("chucaidau", chucaidau);
		}
		List<SanPham> list = sanPhamService.layDanhSachSanPham(0);

		modelMap.addAttribute("listsp", list);

		modelMap.addAttribute("danhmuc", listDanhMuc);

		return "trangchu";
	}
	
	
	

}
