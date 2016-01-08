package com.hybrid.service;


import org.springframework.transaction.annotation.Transactional;

import com.hybrid.dao.CityDao;
import com.hybrid.dao.MemberDao;
import com.hybrid.dao.StoreDao;

public class StoreUnRegisterService {

	StoreDao storeDao;
	
	public void setStoreDao(StoreDao dao) {
		this.storeDao = dao;
	}
	
	@Transactional
	public int unregist(int id) {
		
		storeDao.deleteById(id);
		
		return id;
	}
}
