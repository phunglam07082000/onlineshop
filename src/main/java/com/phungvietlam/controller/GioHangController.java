package com.phungvietlam.controller;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phungvietlam.dto.GioHang;
import com.phungvietlam.entity.ChiTietHoaDon;
import com.phungvietlam.entity.ChiTietHoaDonId;
import com.phungvietlam.entity.DanhMucSanPham;
import com.phungvietlam.entity.HoaDon;
import com.phungvietlam.entity.SanPham;
import com.phungvietlam.service.IChiTietHoaDonService;
import com.phungvietlam.service.IDanhMuchService;
import com.phungvietlam.service.IHoaDonService;

@Controller
@RequestMapping("giohang/")
public class GioHangController {

	@Autowired
	private IHoaDonService hoaDonService;

	@Autowired
	private IChiTietHoaDonService chiTietHoaDonService;
	
	@Autowired
	IDanhMuchService danhmucServce;

	@GetMapping
	@Transactional
	public String Default(HttpSession httpSession, ModelMap modelMap) {
		
		
		
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
		

		

		modelMap.addAttribute("danhmuc", listDanhMuc);
		
		return "giohang";
	}

	@PostMapping
	public String ThemHoaDon(@RequestParam String tenkhachhang, @RequestParam String sodt,
			@RequestParam String diachigiaohang, @RequestParam String hinhthucgiaohang, @RequestParam String ghichu,
			HttpSession httpSession) {

		if (null != httpSession.getAttribute("giohang")) {
			List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			HoaDon hoaDon = new HoaDon();
			hoaDon.setNgaylap(new Timestamp(System.currentTimeMillis()));
			hoaDon.setTenkhachhang(tenkhachhang);
			hoaDon.setSodt(sodt);
			hoaDon.setDiachigiaohang(diachigiaohang);
			hoaDon.setHinhthucgiaohang(hinhthucgiaohang);
			hoaDon.setGhichu(ghichu);
			Set<ChiTietHoaDon> list = new HashSet<ChiTietHoaDon>();

			int idHoaDon = hoaDonService.ThemHoaDon(hoaDon);
			Set<ChiTietHoaDon> listChiTietHoaDons=new HashSet<ChiTietHoaDon>();
			if (idHoaDon > 0) {

				for (GioHang gioHang : gioHangs) {
					
					
					ChiTietHoaDonId chiTietHoaDonId = new ChiTietHoaDonId();
					chiTietHoaDonId.setMachitietsanpham(gioHang.getMachitiet());
					
					chiTietHoaDonId.setMahoadon(hoaDon.getMahoadon());
					

					ChiTietHoaDon chiTietHoaDon = new ChiTietHoaDon();
					chiTietHoaDon.setChiTietHoaDonId(chiTietHoaDonId);
					chiTietHoaDon.setGiatien(gioHang.getGiatien());
					chiTietHoaDon.setSoluong(gioHang.getSoluong());

					chiTietHoaDonService.ThemChiTietHoaDon(chiTietHoaDon);
				}

			} else {

				
			}

		}

		return "giohang";
	}

}
