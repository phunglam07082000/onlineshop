package com.phungvietlam.dao;

import com.phungvietlam.entity.NhanVien;

public interface INhanVienDAO {
	
	boolean dangNhap(String tendangnhap, String matkhau);
	boolean themNhanVien(NhanVien nhanVien);
	NhanVien DangNhap(String tendangnhap,String matkhau);

}
