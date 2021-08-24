package com.phungvietlam.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.phungvietlam.dao.IMauSanPhamDAO;
import com.phungvietlam.entity.MauSanPham;

@Repository
public class MauSanPhamDAO implements IMauSanPhamDAO {

	@Autowired
	SessionFactory sessionFactoty;

	@Transactional
	public List<MauSanPham> findAll() {
		Session session = sessionFactoty.getCurrentSession();
		String sql="from MAUSANPHAM";
		List<MauSanPham> list= (List<MauSanPham>)session.createQuery(sql).getResultList();

		return list;
	}

}
