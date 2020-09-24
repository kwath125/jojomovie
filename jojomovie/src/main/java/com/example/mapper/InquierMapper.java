package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.domain.InquierVo;

public interface InquierMapper {
	
	int getTotalCount(@Param("category") String category, @Param("search") String search, @Param("userId") String userId, @Param("grade") String grade);
	
	// 매퍼 메소드의 매개변수가 2개 이상일때는
	// @Param 애노테이션 값으로 sql문에 배치.
	List<InquierVo> getInquiers(@Param("startRow") int startRow, 
							@Param("pageSize") int pageSize, 
							@Param("category") String category, 
							@Param("search") String search,
							@Param("userId") String userId, 
							@Param("grade") String grade);
	
	@Select("SELECT * FROM inquier WHERE num = #{num}")
	InquierVo getInquierByNum(int num);
	
	@Select ("select ifnull(max(num), 0) + 1 as max_num from inquier ")
	int getInquierNum();
	
	void insertInquier(InquierVo vo);
	
	void updateInquier(InquierVo vo);
	
	@Update("UPDATE inquier SET re_comp = '1' WHERE num = #{reRef}")
	void updateInquierReComp(int reRef);
	
	@Delete("DELETE FROM inquier WHERE num = #{num}")
	void deleteInquier(int num);
}








