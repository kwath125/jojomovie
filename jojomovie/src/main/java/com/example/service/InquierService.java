package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.InquierVo;
import com.example.mapper.InquierMapper;

import lombok.extern.java.Log;

@Log
@Service
@Transactional // 모든 메소드 각각이 한개의 트랜잭션 단위로 수행됨   // 자동 커밋,롤백
public class InquierService {
	
	@Autowired
	private InquierMapper inquierMapper;
	
	// inquier 테이블의 전체 행 갯수 가져오기
	public int getTotalCount(String category, String search, String userId, String grade) {
		int count = inquierMapper.getTotalCount(category, search, userId, grade);
		return count;
	} // getTotalCount()
	
	// 게시판 글목록 가져오기
	public List<InquierVo> getInquiers(int startRow, int pageSize, String category, String search, String userId, String grade) {
		List<InquierVo> list = inquierMapper.getInquiers(startRow, pageSize, category, search, userId, grade);
		return list;
	} // getBoards()
	
	// 레코드 1개 가져오기
	public InquierVo getInquierByNum(int num) {
		InquierVo vo = inquierMapper.getInquierByNum(num);
		return vo;
	} // getBoardByNum()
	
	// 문의하기 글 insert 하기
	public void insertInquier(InquierVo vo) {
		int num = inquierMapper.getInquierNum();
		
		// 주글 관련 re 필드값 설정
		vo.setReRef(num);
		vo.setReLev(0);
		vo.setReComp(0);
		
		inquierMapper.insertInquier(vo);
	} // insert()
	
	// 문의하기 글 update 하기
	public void updateInquier(InquierVo vo) {
		log.info("num: "+vo.getNum());
		inquierMapper.updateInquier(vo);
	}
	
	// 문의하기 글 reply 하기
	public void replyInquier(InquierVo vo) {
		int reRef = vo.getReRef();
		
		// 주글 관련 re 필드값 설정
		vo.setReRef(reRef);
		vo.setReLev(1);
		vo.setReComp(1);
		
		inquierMapper.insertInquier(vo);
		
		inquierMapper.updateInquierReComp(reRef);
	} // insert()
	
	public void deleteInquier(int num) {
		inquierMapper.deleteInquier(num);
	}
	
}
	
	
	





