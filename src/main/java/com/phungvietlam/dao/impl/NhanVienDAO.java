package com.phungvietlam.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.phungvietlam.dao.INhanVienDAO;
import com.phungvietlam.entity.NhanVien;

@Repository
public class NhanVienDAO  implements INhanVienDAO{
	
	@Autowired
	SessionFactory sessionFactoty;

    @Transactional
	public boolean dangNhap(String tendangnhap, String matkhau) {
		
		Session session=sessionFactoty.getCurrentSession();
		
		try {
			
			String sql="from nhanvien where tendangnhap='"+tendangnhap+"' AND matkhau='"+matkhau+ "'";
			
			 NhanVien nhanVien= (NhanVien) session.createQuery(sql).getSingleResult();
			 
			 if(nhanVien!=null) {
				 
				 return true;
			 }else {
				 
				 return false;
			 }
			
		} catch (Exception e) {
			return false;
		}
		
		
	}
    
    @Transactional
	public boolean themNhanVien(NhanVien nhanVien) {
    	Session session=sessionFactoty.getCurrentSession();
    	int manhanvien=  (Integer) session.save(nhanVien);
		  if(manhanvien>0) {
			  
			  return true;
		  }else {
			  return false;
			  
		  }
		
	}
    @Transactional
	public NhanVien DangNhap(String tendangnhap, String matkhau) {
    	Session session=sessionFactoty.getCurrentSession();
    	try {
    	String sql="from nhanvien where tendangnhap='"+tendangnhap+"' AND matkhau='"+matkhau+ "'";	
    	NhanVien nhanVien= (NhanVien) session.createQuery(sql).getSingleResult();
    	
    	if(nhanVien!=null) {
    		
    		return nhanVien;
    	}else {
    		
    		return null;
    	}
    	
    	} catch (Exception e) {
			return null;
		}
		
    	
    	
		
	}

}
