package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.example.domain.LikeVo;
import com.example.domain.MovieVo;

public interface MovieMapper {
	
	void insert(MovieVo vo);
		
	@Select("select ifnull(max(cmt_number), 0) + 1 as max_num from cmt ")
	int getBoardNum();
	
	int getMovieTotalcount(@Param("category") String category,
			@Param("search") String search);
	
	List<MovieVo> getMovieBoards(@Param("startRow") int startRow,
			@Param("pageSize") int pageSize,
			@Param("category") String category,
			@Param("search") String search);
	
	//////////////////////////////////////////////////
	
	List<MovieVo> getMoviePresent(@Param("startRow") int startRow,
			@Param("pageSize") int pageSize,
			@Param("category") String category,
			@Param("search") String search);
	
	
	////////////////////////////////////////////////////
	
	
	MovieVo getBoardByNum(int cmtNumber);
	
	int getTotalcountMovie(@Param("category") String category,
			@Param("search") String search,
			@Param("movieId") int movieId);
	
	@Select("select * from movie_release where movie_id=#{movieId}")
	MovieVo getBoardsByMovieId(int movieId);
	
	
	
	////////////////////////////////////////////////////////////////
	@Select("SELECT * FROM movie ORDER BY score desc")
	List<MovieVo> getMovieList();
	
	
	@Select("SELECT * FROM movie")
	List<MovieVo> getMovie();
	
	
	@Select("SELECT * FROM liketable")
	List<LikeVo> getlike();
	
	
	@Insert("INSERT INTO liketable (user_id, movie_name) VALUES (#{userId}, #{movieName})")
	void pushLike(@Param("movieName") String movieName, @Param("userId") String userId);
	
	@Delete("DELETE FROM liketable WHERE user_id=#{userId} and movie_name=#{movieName}")
	void pushLikeCancle(@Param("movieName") String movieName, @Param("userId") String userId);
	
	@Select("SELECT COUNT(*) FROM liketable WHERE user_id=#{userId} and movie_name=#{movieName}")
	int likeCheck(String movieName, String userId);
	
	@Select("SELECT * FROM movie where movie_name=#{movieName}")
	MovieVo getMovieById(String movieName);
	
	void updateLikeCount(String movieName);
	
	void deleteLikeCount(String movieName);
	
	
	////////////////////////////////////////////////////////////////////////////////////
	
	int getCurrentTotalMovieCount(String category, String search);
	
	List<MovieVo> getCurrentMovies(@Param("startRow") int startRow,
								   @Param("pageSize") int pageSize,
								   @Param("category") String category,
								   @Param("search") String search);
	
	
	int getComingTotalMovieCount(String category, String search);
	
	List<MovieVo> getComingMovies(@Param("startRow") int startRow,
			   @Param("pageSize") int pageSize,
			   @Param("category") String category,
			   @Param("search") String search);
	
	
}