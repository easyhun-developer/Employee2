package com.hybrid.service;


import org.springframework.transaction.annotation.Transactional;

import com.hybrid.dao.CityDao;
import com.hybrid.dao.MemberDao;
import com.hybrid.model.City;
import com.hybrid.model.Member;

public class MemberModifyService {

	MemberDao memberDao;
	
	public void setMemberDao(MemberDao dao) {
		this.memberDao = dao;
	}
	
	@Transactional
	public int modify(Member member) {
		
		memberDao.update(member);

		return member.getId();
	}
}
