package com.hybrid.service;


import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.transaction.annotation.Transactional;

import com.hybrid.dao.CityDao;
import com.hybrid.dao.MemberDao;
import com.hybrid.dao.StoreDao;
import com.hybrid.exception.CityRegisterException;
import com.hybrid.exception.MemberRegisterException;
import com.hybrid.exception.StoreRegisterException;
import com.hybrid.model.City;
import com.hybrid.model.Member;
import com.hybrid.model.Store;

public class StoreRegisterService {

	StoreDao storeDao;
	
	public void setStoreDao(StoreDao dao) {
		this.storeDao = dao;
	}
	
	@Transactional
	public int regist(Store store) {
		int id=0;
		try {
			id = storeDao.insert(store);
		} catch (DataIntegrityViolationException e) {
			throw new StoreRegisterException();
		}
		
		return id;
	}
}
