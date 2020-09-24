package com.example.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.example.domain.MemberVo;

public interface MypageMapper {
	
	@Select("SELECT * FROM member WHERE user_Id = #{userId}")
	MemberVo myinfo(String userId);
	
	int update(MemberVo vo);
	
	@Delete("DELETE FROM member WHERE user_Id = #{userId}")
	void deleteById(String userId);
	
	@Select("SELECT count(*) FROM inquier WHERE user_id = #{userId} and re_Lev = 0")
	int getInquierTotalCount(String userId);
	
	@Select("SELECT count(*) FROM inquier WHERE user_id = #{userId} and re_Lev = 0 and re_comp = 0")
	int getInquierIngCount(String userId);
	
	@Select("SELECT count(*) FROM inquier WHERE user_id = #{userId} and re_Lev = 0 and re_comp = 1")
	int getInquierFinCount(String userId);
}
