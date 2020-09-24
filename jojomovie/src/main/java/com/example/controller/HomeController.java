package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.MovieVo;
import com.example.service.MovieService;

import lombok.extern.java.Log;


@Controller
@Log
public class HomeController {

	
	
	@GetMapping("/movie/movieMain")
	public void movieMain() {
		log.info("movieMain() 호출됨");
		//return "company/welcome";
		
		// 리턴타입이 void면 url요청 주소경로를
		// jsp 경로로 사용함
	}
	
//	@GetMapping("/movie/moviePresent")
//	public void moviePresent() {
//		log.info("moviePresent() 호출됨");
//		//return "company/welcome";
//		
//		// 리턴타입이 void면 url요청 주소경로를
//		// jsp 경로로 사용함
//	}
	

	
	
	//////////////////////////////////////////////////////////////////////////
	
	
	@Autowired
	MovieService movieService;

	@GetMapping("/")
	public String index(String movieName, HttpSession session, Model model) {
		log.info("index() 호출됨");
		List<MovieVo> list = movieService.getMovie();

		int check = 0;
		String userId = (String) session.getAttribute("userId");
		
		check = movieService.likeCheck(movieName, userId);
		
		model.addAttribute("movieList", list);
		model.addAttribute("check", check);
		
		log.info("movieList" + list.toString());
	return "index"; // 디스패치방식 호출
	}
		
	
	@GetMapping("/likeCheck")
	@ResponseBody
	public Map<String, Integer> likeCheck(String movieName, HttpSession session) {
		log.info("likeCheck() 호출됨");
		String userId = (String) session.getAttribute("userId");
		
		
		log.info("movieName : " + movieName);
		
		int check = movieService.likeCheck(movieName, userId);
		
		
		if (check == 1) {
			movieService.pushLikeCancle(movieName, userId);
			movieService.deleteLikeCount(movieName);
		} else {
			movieService.pushLike(movieName, userId);
			movieService.updateLikeCount(movieName);
		}

		MovieVo vo = movieService.getMovieById(movieName);
		int likeCnt = vo.getLikeCnt();
		
		
		Map<String, Integer> map = new HashMap<>();
		map.put("check", check);
		map.put("likeCnt", likeCnt);
		
		log.info("map : " + map);
		
		return map;
	}
	
	
	
}







