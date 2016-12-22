
    <%
response.setHeader("cache-control","no-cache"); 
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		
	
		$("a").click(function(){
			
			//alert("클릭했음요");
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
				<li class="current_page_item" ><a href="/air/start.do" >홈으로</a></li>				
				<li><a href="/air/main.do">추천 여행지</a></li>
				<li><a href="/air/viewReviewList.do">리뷰 </a></li>
				<li><a href="/air/viewExchangeRate.do">환율보기</a></li>
				<li><a href="/air/getCountryBasicListForm.do">나라정보검색</a></li>
				<li><a href="/air/viewReviewListAdmin.do">관리자 리뷰보기</a></li>
				<li><a href="/air/getCountrySafetyListForm.do">국가안전정보검색</a></li>					
				<li><a href="/air/getNewsList.do">국제뉴스</a></li>		
				
				
			</ul>
		</div>
		<!-- end #menu --> 
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="#">공 중 분 해</a></h1>
				<p>다슬이최고</a></p>
			</div>
		</div>
	</div>
	<div id="frame" >
		
	
	</div>
	</div>
	
</div>
 	
 	
 	
 <!-- 	<frameset rows="40,*" framespacing="0" border="0" frameborder="0"> 
 	<frame src="top.jsp" name="menu" frameborder="no" border="0" framespacing="0" scrolling="no" marginwidth="10" marginheight="0"> 
 	<frame src="intro.jsp" name="main" scrolling="auto" marginwidth="10" marginheight="10"> </frameset>
 	 -->
 	
</html>