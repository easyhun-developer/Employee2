package com.hybrid.service;


import org.springframework.transaction.annotation.Transactional;

import com.hybrid.dao.CityDao;
import com.hybrid.dao.MemberDao;
import com.hybrid.model.City;
import com.hybrid.model.Member;

public class MemberDetailService {

	MemberDao memberDao;
	
	public void setMemberDao(MemberDao dao) {
		this.memberDao = dao;
	}
	
	@Transactional
	public Member detail(int id) {
		
		Member member = memberDao.selectById(id);
		
		return member;
	}
}
