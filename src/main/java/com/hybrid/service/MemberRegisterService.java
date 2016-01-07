package com.hybrid.service;


import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.transaction.annotation.Transactional;

import com.hybrid.dao.CityDao;
import com.hybrid.dao.MemberDao;
import com.hybrid.exception.CityRegisterException;
import com.hybrid.exception.MemberRegisterException;
import com.hybrid.model.City;
import com.hybrid.model.Member;

public class MemberRegisterService {

	MemberDao memberDao;
	
	public void setMemberDao(MemberDao dao) {
		this.memberDao = dao;
	}
	
	@Transactional
	public int regist(Member member) {
		int id=0;
		try {
			id = memberDao.insert(member);
		} catch (DataIntegrityViolationException e) {
			throw new MemberRegisterException();
		}
		
		return id;
	}
}
