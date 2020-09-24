<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 user-scalable=no">
<title>조조무비</title>
<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/bootstrap-theme.css" rel="stylesheet">
<link href="/css/index.css" rel="stylesheet">

<body>
	<div class="container-fluid">
		<div class="login">
			<c:choose>
				<c:when test="${not empty sessionScope.userId && sessionScope.userId eq 'admin'}"> 
				 관리자로 로그인하셨습니다.
				<a href="/member/logout">로그아웃</a>
				<a href="#"> 관리자페이지</a>
        			
				</c:when>		
			
				<c:when test="${not empty sessionScope.userId}">
				${ sessionScope.userId } 님 환영합니다!
        			<a href="/member/logout">로그아웃</a>
					<a href="/mypage/mypage"> 마이페이지</a>
				
				</c:when>
				
				<c:otherwise>
					<a href="/member/login">로그인</a>
	        	 / <a href="/member/join">회원가입</a>

	        	 
				</c:otherwise>
			</c:choose>
		</div>


		<div class="col-md-9 col-md-offset-3">
			<div class="col-md-12">
				<img alt="d" src="/images/영화아이콘.png">
			</div>
		</div>


		<div class="row">
			<div class="col-md-5">
				<h2 id="subject">조조무비</h2>
			</div>
			<div class="col-md-7 " id="search-form">
				<form class="search" role="search">
					<div id="aaa">
						<div>
							<input type="text" class="form-control" placeholder="검색어를 입력하세요.">
						</div>
						<div>
							<button type="submit" class="btn btn-default">검색</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<nav class="navbar navbar-inverse">
			<div class="navbar-header">
				<a class="navbar-brand" href="/">홈</a>
				<!--네비게이션 제목 -->
			</div>

			<div>
				<ul class="nav navbar-nav">
					<li><a href="/movie/currentMovie">현재상영작</a></li>
					<li><a href="/movie/comingMovie">상영예정작</a></li>
					<li><a href="/movie/moviePresent">영화</a></li>
					<li><a href="#">예매</a></li>
					<li><a href="#">문의하기</a></li>
					<li><a href="#">공지</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 1-1</a></li>
							<li><a href="#">Page 1-2</a></li>
							<li><a href="#">Page 1-3</a></li>
						</ul></li>

				</ul>
			</div>
		</nav>
	</div>
</body>