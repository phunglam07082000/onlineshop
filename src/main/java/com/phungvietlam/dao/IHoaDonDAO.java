package com.phungvietlam.dao;

import java.util.List;

import com.phungvietlam.entity.HoaDon;
import com.phungvietlam.entity.SanPham;


public interface IHoaDonDAO {
	int ThemHoaDon(HoaDon hoaDon);
	HoaDon layChiTietHoaDon(int mahoadon);
	List<HoaDon> layDanhSachHoaDon(int hdbatdau);
	int capNhatHoaDon(int mahoaDon, Boolean tinhtrang);
	
}
