package com.hybrid.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.hybrid.dao.CityDao;
import com.hybrid.dao.MemberDao;
import com.hybrid.dao.StoreDao;
import com.hybrid.model.City;
import com.hybrid.model.CityPage;
import com.hybrid.model.Member;
import com.hybrid.model.MemberPage;
import com.hybrid.model.Store;
import com.hybrid.model.StorePage;
import com.hybrid.util.Pagination;

public class StorePageService {
	StoreDao storeDao;
	
	public void setStoreDao(StoreDao dao) {
		this.storeDao = dao;
	}
	
	@Transactional
	public StorePage getPage(int pageNo) {
		
		Pagination paging = new Pagination();
		paging.setPageNo(pageNo);
		paging.setTotalItem(storeDao.selectCount());
		List<Store> list =storeDao.selectPage(paging);
		
		StorePage page = new StorePage();
		page.setPaging(paging);
		page.setStores(list);
		
		return page;
	}

}
