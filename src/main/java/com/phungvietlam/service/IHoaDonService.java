package com.phungvietlam.service;

import java.util.List;

import com.phungvietlam.entity.HoaDon;
import com.phungvietlam.entity.SanPham;


public interface IHoaDonService {
	int ThemHoaDon(HoaDon hoaDon);
	List<HoaDon> layDanhSachHoaDon(int hdbatdau);
	public void capNhatHoaDon(int mahoadon, Boolean tinhtrang);
	HoaDon layChiTietHoaDon(int mahoadon);
	

}
