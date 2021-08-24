package com.phungvietlam.service;

import com.phungvietlam.entity.NhanVien;

public interface INhanVienService {
	
	boolean dangNhap(String tendangnhap, String matkhau);
	boolean themNhanVien(NhanVien nhanVien);
	NhanVien DangNhap(String tendangnhap,String matkhau);


}
