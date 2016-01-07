package com.hybrid.service;


import org.springframework.transaction.annotation.Transactional;

import com.hybrid.dao.CityDao;
import com.hybrid.dao.MemberDao;

public class MemberUnRegisterService {

	MemberDao memberDao;
	
	public void setMemberDao(MemberDao dao) {
		this.memberDao = dao;
	}
	
	@Transactional
	public int unregist(int id) {
		
		memberDao.deleteById(id);
		
		return id;
	}
}
