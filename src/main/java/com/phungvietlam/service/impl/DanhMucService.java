package com.phungvietlam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phungvietlam.dao.IDanhMucDAO;
import com.phungvietlam.entity.DanhMucSanPham;
import com.phungvietlam.service.IDanhMuchService;
@Service
public class DanhMucService implements IDanhMuchService {
  
	@Autowired
	private IDanhMucDAO danhMucDAO;
	
	
	public List<DanhMucSanPham> layDanhMuc() {
		
		return danhMucDAO.layDanhMuc();
	}

}
