package com.phungvietlam.controller;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phungvietlam.entity.DanhMucSanPham;
import com.phungvietlam.entity.NhanVien;
import com.phungvietlam.service.IDanhMuchService;
import com.phungvietlam.service.INhanVienService;

@Controller
@RequestMapping("login/")

public class LoginController {

	@Autowired
	SessionFactory sessionFactoty;

	@Autowired
	private INhanVienService nhanVienService;
	
	
	@Autowired
	IDanhMuchService danhmucServce;

	/*
	 * @Autowired private INhanVienService nhanVienService;
	 */

	@GetMapping
	public String loginPage(ModelMap modelMap) {
		List<DanhMucSanPham> listDanhMuc = danhmucServce.layDanhMuc();
		
		modelMap.addAttribute("danhmuc", listDanhMuc);
		
		return "login";
	}

	@PostMapping
	public String dangKi(@RequestParam String tendangnhap, @RequestParam String matkhau,
			@RequestParam String nhaplaimatkhau, ModelMap modelMap) {
		boolean kt = validate(tendangnhap);
		

		if (kt) {
			if (matkhau.equals(nhaplaimatkhau)) {

				NhanVien nv = new NhanVien();
				nv.setTendangnhap(tendangnhap);
				nv.setMatkhau(matkhau);

				boolean ktThem = nhanVienService.themNhanVien(nv);

				if (ktThem) {
					modelMap.addAttribute("ktdangnhap", "tạo tài khoản tành công");
				} else {
					modelMap.addAttribute("ktdangnhap", "Tạo tài khoản thất bại");
				}
			}else {
				modelMap.addAttribute("ktdangnhap", "Mật khẩu không trùng khớp");
				
			}

		} else {
			modelMap.addAttribute("ktdangnhap", "vui long nhap dung dinh dang");

		}
		
		

		return "login";
	}

	public static final Pattern VALID = Pattern.compile("^[A-Z0-9._%+-]", Pattern.CASE_INSENSITIVE);

	public static boolean validate(String username) {

		Matcher matcher = VALID.matcher(username);
		return matcher.find();
	}

	/*
	 * @PostMapping
	 * 
	 * public String actionLogin(@RequestParam String tendangnhap, @RequestParam
	 * String matkhau ,ModelMap modelMap) {
	 * 
	 * 
	 * boolean kiemtra=nhanVienService.dangNhap(tendangnhap, matkhau); if(kiemtra) {
	 * 
	 * modelMap.addAttribute("kiemtra" ,"dang nhap thanh cong");
	 * 
	 * 
	 * }else { modelMap.addAttribute("kiemtra" ,"dang nhap that bai");
	 * 
	 * }
	 * 
	 * 
	 * 
	 * nhanvienservice.kiemTraDangNhap(tendangnhap, matkhau);;
	 * 
	 * return "login";
	 * 
	 * }
	 */

}
