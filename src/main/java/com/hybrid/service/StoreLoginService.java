package com.hybrid.service;

import com.hybrid.dao.StoreDao;
import com.hybrid.exception.StoreLoginFailException;
import com.hybrid.model.Store;

public class StoreLoginService {

	StoreDao storeDao;
	
	public void setStoreDao(StoreDao dao) {
		this.storeDao = dao;
	}
	
	public Store storelogin(String email, String password) {
		
		Store store = storeDao.selectByEmailAndPassword(email, password);
		if (store == null) {
			throw new StoreLoginFailException("존재하지 않는 USER 입니다.");
		}
		
		return store;
	}
}
