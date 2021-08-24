package com.phungvietlam.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phungvietlam.dao.IChiTietHoaDonDAO;
import com.phungvietlam.entity.ChiTietHoaDon;
import com.phungvietlam.service.IChiTietHoaDonService;

@Service
public class ChiTietHoaDonService implements IChiTietHoaDonService {
    @Autowired
    private IChiTietHoaDonDAO chiTietHoaDonDAO;
	public boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		
		return chiTietHoaDonDAO.ThemChiTietHoaDon(chiTietHoaDon);
	}

}
