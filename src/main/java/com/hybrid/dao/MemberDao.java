package com.hybrid.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hybrid.mapper.MemberMapper;
import com.hybrid.model.City;
import com.hybrid.model.Member;
import com.hybrid.util.Pagination;

public class MemberDao {
	
	MemberMapper memberMapper;
	
	public void setMemberMapper(MemberMapper mapper) {
		this.memberMapper = mapper;
	}
	
	
	public int selectCount() {
		return memberMapper.selectCount();
	}
	public List<Member> selectAll() {
		return memberMapper.selectAll();
	}
	public List<Member> selectPage(Pagination paging) {
		return memberMapper.selectPage(paging);
	}
	
	public Member selectById(int id) {
		return memberMapper.selectById(id);
	}

	
	public Member selectByEmailAndPassword(String email, String password) {
		Map<String, Object> emailAndPassword = new HashMap<String, Object>();
		emailAndPassword.put("email", email);
		emailAndPassword.put("password", password);
		
		return memberMapper.selectByEmailAndPassword(emailAndPassword);
	}
	
	public int insert(Member member) {
		int rtn = memberMapper.insert(member);
		
		return member.getId();
	}
	
	public int update(Member member) {
		return memberMapper.update(member);
	}
	
	public int deleteById(int id) {
		return memberMapper.deleteById(id);
	}
}
