package com.hybrid.service;


import org.springframework.transaction.annotation.Transactional;


import com.hybrid.dao.StoreDao;
import com.hybrid.model.Store;

public class StoreDetailService {

	StoreDao storeDao;
	
	public void setStoreDao(StoreDao dao) {
		this.storeDao = dao;
	}
	
	@Transactional
	public Store detail(int id) {
		
		Store store = storeDao.selectById(id);
		
		return store;
	}
}
