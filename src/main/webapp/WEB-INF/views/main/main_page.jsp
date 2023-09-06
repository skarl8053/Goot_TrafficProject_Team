<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<!-- 개별 화면 content 크기를 조절하는 방법 -->
	<style>
		#content{
			height: 1600px;
		}
		.title-left{
			margin: 150px 0 0 470px;
		}
	</style>
	
	
	<%-- <link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/layout/main_css/search.css"> --%>
	<link rel="stylesheet" href="datepicker.css">
	<script src="${pageContext.request.contextPath}/resources/layout/main_js/search.js"></script>
	<!-- datepicker -->
	<script src="datepicker.js"></script>
	<link rel="stylesheet"
		href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath}/resources/layout/main_css/slide-css/slick.css" />
	<link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath}/resources/layout/main_css/slide-css/slick-theme.css" />
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/layout/main_css/slide-css/slick-main.css">
	<script src="${pageContext.request.contextPath}/resources/layout/main_js/slide-js/slick.js"></script>
	<script src="${pageContext.request.contextPath}/resources/layout/main_js/slide-js/slick-main.js"></script>
	
	<style>
	
		.title-left{
			text-align: left;
		}
		
		.date-guest-search {
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    text-align: center;
		}
		
		.search-box {
		    padding: 30px;
		    align-items: center;
		    margin-bottom: 20px;  
		    border-radius: 20px;
		    box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
		    justify-content: space-around;
		    margin: 10px auto;
		    width: 800px; 
		}
		
		button {
		    background-color: #007bff;
		    color: #fff;
		    border: none;
		    cursor: pointer;
		    padding: 10px 20px;
		}
		
		.search_button {
		    border-radius: 10px;
		    padding: 10px 50px;
		    border-radius: 10px;
		    font-size: 14px;
		}
		
		.search-box #search_field {
			display: flex;
		    margin: 5px auto;
		}
		
		.search-box input[type="text"]{
		    /* width: 200px; */
		    border-style: none;
		    text-align: left;
		    font-size: 18px;
		}
		
		.search-box input[type="text"],
		.search-box input[type="date"],
		.search-box select {
		    margin: 5px;
		    padding: 10px;
		    /* display: flex; */
		}
		
		.person {
		    margin: 5px;
		}
		
		.search-box input[type="date"],
		.search-box .person {
		    /* flex-wrap: wrap; */
		}
		
		/* 드롭다운 버튼 스타일 */
		.dropdown-btn {
		    /* background-color: #fff; */
		    color: black;
		    background-color: #fff;
		    border: 1px solid grey;
		    cursor: pointer;
		    padding: 10px 30px;
		    border-radius: 10px;
		    font-size: 14px;
		    text-align: left;
		}
		
		/* 드롭다운 콘텐츠 스타일 - 기본적으로 숨김 */
		.dropdown-content {
		    display: none;
		    position: absolute;
		    background-color: #f9f9f9;
		    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		    z-index: 1;
		}
		
		/* 드롭다운 콘텐츠 내의 링크 스타일 */
		.dropdown-content a {
		    display: block;
		    padding: 10px;
		    text-decoration: none;
		    color: #333;   
		}
		
		/* 드롭다운 콘텐츠에 마우스를 올렸을 때 스타일 */
		.dropdown-content a:hover {
		    background-color: #f9f9f9;  
		}
		
		/* 드롭다운 콘텐츠 표시 - 버튼에 마우스를 올렸을 때 */
		.dropdown:hover .dropdown-content {
		    display: block;
		    display: flex;
		    flex-direction: column;
		    align-items: flex-start;
		}
		
		.dropdown-content button {
		    padding: 10px;
		    align-items: center;
		    align-items: flex-end;
		}
		
		.person {
		    margin: 5px;
		    display: flex;
		    align-items: center;
		    justify-content: space-between; /* 왼쪽과 오른쪽 끝으로 정렬 */
		}
		
		.person .count {
		    margin: 0 5px;
		}
	
		.select-wrapper{
		
			width: 740px;
			display: flex;
		    justify-content: center;
		    align-items: center;
		    text-align: center;
		}
		.btn1{
			width: 100px;
			height: 30px;
			margin-top: 10px;
			margin-bottom: 10px;
			margin-right: 10px;
			font-size: 20px;
			background-color: white;
			color: rgb(1, 19, 67);
			border: none;
			padding-top: 3px;
			cursor: pointer;
			text-align: center;
		}
		
		.btn1:hover{
			height: 30px;
			color: rgb(235, 208, 28);
			background-color: rgb(1, 19, 67);
			border-radius: 5px;
		}
		
		.btn1:active{
			height: 30px;
			color: rgb(235, 208, 28);
			background-color: rgb(1, 19, 67);
			border-radius: 5px;
			box-shadow: 0px 0px 10px #000;
		}
		.clicked_btn1, .clicked_btn2 {
			height: 30px;
			color: rgb(235, 208, 28);
			background-color: rgb(1, 19, 67);
			border-radius: 5px;
		}
		
	</style>
	
	
</head>

<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">

	<!-- 메세지 -->
	<c:if test="${not empty msg}">
			
		<script>
			alert("${msg}");
			location.replace("main");
		</script>
		
	</c:if>
	
	<script>
	
		window.history.forward();
		
		function noBack(){
			window.history.forward();
		}
	
		// 남기문 ( 숙소 선택시 지역 선택할 수 있도록 변경)
		
		///////////////////////////////////////////////////////////////////////////////////////
		// 처음화면 - 숙소검색 - 선택한 지역 value 값을 가져옴..
		var locationNumber = new Array();

		$(document).ready(
			function() {
				
				// 테마
				$('.btn1').each(function(index) {
					$(this).attr('btn1-index', index);
				}).click(
						function() {
							var index = $(this).attr('btn1-index');
							
							// 해당 테마 버튼의 value값 (숫자 가져옴)
							var selectedButtonValue = $('.btn1[btn1-index=' + index + ']').attr('value');
							
							if(selectedButtonValue != locationNumber[0]){
								locationNumber = new Array();
								locationNumber.push(selectedButtonValue);
							}
							else{
								locationNumber = new Array();
								locationNumber.push(-1);
							}
							
							// 버튼 상태 변경 (버튼 토글)
							$('.btn1[btn1-index=' + index + ']').toggleClass('clicked_btn1');
							$('.btn1[btn1-index!=' + index + ']').removeClass('clicked_btn1');
							
							console.log("locationNumber : " + locationNumber);
						});
			});
		
		$.datepicker.setDefaults({
			dateFormat : 'yy년 mm월 dd일',
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월',
					'10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			showMonthAfterYear : true,
			yearSuffix : '년'
		});
	
		//	웹 페이지가 완전히 로드된 후에 다음 작업을 수행
		$(function() {
			$("#datepicker1").datepicker();
			// 조회기간
			$("#datepicker1,#datepicker2").datepicker();
		});
		
		function searchStay(){
			
			// 메인에서 지역, 체크인, 체크아웃, 인원수 입력 후 검색 버튼 누르면 실행
			
			var checkInDate = document.getElementById("datepicker1").value;
			var checkOutDate = document.getElementById("datepicker2").value;
			
			// 인원수
	        var personCount = document.getElementById("personCount").innerHTML;
			
			if(locationNumber[0] == -1){
				alert("검색할 지역을 선택해주세요");
				return false;
			}
			
			if(checkInDate.length < 1){
				alert("체크인 일자를 선택해주세요");
				return false;
			}
			
			if(checkOutDate.length < 1){
				alert("체크아웃 일자를 선택해주세요");
				return false;
			}
			
			// 숙소 페이지로 이동
			
		}
	
		///////////////////////////////////////////////////////////////////////////////////////
		
	</script>
	
	<!-- 숙소 검색 -->
	<h2>숙소 검색</h2>
	<div class="search-box">
		<!-- <input type="text" id="search_field" style="width: 740px;"
			placeholder="여행지를 검색하세요."> -->
		<div class="select-wrapper">
			<table class="select">
				<tr>
					<td>
						<button type="button" class="btn1" name="tema" value="1">서울</button>
						<button type="button" class="btn1" name="tema" value="2" >경기</button>
						<button type="button" class="btn1" name="tema" value="3">인천</button>
						<button type="button" class="btn1" name="tema" value="4">제주</button>
					</td>
				</tr>
				<tr>
					<td>
						<button type="button" class="btn1" name="tema" value="5">전라</button>
						<button type="button" class="btn1" name="tema" value="6">경상</button>
						<button type="button" class="btn1" name="tema" value="7">충청</button>
						<button type="button" class="btn1" name="tema" value="8">강원</button>
					</td>
				</tr>
			</table>
		</div>
		<br /><br />
		<div class="date-guest-search">
			<input type="text" id="datepicker1" placeholder="체크인"> <input
				type="text" id="datepicker2" placeholder="체크아웃">
			<div class="dropdown">
				<button class="dropdown-btn">인원 수</button>
				<button class="search_button" onclick="return searchStay();">검색</button>
				<div class="dropdown-content">
					<div class="person">
						<div class="button-container">
							<span>성인</span>
							<button class="decrement-btn">-</button>
							<span class="count" id="personCount">1</span>
							<button class="increment-btn">+</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 이벤트 슬라이드 -->
	<h2 class="title-left">이벤트</h2>
	<div class="event-slide">
		<div class="regular slider"></div>
	</div>
	<!-- 핫딜 슬라이드 -->
	<h2 class="title-left">${ sessionScope.m_name } 님에게 추천하는 숙소</h2>
	<div class="hot-deal">
		<div class="hdeal slider"></div>
	</div>
	<br />
	
</body>
</html>