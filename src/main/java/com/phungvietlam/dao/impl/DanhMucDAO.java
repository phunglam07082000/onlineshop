package com.phungvietlam.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.phungvietlam.dao.IDanhMucDAO;
import com.phungvietlam.entity.DanhMucSanPham;

@Repository
public class DanhMucDAO implements IDanhMucDAO {
	
	
	@Autowired
	SessionFactory sessionFactoty;
     
	
	@Transactional
	public List<DanhMucSanPham> layDanhMuc() {
		  Session session=sessionFactoty.getCurrentSession();
		  String sql="from DANHMUCSANPHAM";
		  
		  List<DanhMucSanPham> list= session.createQuery(sql).getResultList();
		  
		return list;
	}
	


}
