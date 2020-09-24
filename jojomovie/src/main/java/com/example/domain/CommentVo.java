package com.example.domain;

import java.time.LocalDateTime;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class CommentVo {
	
	// JOIN 쿼리로 첨부파일정보를 리스트 필드에 설정 용도
	private List<AttachfileVo> attachList;
	
	private int cmtNumber;
	private String userId;
	private int cmtStar;
	private String cmtContent;
	private int movieId;
	private String movieName;
	private LocalDateTime cmtRegDate;

	// cmt댓글 게시판
	private Integer readcount; // 조회수
	private Integer reRef; /* 글 그룹 번호 */
	private Integer reLev; /* 글 들여쓰기 레벨 */
	private Integer reSeq; /* 글 그룹 내에서의 순서 */
	
}
