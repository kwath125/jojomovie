package com.example.domain;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class MovieVo {
	
	private int movieId;
	private String movieName;
	private String director;
	private String cast;
	private int grade;
	private String information;
	private int score;
	private int likeCnt;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate startDate;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate endDate;
	
	
	private float avgStar;
	private String relMovie;
	
	private String genre;
	private String runtime;
	
	
	
}
