package com.phungvietlam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phungvietlam.dao.ISizeSanPhamDAO;
import com.phungvietlam.entity.SizeSanPham;
import com.phungvietlam.service.ISizeSanPhamService;

@Service
public class SizeSanPhamService implements ISizeSanPhamService {
	
	@Autowired
	private ISizeSanPhamDAO sizeSanPhamDAO;

	public List<SizeSanPham> findAll() {
		
		return sizeSanPhamDAO.findAll();
	}

}
