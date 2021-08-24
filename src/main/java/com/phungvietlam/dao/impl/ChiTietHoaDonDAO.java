package com.phungvietlam.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.phungvietlam.dao.IChiTietHoaDonDAO;
import com.phungvietlam.entity.ChiTietHoaDon;
import com.phungvietlam.entity.ChiTietHoaDonId;
@Repository
public class ChiTietHoaDonDAO implements IChiTietHoaDonDAO {
    
	@Autowired
	SessionFactory sessionFactoty;
	
	@Transactional
	public boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		 Session session=sessionFactoty.getCurrentSession();
		ChiTietHoaDonId id= (ChiTietHoaDonId) session.save(chiTietHoaDon);
		
		if(null!=id) {
			
			return true;
		}else {
			return false;
			
		}
		
	}

}
