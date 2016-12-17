
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.ArrayList" %>
<%@ page import="bitcom.air.user. bestlist_crawler" %>    
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행 어디까지 가봤니?</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Raleway:400,200,500,600,700,800,300" rel="stylesheet" />
<link href="/air/css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="/air/css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(
	function(){
		$("#frame").load("/air/start.do");
		

		$("#myButton").click(function(){
					
					$("#rank").load("/air/Search/nulljsp.jsp");
					 event.preventDefault();
				 });

	
		$("a").click(function(){
			
			
			var target=$(this).attr("href");
			$("#frame").load(target);
			event.preventDefault();
		});
	}		
);
</script>
</head>
<body>
<div id="wrapper">
	<div id="menu-wrapper">
		<div id="menu" class="container">
			<ul>
				<li><a href="/air/start.do">홈으로</a></li>				
				<li><a href="/air/main.do">추천 여행지</a></li>
				<li><a href="/air/viewReviewList.do">리뷰 </a></li>		
				<li><a href="/air/total.do">토탈 여행정보</a></li>
				<li><a href="/air/viewReviewListAdmin.do">관리자 리뷰관리</a></li>
				
				
			</ul>
		</div>
		<!-- end #menu --> 
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="#">여행 어디까지 가봤니?</a></h1>
				<p>made by 공 중 분 해</p>
			</div>
		</div>
	</div>
	<div style="border:1px solidgold; float:left;width:60%; padding-left:170px; margin:0px;" id="frame" class='left-box' class="slider-pro"  class='right-box' data-role="content"  >
		<!-- 클레스 정보 확인 요망 -->
	
	</div >
	
	<%
    ArrayList<String> topN=bestlist_crawler.top();
    request.setAttribute("top",topN);
    %>
     <div style="border:1px solidgold; float:right;width:20%;  padding:0px; margin:0px;" class='right-box' id="rank" class="slider-pro"  class='right-box' data-role="content">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		<table class="type01">
			<tr><td><h4>실시간 인기 여행지</h4> </td><td><input type="button" id="myButton" class="myButton" value="표 숨기기" onclick="button1_click()"/></td></tr>
			<tr>
					<th>순위</th><th>도시</th>
			</tr>
			
					<c:forEach items="${top}" varStatus="status"  var="top">
			 <tr>
			  		<td>${status.count}</td>
					<td>${top}</td>
			 </tr>
					</c:forEach>
		</table>
</div> 
	
	</div>
	
</div>
 	
 	
 	
 <!-- 	<frameset rows="40,*" framespacing="0" border="0" frameborder="0"> 
 	<frame src="top.jsp" name="menu" frameborder="no" border="0" framespacing="0" scrolling="no" marginwidth="10" marginheight="0"> 
 	<frame src="intro.jsp" name="main" scrolling="auto" marginwidth="10" marginheight="10"> </frameset>
 	 -->
 	
</html>