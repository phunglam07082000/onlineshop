package com.phungvietlam.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.phungvietlam.dao.ISanPhamDAO;
import com.phungvietlam.entity.ChiTietSanPham;
import com.phungvietlam.entity.SanPham;

@Repository
public class SanPhamDAO implements ISanPhamDAO {

	@Autowired
	SessionFactory sessionFactoty;

	@Transactional
	public List<SanPham> layDanhSachSanPham(int spbatdau) {
		Session session = sessionFactoty.getCurrentSession();
		List<SanPham> listSanPhams = new ArrayList<SanPham>();
		if (spbatdau < 0) {
			String sql = "from sanpham";
			listSanPhams = (List<SanPham>) session.createQuery(sql).getResultList();
		} else {
			String sql = "from sanpham limit";
			listSanPhams = (List<SanPham>) session.createQuery(sql).setFirstResult(spbatdau).setMaxResults(5)
					.getResultList();
		}

		return listSanPhams;
	}

	@Transactional
	public SanPham layChiTietSanPham(int masanpham) {

		Session session = sessionFactoty.getCurrentSession();
		String sql = "from sanpham sp where sp.masanpham=" + masanpham;
		SanPham sanphams = (SanPham) session.createQuery(sql).getSingleResult();

		return sanphams;
	}

	@Transactional
	public List<SanPham> layDanhSachSanPhamTheoDanhMuc(int madanhmuc) {

		Session session = sessionFactoty.getCurrentSession();
		String sql = "from sanpham sp where sp.danhmucsanpham.madanhmuc=" + madanhmuc;
		List<SanPham> listSanPhams = (List<SanPham>) session.createQuery(sql).getResultList();
		// TODO Auto-generated method stub
		return listSanPhams;
	}

	@Transactional
	public List<SanPham> findAll() {
		Session session = sessionFactoty.getCurrentSession();
		String sql = "from sanpham";

		List<SanPham> listSanPhams = (List<SanPham>) session.createQuery(sql).getResultList();
		return listSanPhams;
	}

	@Transactional
	public boolean Xoa(int masanpham) {
		Session session = sessionFactoty.getCurrentSession();
		SanPham sanPham = session.get(SanPham.class, masanpham);
		
		Set<ChiTietSanPham> chiTietSanPhams=sanPham.getChitietsanpham();
		for (ChiTietSanPham chiTietSanPham : chiTietSanPhams) {
			
			session.createQuery("delete CHITIETHOADON where machitietsanpham=" +chiTietSanPham.getMachitietsanpham()).executeUpdate();			
		}
			
		 session.createQuery("delete CHITIETSANPHAM where masanpham="+masanpham).
		 executeUpdate();
		
		session.createQuery("delete sanpham where masanpham="+masanpham).executeUpdate();

		return false;
	}
	@Transactional
	public boolean ThemSanPham(SanPham sanPham) {
		Session session = sessionFactoty.getCurrentSession();
		int id= (Integer) session.save(sanPham);
		return false;
	}
	@Transactional
	public boolean CapNhatSanPham(SanPham sanPham) {
		Session session = sessionFactoty.getCurrentSession();
		session.update(sanPham);
		return false;
	}

}
