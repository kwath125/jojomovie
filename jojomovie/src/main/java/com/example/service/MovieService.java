package com.example.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.LikeVo;
import com.example.domain.MovieVo;
import com.example.mapper.MovieMapper;

@Service
@Transactional // 모든 메소드 각각이 한개의 트랜잭션 단위로 수행됨
public class MovieService {

	@Autowired
	private MovieMapper movieMapper;

	// 코멘트 게시판 새글번호 생성해서 가져오기
	public int getBoardNum() {
		return movieMapper.getBoardNum();
	} // getBoardNum()

	public void insert(MovieVo vo) {
		System.out.println("insert 호출");
		movieMapper.insert(vo);
	}

	// (검색어가 적용되는) board 테이블의 전체 행 갯수 가져오기
	public int getMovieTotalcount(String category, String search) {
		int count = movieMapper.getMovieTotalcount(category, search);
		return count;
	} // getMovieTotalcount()

	// (검색어가 적용되는) 게시판 글목록 가져오기
	public List<MovieVo> getMovieBoards(int startRow, int pageSize, String category, String search) {
		List<MovieVo> list = movieMapper.getMovieBoards(startRow, pageSize, category, search);

		return list;
	} // getMovieBoards()

	////////////////////////////////////////////

	public List<MovieVo> getMoviePresent(int startRow, int pageSize, String category, String search) {
		List<MovieVo> list = movieMapper.getMoviePresent(startRow, pageSize, category, search);

		return list;
	} // getMoviePresent()

	/////////////////////////////////////////////

	// (검색어가 적용되는) board 테이블의 전체 행 갯수 가져오기
	public int getTotalcountMovie(String category, String search, int movieId) {
		int count = movieMapper.getTotalcountMovie(category, search, movieId);
		return count;
	} // getTotalcountMovie()

	public MovieVo getBoardsByMovieId(int movieId) {
		MovieVo vo = movieMapper.getBoardsByMovieId(movieId);
		return vo;
	}

	////////////////////////////////////////////////////////////////////////////

	public List<MovieVo> getMovieList() {
		List<MovieVo> movieVo = movieMapper.getMovieList();
		return movieVo;
	}

	public List<MovieVo> getMovie() {
		List<MovieVo> list = null;

		list = movieMapper.getMovie();

		return list;
	}

	public List<LikeVo> getLike() {
		List<LikeVo> list = null;

		list = movieMapper.getlike();

		return list;
	}

	public int likeCheck(String movieName, String userId) {
		int check = 0;

		check = movieMapper.likeCheck(movieName, userId);
		return check;
	}

	public MovieVo getMovieById(String movieName) {
		MovieVo vo = movieMapper.getMovieById(movieName);

		return vo;
	}

	public void pushLike(String movieName, String userId) {
		movieMapper.pushLike(movieName, userId);
	}

	public void pushLikeCancle(String movieName, String userId) {
		movieMapper.pushLikeCancle(movieName, userId);
	}

	public void updateLikeCount(String movieName) {
		movieMapper.updateLikeCount(movieName);
	} // updateReadcount()

	public void deleteLikeCount(String movieName) {
		movieMapper.deleteLikeCount(movieName);
	} // updateReadcount()

////////////////////////////////////////////////////////////////////////////////////////////////////////////

	public int getCurrentTotalMovieCount(String category, String search) {
		int count = movieMapper.getCurrentTotalMovieCount(category, search);

		return count;
	}

	public List<MovieVo> getCurrentMovies(int startRow, int pageSize, String category, String search) {
		List<MovieVo> list = movieMapper.getCurrentMovies(startRow, pageSize, category, search);

		return list;

	}

	public int getComingTotalMovieCount(String category, String search) {
		int count = movieMapper.getComingTotalMovieCount(category, search);

		return count;
	}

	public List<MovieVo> getComingMovies(int startRow, int pageSize, String category, String search) {
		List<MovieVo> list = movieMapper.getComingMovies(startRow, pageSize, category, search);

		return list;

	}

}
