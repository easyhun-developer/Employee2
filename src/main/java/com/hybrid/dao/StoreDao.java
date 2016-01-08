package com.hybrid.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hybrid.mapper.MemberMapper;
import com.hybrid.mapper.StoreMapper;
import com.hybrid.model.Store;
import com.hybrid.model.Member;
import com.hybrid.util.Pagination;

public class StoreDao {
	
	StoreMapper storeMapper;
	
	public void setStoreMapper(StoreMapper mapper) {
		this.storeMapper = mapper;
	}
		
	public int selectCount() {
		return storeMapper.selectCount();
	}
	
	public List<Store> selectAll() {
		return storeMapper.selectAll();
	}
	
	public List<Store> selectPage(Pagination paging) {
		return storeMapper.selectPage(paging);
	}
	
	public Store selectById(int id) {
		return storeMapper.selectById(id);
	}

	
	public Store selectByEmailAndPassword(String email, String password) {
		Map<String, Object> emailAndPassword = new HashMap<String, Object>();
		emailAndPassword.put("email", email);
		emailAndPassword.put("password", password);
		
		return storeMapper.selectByEmailAndPassword(emailAndPassword);
	}
	
	public int insert(Store store) {
		int rtn = storeMapper.insert(store);
		
		return store.getId();
	}
	
	public int update(Store store) {
		return storeMapper.update(store);
	}
	
	public int deleteById(int id) {
		return storeMapper.deleteById(id);
	}
}
