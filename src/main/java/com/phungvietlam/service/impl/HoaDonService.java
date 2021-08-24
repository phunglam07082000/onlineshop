package com.phungvietlam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phungvietlam.dao.IHoaDonDAO;
import com.phungvietlam.entity.HoaDon;
import com.phungvietlam.service.IHoaDonService;
@Service 
public class HoaDonService implements IHoaDonService {

	
	
	@Autowired
	private IHoaDonDAO hoaDonDAO;
	public int ThemHoaDon(HoaDon hoaDon) {
		
		return hoaDonDAO.ThemHoaDon(hoaDon);
	}
	public List<HoaDon> layDanhSachHoaDon(int hdbatdau) {
		
		return hoaDonDAO.layDanhSachHoaDon(hdbatdau);
	}
	
	public void capNhatHoaDon(int mahoadon, Boolean tinhtrang) {
		hoaDonDAO.capNhatHoaDon(mahoadon, tinhtrang);
		
	}
	public HoaDon layChiTietHoaDon(int mahoadon) {
	
		 return hoaDonDAO.layChiTietHoaDon(mahoadon);
	}
	
	
	

}
