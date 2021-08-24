package com.phungvietlam.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.phungvietlam.dao.IHoaDonDAO;
import com.phungvietlam.entity.HoaDon;
import com.phungvietlam.entity.SanPham;

@Repository
public class HoaDonDAO implements IHoaDonDAO{
  
	
	@Autowired
	SessionFactory sessionFactoty;
	
	@Transactional
	public int ThemHoaDon(HoaDon hoaDon) {
		Session session=sessionFactoty.getCurrentSession();
		
		int id = (Integer) session.save(hoaDon);
		if(id>0) {
			return id;
			
		}else {

			return 0;
			
		}
		
	}
	@Transactional
	public List<HoaDon> layDanhSachHoaDon(int hdbatdau) {
		
		Session session = sessionFactoty.getCurrentSession();
		List<HoaDon> listHoaDons = new ArrayList<HoaDon>();
		if (hdbatdau < 0) {
			String sql = "from HOADON";
			listHoaDons = (List<HoaDon>) session.createQuery(sql).getResultList();
		} else {
			String sql = "from HOADON limit";
			listHoaDons = (List<HoaDon>) session.createQuery(sql).setFirstResult(hdbatdau).setMaxResults(5)
					.getResultList();
		}

		return listHoaDons;
		
		
	}
	
	@Transactional
	public int capNhatHoaDon(int mahoaDon, Boolean tinhtrang) {
		
		Session session=sessionFactoty.getCurrentSession();
		
		String sql="update HOADON set tinhtran='"+tinhtrang+"' where mahoadon='"+mahoaDon+ "'";
		
		 Query query = session.createQuery("update HOADON set tinhtrang =:tinhtrang where mahoadon = :mahoadon ");
		 query.setParameter("tinhtrang", tinhtrang);
		 query.setParameter("mahoadon", mahoaDon);
		 
		 int result = query.executeUpdate();
         return result;
		
		
	}
	@Transactional
	public HoaDon layChiTietHoaDon(int mahoadon) {
		Session session = sessionFactoty.getCurrentSession();
		String sql = "from HOADON hd where hd.mahoadon=" + mahoadon;
		HoaDon hoadons = (HoaDon) session.createQuery(sql).getSingleResult();

		return hoadons;
	}
	
	


}
