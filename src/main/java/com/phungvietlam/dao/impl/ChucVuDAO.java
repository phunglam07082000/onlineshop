package com.phungvietlam.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.phungvietlam.dao.IChucVuDAO;
import com.phungvietlam.entity.ChucVu;
@Repository
public class ChucVuDAO implements IChucVuDAO {

	
	
	@Autowired
	SessionFactory sessionFactoty;
	
	@Transactional
	public ChucVu find() {
		
		Session session=sessionFactoty.getCurrentSession();
		
		String sql="from CHUCVU";
		ChucVu chucVu=(ChucVu) session.createQuery(sql).getSingleResult();
		
		return chucVu;
	}

}
