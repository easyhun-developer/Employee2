package com.hybrid.service;

import java.util.List;

import com.hybrid.dao.CityDao;
import com.hybrid.dao.MemberDao;
import com.hybrid.model.City;
import com.hybrid.model.CityList;
import com.hybrid.model.Member;
import com.hybrid.model.MemberList;

public class MemberListService {
	MemberDao memberDao;
	
	public void setMemberDao(MemberDao dao) {
		this.memberDao = dao;
	}
	
	public MemberList getList() {
		List<Member> members = memberDao.selectAll();
		MemberList rtn = new MemberList();
		rtn.setMembers(members);
		
		return rtn;
	}

}
