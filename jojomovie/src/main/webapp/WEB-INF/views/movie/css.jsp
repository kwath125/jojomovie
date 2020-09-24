<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

/* comingMovie, currentMovie, moviePresent */

.title {
	text-align: center;
    font-family: 'Do Hyeon', sans-serif;
    padding-bottom: 20px;
    font-size: 30px;
    font-weight: bold;
}

.categoryBtn {
  -webkit-border-radius: 5;
  -moz-border-radius: 5;
  border-radius: 5px;
  color: #ffffff;
  font-size: 16px;
  background: #b4d9c1;
  padding: 5px 10px 5px 10px;
  text-decoration: none;
  border: solid #ffffff 0px;
  font-family: 'Nanum Gothic', sans-serif;
  font-weight: 400;
}

.categoryBtn:hover {
  background: #84a891;
  text-decoration: none;
}

.searchTop {
	padding: 5px 35px 15px 30px;
}

.frm2 {
	text-align: end;
}

.searchbtn {
  -webkit-border-radius: 5;
  -moz-border-radius: 5;
  border-radius: 5px;
  font-family: Arial;
  color: #3fa194;
  font-size: 15px;
  background: #ffffff;
  padding: 5px 10px 5px 10px;
  border: solid #158a78 1px;
  text-decoration: none;
}

.searchbtn:hover {
  background: #c9f0e9;
  text-decoration: none;
}

.input_box {
	height: 33px;
	border: 1px solid #158a78;
	border-radius: 5px;
}
.category {
	height: 33px;
	border: 1px solid #158a78;
	font-family: Arial;
    color: #3fa194;
    border-radius: 5px;
}

div.thumbnailBox {
    border: none;
    box-shadow: none;
}

.caption {
	text-align: center;
}

.movieName {
	font-family: 'Noto Sans KR', sans-serif;
    font-size: 20px;
    font-weight: 500;
}

.caption > ul {
	list-style : none;
}

.thumbnailBtns {
	padding-top: 10px;
}

#page_control {
	text-align: center;
	padding-bottom: 100px;
	font-size: 18px;
	text-decoration: none;
}

a:link, a:visited, a:hover {
	text-decoration: none !important
}

.thumbnailBtn {
  -webkit-border-radius: 5;
  -moz-border-radius: 5;
  border-radius: 5px;
  font-family: Arial;
  color: #3fa194;
  font-size: 15px;
  background: #ffffff;
  padding: 5px 10px 5px 10px;
  border: solid #3fa194 2px;
  text-decoration: none;
}

.thumbnailBtn:hover {
  background: #b4d9c1;
  text-decoration: none;
  cursor: pointer;
  color: #3fa194;
}

/* movieInfo */
.movieInfo {
	margin-bottom:15px;
}

.movieScore1, .movieScore2, .movieContent1, .movieContent2, .movieContent3 {
	padding-bottom: 10px;
	font-family: 'Noto Sans KR', sans-serif;
	font-size: large;
	font-weight: 500;
	
}

.movieName {
	margin-top: 10px;
	margin-bottom: 20px;
	font-size: 30px;
	
}

.movieStory {
	padding: 50px 150px 200px 150px;
	line-height: 4rem;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 400;
	font-size: large;
	
}

.starR1{
    background: url("/images/star.png") no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url("/images/star.png") no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}

.cmtTitle {
	text-align: center;
    font-family: 'Do Hyeon', sans-serif;
    font-size: 35px;
    font-weight: 700;
}

.movieScore {
	margin-top: 20px;
	margin-bottom: 30px;
	text-align: center;
	font-family: 'Do Hyeon', sans-serif;
	font-size: 20px;
}

.reviewBox {
	height: 90px;
	margin-bottom: 60px;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
.starRev {
	float: left;
	width: 30%;
	height:88px;
	background: #F8F8F8;
	text-align: center;
	border-right: 1px solid #ccc;
}

.reviewWriteBox {
	float: left;
	width: 50%;
}

.cmtWriteBtn {
	float: left;
	width: 20%;
	height : 90px;
	border: none;
	margin: -1px -1px 0 0 ;
	background : #666;
	color: #fff;
	font-size: 15px;
}

.reviewBtn {
	float: right;
	background: #ffffff;
	background-color:#ffffff;
	border-radius:10px;
	border:1px solid #ffffff;
	display:inline-block;
	cursor:pointer;
	color:#ccc;
	font-size:13px;
	text-decoration:none;
}

.reviewBtn:hover {
	color:#b8b812;
	text-decoration:none;
}


#cmtContent {
	height: 88px;
	border: none;
	width: 100%;
    line-height: 1.5;
    box-sizing: border-box;
    padding: 13px 18px;
    resize: none;
    font-size: 14px;
    -webkit-border-radius: 4px;
}

ul {
	list-style: none;
}

.reviewContentList {
	padding-left:0;
}

.reviewContentList > li:first-child {
	border-color: #ccc;
}

.reviewContentList > li {
	position: relative;
    padding: 20px 0 15px 70px;
    border-top: 1px solid #eee;
    font-family: 'Noto Sans KR', sans-serif;
    
	
}

.reviewContentList > li .reviewImg {
	display: block;
    position: absolute;
    top: 15px;
    left: 10px;
    overflow: hidden;
    width: 42px;
    height: 42px;
    border-radius: 50%;
}

.reviewContentList > li .reviewImg img {
	width: 100%;
	border-radius: 50%;
}

.reviewContentList .topInfo {
	margin-bottom:15px;
}

.reviewContentList .topInfo .nameInfo {
	position: relative;
	padding-right: 5px;
    font-size: 14px;
	color: darkgray;
	vertical-align: middle;
}

.reviewContentList .topInfo .scoreInfo {
	font-size: 14px;
    margin-right: 11px;
    display: inline-block;
    vertical-align: middle;
}

.reviewContentList .reviewInfo {
	margin-bottom: 11px;
    font-size: 15px;

}

.reviewContentList .btnInfo {
    font-size: 11px;
    color: #666;
}

.starRevTop {
	margin-top: 15px;
}

.starRevBtm {
	margin-left: 100px;
	margin-top: 10px;
}

.gradeImg{
	width: 65px;
    height: 65px;
    margin-right: 10px;
}

span.movieLabel {
    font-size: 60%;
    margin-left: 10px;
    font-weight: 500;
    padding: 8px 8px 8px 8px;
}

span.movieTitle {
 font-family: 'Black Han Sans', sans-serif;
 font-size: 40px;
 
}

.tiketingBtn {
  -webkit-border-radius: 10;
  -moz-border-radius: 10;
  border-radius: 10px;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  background: #798F8C;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
  display: inline-block;
  margin-top: 20px;
}

.tiketingBtn:hover {
  background: #56706c;
  text-decoration: none; 
  color: #ffffff;
  cursor: pointer;
  
}

.movieDetail {
	padding-top: 15px;
	padding-bottom: 15px;
}

.starImg {
	width: 20px;
	height: 20px;
}

.emptyIdBox {
	text-align: center;
    margin-top: 30px;
    color: red;
    font-size: 15px;
    font-family: 'Noto Sans KR', sans-serif; 
}

.reviewListTop {
	font-size: 15px;
    font-family: 'Noto Sans KR', sans-serif;
}

.cmtNum {
	vertical-align: middle;
}

.btmInfo {
	font-size: 11px;
    color: darkgray;
}


</style>
</head>
<body>

</body>
</html>