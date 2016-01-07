package com.hybrid.mapper;

import java.util.List;
import java.util.Map;

import com.hybrid.model.City;
import com.hybrid.model.Member;
import com.hybrid.util.Pagination;

public interface MemberMapper {
	
	int selectCount();
	List<Member> selectPage(Pagination paging);
	List<Member> selectAll();
	Member selectById(int id);	
	
	Member selectByEmailAndPassword(Map<String, Object> emailAndPassword);
	
	int insert(Member member);	
	
	int update(Member member);
	
	int deleteById(int id);
}
