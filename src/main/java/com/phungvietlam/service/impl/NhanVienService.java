package com.phungvietlam.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phungvietlam.dao.INhanVienDAO;
import com.phungvietlam.dao.impl.NhanVienDAO;
import com.phungvietlam.entity.NhanVien;
import com.phungvietlam.service.INhanVienService;
@Service
public class NhanVienService implements INhanVienService {
	@Autowired
	 private INhanVienDAO nhanVienDAO;
	

	public boolean dangNhap(String tendangnhap, String matkhau) {
		 boolean kiemtra=nhanVienDAO.dangNhap(tendangnhap, matkhau);
		return kiemtra;
	}


	public boolean themNhanVien(NhanVien nhanVien) {
		 boolean kt=nhanVienDAO.themNhanVien(nhanVien);
		return kt;
	}


	public NhanVien DangNhap(String tendangnhap, String matkhau) {
		// TODO Auto-generated method stub
		return nhanVienDAO.DangNhap(tendangnhap, matkhau);
	}

}
