package com.example.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.InquierVo;
import com.example.domain.MemberVo;
import com.example.mapper.MypageMapper;

import lombok.extern.java.Log;

@Log
@Service
@Transactional
public class MypageService {
	
	@Autowired
	private MypageMapper mypageMapper;
	
	public MemberVo myinfo(String userId) {
		log.info("MypageService - myinfo() 호출됨");
		MemberVo memberVo = mypageMapper.myinfo(userId);
		return memberVo;
	}
	
	public void update(MemberVo vo) {
		mypageMapper.update(vo);
	}
	
	public void delete(String userId) {
		mypageMapper.deleteById(userId);
	}
	
	public int getInquierTotalCount(String userId) {
		int total = mypageMapper.getInquierTotalCount(userId);
		
		return total;
	}
	
	public int getInquierIngCount(String userId) {
		int ing = mypageMapper.getInquierIngCount(userId);
		
		return ing;
	}
	
	public int getInquierFinCount(String userId) {
		int fin = mypageMapper.getInquierFinCount(userId);
		
		return fin;
	}
	
}
