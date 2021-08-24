package com.phungvietlam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phungvietlam.dao.ISanPhamDAO;
import com.phungvietlam.entity.SanPham;
import com.phungvietlam.service.ISanPhamService;
@Service
public class SanPhamService implements ISanPhamService {
	@Autowired
	private ISanPhamDAO phamDAO;

	public List<SanPham> layDanhSachSanPham(int spbatdau) {
		
		return phamDAO.layDanhSachSanPham(spbatdau);
	}

	public SanPham layChiTietSanPham(int masanpham) {
		
		return phamDAO.layChiTietSanPham(masanpham);
	}

	public List<SanPham> layDanhSachSanPhamTheoDanhMuc(int madanhmuc) {
	
		return phamDAO.layDanhSachSanPhamTheoDanhMuc(madanhmuc);
	}

	public List<SanPham> findAll() {
		
		return phamDAO.findAll();
	}

	public boolean Xoa(int masanpham) {
		
		return phamDAO.Xoa(masanpham);
	}

	public boolean ThemSanPham(SanPham sanPham) {
		
		return phamDAO.ThemSanPham(sanPham);
	}

	public boolean CapNhatSanPham(SanPham sanPham) {
		
		return phamDAO.CapNhatSanPham(sanPham);
	}

	
}
