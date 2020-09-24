<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
</head>
<style>
</style>

<body>

	<jsp:include page="/WEB-INF/views/include/top.jsp" />



		<div class='container-fluid embed-container'>
			<iframe src='//www.youtube.com/embed/7oKAPbnl7mQ'></iframe>
		</div>

		<div class="chat">
		<div class="col-md-offset-10 col-md-2" id="chat">
		<img alt="d" src="/images/채팅.png"><a href = "javascript:popup()" target = "_parent">자유채팅</a>
		</div>
		</div>


		<div class="container">
			<div class="now-movie">
				<div class="col-md-9">
					<h4>현재상영작</h4>
				</div>
				<div class="col-md-3" id="plus">
					<a href="/movie/movieInfo">더 많은 영화보기<img alt="d" src="/images/플러스.png"></a>
				</div>
			</div>
		</div>
		<div class="container"
			style="background-color: ghostwhite; margin-bottom: 120px;">
			<div class="movies">
				<div id="carousel-example-generic" class="carousel slide">
					<!-- Carousel items -->
					<div class="carousel-inner">
						<div class="item active">
							<div class="row">
								<div class="col-md-3 col-sm-6">
									<img src="/images/오케이 마담.jpg" alt="First slide">
									<div class="caption">
										<h3>오케이마담</h3>
										<p>
											<c:if test="${ userId == null }">
												<a href="/member/login" class="btn btn-primary"
													data-toggle="tooltip" data-placement="top"
													title="로그인 후 이용가능합니다." role="button">예매</a>
											</c:if>
											<c:if test="${ userId != null }">
												<a href="#" class="btn btn-primary" role="button">예매</a>
											</c:if>
										</p>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<img src="/images/다만 악에서 구하소서.jpg" alt="First slide">
									<div class="caption">
										<h3>다만악에서구하소서</h3>
										<p>
											<c:if test="${ userId == null }">
												<a href="/member/login" class="btn btn-primary"
													data-toggle="tooltip" data-placement="top"
													title="로그인 후 이용가능합니다." role="button">예매</a>
											</c:if>
											<c:if test="${ userId != null }">
												<a href="#" class="btn btn-primary" role="button">예매</a>
											</c:if>
										</p>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<img src="/images/존윅.jpg" alt="First slide">
									<div class="caption">
										<h3>존윅</h3>
										<p>
											<c:if test="${ userId == null }">
												<a href="/member/login" class="btn btn-primary"
													data-toggle="tooltip" data-placement="top"
													title="로그인 후 이용가능합니다." role="button">예매</a>
											</c:if>
											<c:if test="${ userId != null }">
												<a href="#" class="btn btn-primary" role="button">예매</a>
											</c:if>
										</p>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<img src="/images/테넷.jpg" alt="First slide">
									<div class="caption">
										<h3>테넷</h3>
										<p>
											<c:if test="${ userId == null }">
												<a href="/member/login" class="btn btn-primary"
													data-toggle="tooltip" data-placement="top"
													title="로그인 후 이용가능합니다." role="button">예매</a>
											</c:if>
											<c:if test="${ userId != null }">
												<a href="#" class="btn btn-primary" role="button">예매</a>
											</c:if>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-md-3 col-sm-6">
									<img src="/images/강철비2.jpg" alt="Second slide">
									<div class="caption">
										<h3>강철비2</h3>
										<p>
											<c:if test="${ userId == null }">
												<a href="/member/login" class="btn btn-primary"
													data-toggle="tooltip" data-placement="top"
													title="로그인 후 이용가능합니다." role="button">예매</a>
											</c:if>
											<c:if test="${ userId != null }">
												<a href="#" class="btn btn-primary" role="button">예매</a>
											</c:if>
										</p>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<img src="/images/반교.jpg" alt="Second slide">
									<div class="caption">
										<h3>반교</h3>
										<p>
											<c:if test="${ userId == null }">
												<a href="/member/login" class="btn btn-primary"
													data-toggle="tooltip" data-placement="top"
													title="로그인 후 이용가능합니다." role="button">예매</a>
											</c:if>
											<c:if test="${ userId != null }">
												<a href="#" class="btn btn-primary" role="button">예매</a>
											</c:if>
										</p>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<img src="/images/국제수사.jpg" alt="Second slide">
									<div class="caption">
										<h3>국제수사</h3>
										<p>
											<c:if test="${ userId == null }">
												<a href="/member/login" class="btn btn-primary"
													data-toggle="tooltip" data-placement="top"
													title="로그인 후 이용가능합니다." role="button">예매</a>
											</c:if>
											<c:if test="${ userId != null }">
												<a href="#" class="btn btn-primary" role="button">예매</a>
											</c:if>
										</p>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<img src="/images/시크릿 가든.jpg" alt="Second slide">
									<div class="caption">
										<h3>시크릿가든</h3>
										<p>
											<c:if test="${ userId == null }">
												<a href="/member/login" class="btn btn-primary"
													data-toggle="tooltip" data-placement="top"
													title="로그인 후 이용가능합니다." role="button">예매</a>
											</c:if>
											<c:if test="${ userId != null }">
												<a href="#" class="btn btn-primary" role="button">예매</a>
											</c:if>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						data-slide="prev"> <!-- <span class="icon-prev"></span> --> <img
						src="/images/왼쪽.png" class="control">
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						data-slide="next"> <!--  <span class="icon-next"></span> --> <img
						src="/images/오른쪽.png" class="control">
					</a>
				</div>
			</div>
		</div>


		<div class="hot">
			<div class="container">
				<h4>HOT!한 개봉</h4>
			</div>
		</div>

		<div class="hot-movie">
			<div class="row">
				<div class="col-md-offset-3 col-md-3">

					<div id="myCarousel" class="carousel slide">
						<!-- Carousel items -->
						<div class="carousel-inner">
							<div class="item active">
								<img src="/images/오케이 마담.jpg" alt="슬라이드 1">
							</div>
							<div class="item">
								<img src="/images/다만 악에서 구하소서.jpg" alt="슬라이드 2">
							</div>
							<div class="item">
								<img src="/images/존윅.jpg" alt="슬라이드 3">
							</div>
							<div class="item">
								<img src="/images/반교.jpg" alt="슬라이드 4">
							</div>
							<div class="item">
								<img src="/images/시크릿 가든.jpg" alt="슬라이드 5">
							</div>
						</div>
						<!-- Controls buttons -->
						<div style="text-align: center; display: flex; width: 150px;">
							<input type="button" class="btn slide-one" value="오케이마담">
							<input type="button" class="btn slide-two" value="다만악에서구하소서">
							<input type="button" class="btn slide-three" value="존윅">
							<input type="button" class="btn slide-four" value="반교"> <input
								type="button" class="btn slide-five" value="시크릿가든">
						</div>


					</div>
				</div>

				<div class="col-md-offset-1 col-md-5">
					<div class="hot5">
						<div class="back">
							<h2>
								<img alt="d" src="/images/팝콘.png" id="pop">HOT한!!! 영화의 최신
								평점
							</h2>
						</div>
						<c:forEach items="${movieList}" var="movie">
							<tr>
								<p>${movie.movieName}&nbsp<img alt="d" src="/images/화살표.png"
										id="right-arrow">&nbsp${movie.score}
								</p>
							</tr>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- container-fluid  --> 






	<div class="tab-content">
	<div class="container">
		<div class="hot2" id="c">
				<h4>이달의 기대작</h4>
			</div>
			</div>
			<!-- container -->
		
		<!-- hot2 -->
<div class="container-fluid">
		<div class="hot2-movie">
			<div class="col-md-12" id="hot3">
				<p>기대되는 영화 순위</p>
			</div>
			<div class="col-md-12">
				<div class="hot3" id="myTab">

					<a href="#1" class="btn btn-tap" data-toggle="tab">1</a> <a
						href="#2" class="btn btn-tap" data-toggle="tab">2</a> <a href="#3"
						class="btn btn-tap" data-toggle="tab">3</a> <a href="#4"
						class="btn btn-tap" data-toggle="tab">4</a> <a href="#5"
						class="btn btn-tap" data-toggle="tab">5</a>
				</div>
				<!-- hot3 -->




				<div class="tab-content" id="john">
					<c:forEach var="movie" items="${ movieList }" varStatus="status">
						<div class="tab-pane" id="${ status.index + 1}">
							<div class="col-md-12" style="padding-top: 24px;">
								<div class="col-md-offset-3 col-md-3">
									<div class="snip1283">
										<img src="/images/${ movie.movieName }.jpg" alt="다만악">
										<figure>
											<figcaption>
												<h3>${ movie.movieName }</h3>
												<p>${ movie.information }</p>
											</figcaption>
										</figure>
									</div>
								</div>

								<div class="col-md-offset-1 col-md-5" style="padding-top: 40px;">
									<div class="hot4">
										<p>${ movie.movieName }</p>
									</div>
									<div class="col-md-12" id="like2">

										<p>감독:&nbsp${ movie.director }</p>
										<p>배우:&nbsp${ movie.cast }</p>
										<p>장르:&nbsp${ movie.genre
											}&nbsp/&nbsp기본:&nbsp${movie.grade}이상,&nbsp${movie.runtime }</p>
										<div>
											<c:if test="${ userId == null }">
												<button class="likeBtn2" name="likeBtn" id="ddd" onclick="needLogin()">
													<img alt="d" src="/images/빈하트.png"> <span>${ movie.likeCnt }</span>
												</button>
											</c:if>
											<c:if test="${ userId != null }">
												<c:if test="true">
													<input type="hidden" value="${ movie.movieName }">
													<button class="likeBtn" name="${ movie.movieName }" id="${ movie.movieName }">
														<img alt="d" src="/images/빈하트.png" class="img1">
														<span id="span">${ movie.likeCnt }</span>
													</button>
												</c:if>
											</c:if>
										</div>
									</div>
								</div>
							</div>
							<!-- col-md-12 -->
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="top">
			<div class="col-md-offset-11 col-md-1" style="text-align: end;">
			<a href="#fluid"><img src="/images/위로.png" title="위로가기"></a>
			</div>
		</div>
	</div>
	</div>
	
	<%-- footer 영역  --%>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />

	<script>
		$('.carousel').carousel()

		$('#myTab a:first').tab('show')
	</script>
	<script>
		// Cycles the carousel to a particular frame 
		$(".slide-one").click(function() {
			$("#myCarousel").carousel(0);
		});
		$(".slide-two").click(function() {
			$("#myCarousel").carousel(1);
		});
		$(".slide-three").click(function() {
			$("#myCarousel").carousel(2);
		});
		$(".slide-four").click(function() {
			$("#myCarousel").carousel(3);
		});
		$(".slide-five").click(function() {
			$("#myCarousel").carousel(4);
		});
	</script>
	<script>
		var movieNameOne = "${ movieList.get(0).movieName }";
		var movieNameTwo = "${ movieList.get(1).movieName }";
		var movieNameThree = "${ movieList.get(2).movieName }";
		var movieNameFour = "${ movieList.get(3).movieName }";
		var movieNameFive = "${ movieList.get(4).movieName }";

		var userId = '${ userId }';
		var likeBtn = $('button.likeBtn');
		var check = '${ check }';
		
		
		$(document).ready(function () {
			if (check == 1) {
				$('.likeBtn img').attr('src', '/images/찬하트.png');
			} else {
				$('.likeBtn img').attr('src', '/images/빈하트.png');
			}
		});

		function needLogin() {
			alert('해당 기능은 로그인 후에 이용하실수 있습니다.');
		}
	
		$('button.likeBtn').on('click', function () {
			var movieName = $(this).parent().find($('input')).val();
			var button = $(this);
			var span = $(this).html();
			var str = '';
			$(this).empty();
			console.log(span);
			
			console.log("movieName : " + movieName);
			$.ajax({
				url: '/likeCheck',
				method: 'GET',
				data: {movieName : movieName},
				success: function (map) {
					console.log(map);
					if (map.check == 1) {
						str += '<img alt="d" src="/images/빈하트.png" class="img1">'
						str += ' <span>' + map.likeCnt + '</span>'
						button.html(str);
					} else {
						str += '<img alt="d" src="/images/찬하트.png" class="img1">'
						str += ' <span>' + map.likeCnt + '</span>'
						button.html(str);
					}
				}
			});
		});
	</script>
	 <script>
        function popup(){
            var url = '/chat/chat';
            var name = "popup test";
            var option = "width = 500, height = 600, top = 100, left = 900"
            window.open(url, name, option);
        }
    </script>
	
</body>
</html>





