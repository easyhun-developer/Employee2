package com.hybrid.service;


import org.springframework.transaction.annotation.Transactional;


import com.hybrid.dao.StoreDao;
import com.hybrid.model.Store;

public class StoreModifyService {

	StoreDao storeDao;
	
	public void setStoreDao(StoreDao dao) {
		this.storeDao = dao;
	}
	
	@Transactional
	public int modify(Store store) {
		
		storeDao.update(store);

		return store.getId();
	}
}
