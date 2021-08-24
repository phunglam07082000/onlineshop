package com.phungvietlam.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.phungvietlam.dao.ISizeSanPhamDAO;
import com.phungvietlam.entity.SizeSanPham;

@Repository
public class SizeSanPhamDAO implements ISizeSanPhamDAO {

	
	
	@Autowired
	SessionFactory sessionFactoty;
	
	@Transactional
	public List<SizeSanPham> findAll() {
		Session session=sessionFactoty.getCurrentSession();
		String sql="from SIZESANPHAM";
		List<SizeSanPham> list=(List<SizeSanPham>) session.createQuery(sql).getResultList();
		
		
		return list;
	}

}
