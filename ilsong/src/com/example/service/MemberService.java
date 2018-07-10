package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.dto.MemberVO;

public interface MemberService {
	
	public List<MemberVO> selectMember() throws Exception;
	public List<MemberVO> selectMember2() throws Exception;
}
