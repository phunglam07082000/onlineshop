package com.phungvietlam.service;

import java.util.List;

import com.phungvietlam.entity.SanPham;

public interface ISanPhamService {
	List<SanPham> layDanhSachSanPham(int spbatdau);
	SanPham layChiTietSanPham(int masanpham);
	List<SanPham> layDanhSachSanPhamTheoDanhMuc(int madanhmuc);
	List<SanPham> findAll();
	boolean Xoa(int masanpham);
	boolean ThemSanPham(SanPham sanPham);
	boolean CapNhatSanPham(SanPham sanPham); 
}
