package com.hybrid.mapper;

import java.util.List;
import java.util.Map;

import com.hybrid.model.City;
import com.hybrid.model.Member;
import com.hybrid.model.Store;
import com.hybrid.util.Pagination;

public interface StoreMapper {
	
	int selectCount();
	
	List<Store> selectAll();
	
	List<Store> selectPage(Pagination paging);
	
	Store selectById(int id);
	
	List<Store> selectByCountryCode(String countryCode);
	
	Store selectByEmailAndPassword(Map<String, Object> emailAndPassword);
	
	int insert(Store store);
	
	int update(Store store);
	
	int deleteById(int id);
	
}
