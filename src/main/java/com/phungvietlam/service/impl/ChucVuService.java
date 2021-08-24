package com.phungvietlam.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phungvietlam.dao.IChucVuDAO;
import com.phungvietlam.entity.ChucVu;
import com.phungvietlam.service.IChucVuService;
@Service
public class ChucVuService implements IChucVuService {
	@Autowired
	private IChucVuDAO chucVuDao;

	public ChucVu find() {
		// TODO Auto-generated method stub
		return chucVuDao.find();
	}

}
