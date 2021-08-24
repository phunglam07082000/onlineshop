package com.phungvietlam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phungvietlam.dao.IMauSanPhamDAO;
import com.phungvietlam.entity.MauSanPham;
import com.phungvietlam.service.IMauSanPhamService;

@Service
public class MauSanPhamService implements IMauSanPhamService {
	
	@Autowired
	private IMauSanPhamDAO mauSanPhamDAO ;

	public List<MauSanPham> findAll() {
		
		
		return mauSanPhamDAO.findAll();
	}

}
