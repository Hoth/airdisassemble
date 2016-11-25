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
		$("a").click(
			function(event){
				alert("클릭");
				alert($("#frame"));
				alert($(this).attr("href"));
				var target=$(this).attr("href");
				$("#frame").load(target);
				event.preventDefault();
			}		
		);
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
				<li><a href="#">이번</a></li>
				<li><a href="#">삼번</a></li>
				<li><a href="#">Portfolio</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
		<!-- end #menu --> 
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="#">공 중 분 해</a></h1>
				<p>Design by J.W.Cho</a></p>
			</div>
		</div>
	</div>
	</div>
	<div id="frame" >
		
	
	</div>
</div>
 	
 	
 	
 <!-- 	<frameset rows="40,*" framespacing="0" border="0" frameborder="0"> 
 	<frame src="top.jsp" name="menu" frameborder="no" border="0" framespacing="0" scrolling="no" marginwidth="10" marginheight="0"> 
 	<frame src="intro.jsp" name="main" scrolling="auto" marginwidth="10" marginheight="10"> </frameset>
 	 -->
 	
</html>