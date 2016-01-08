package com.hybrid.service;

import java.util.List;


import com.hybrid.dao.StoreDao;
import com.hybrid.model.Store;
import com.hybrid.model.StoreList;

public class StoreListService {
	StoreDao storeDao;
	
	public void setStoreDao(StoreDao dao) {
		this.storeDao = dao;
	}
	
	public StoreList getList() {
		List<Store> stores = storeDao.selectAll();
		StoreList rtn = new StoreList();
		rtn.setStores(stores);
		
		return rtn;
	}

}
