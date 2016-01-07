package com.hybrid.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.hybrid.dao.CityDao;
import com.hybrid.dao.MemberDao;
import com.hybrid.model.City;
import com.hybrid.model.CityPage;
import com.hybrid.model.Member;
import com.hybrid.model.MemberPage;
import com.hybrid.util.Pagination;

public class MemberPageService {
	MemberDao memberDao;
	
	public void setMemberDao(MemberDao dao) {
		this.memberDao = dao;
	}
	
	@Transactional
	public MemberPage getPage(int pageNo) {
		
		Pagination paging = new Pagination();
		paging.setPageNo(pageNo);
		paging.setTotalItem(memberDao.selectCount());
		List<Member> list =memberDao.selectPage(paging);
		
		MemberPage page = new MemberPage();
		page.setPaging(paging);
		page.setMembers(list);
		
		return page;
	}

}
