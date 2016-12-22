<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">


$(document).ready(
		
	function(){
	
		$("#viewHot").click(function(){
			
			 var target="/air/viewHot.do";
			$("#frame").load(target);
			$("#rank").load("/air/Search/nulljsp.jsp");
			 event.preventDefault();
		 });
		$("#viewStar").click(function(){
			
			 var target="/air/viewStar.do";
			$("#frame").load(target);
			 event.preventDefault();
		 });
		$("#veryveryvery").click(function(){
			popup_win1();
			 //var target="/air/viewStar.do";
			//$("#frame").load(target);
			 //event.preventDefault();
		 });	 
	}		
);
function loadDestination(target){
	alert("loadDestinationl!!:target:"+target);
	$("#frame").load(target);
	 event.preventDefault();
}
</script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">

function popup_win1() { //크기 width400 height300 팝업창
	
window.open("/air/getUserInfo.do", "popup", "width=600, height=1000, scrollbars=yes, toolbar=no, menubar=no, location=no");

}

</script>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Hover Effect Ideas | Set 1</title>
		<meta name="description" content="Hover Effect Ideas: Inspiration for subtle hover effects" />
		<meta name="keywords" content="hover effect, inspiration, grid, thumbnail, transition, subtle, web design" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="/air/sample/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="/air/sample/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="/air/sample/css/set1.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
		
		<div class="container">
			<!-- Top Navigation -->
			
			
			<div class="content">
				<h2>추천 여행지</h2>
				<div class="grid">
					<figure class="effect-lily" id="viewHot">
						<img src="/air/sample/img/2.jpg" alt="img12"/>
						<figcaption>
							<div>
								<h2>인기 <span>여행지</span></h2>
								<p>지금 핫한 인기여행지는 오디이이이?
								
								
								</p>
							</div>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-lily" id="veryveryvery">
						<img src="/air/sample/img/1.jpg" alt="img12"/>
						<figcaption>
							<div>
								<h2>맞춤형<span>여행지</span></h2>
								<p>너에게 딱! 맞는 여행지는 어디이이이이이이?</p>
							
							</div>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
			</div>
			
			<header class="codrops-header">
				
				<h1>김수진메롱 <span>수진이에게 메롱이라 전해라~~~~</span></h1>
				<nav class="codrops-demos">
				<c:choose>
	<c:when test="${dest==null}">
	<!-- <input type="button" class="myButton" value="자신의 정보입력" onclick="popup_win1()">	-->
	</c:when>
	
	<c:otherwise>
	<c:choose>
	<c:when test="${age=='10'}">
	<font size="5">10</font>대
	</c:when>
	<c:when test="${age=='20'}">
	<font size="5">20</font>대 초반
	</c:when>
	<c:when test="${age=='25'}">
	<font size="5">20</font>대 중반
	</c:when>
	<c:when test="${age=='29'}">
	<font size="5">20</font>대 후반
	</c:when>
	<c:when test="${age=='30'}">
	<font size="5">30</font>대
	</c:when>
	<c:when test="${age=='40'}">
	<font size="5">40</font>대
	</c:when>
	<c:when test="${age=='50'}">
	<font size="5">50</font>대
	</c:when>
	</c:choose>
	<c:choose>
	<c:when test="${gender=='man'}">
	<font size="5"><b>남성</b></font>이<br> 가장 많이 여행하는 곳은
	</c:when>
	<c:when test="${gender=='woman'}">
	<font size="5"><b>여성</b></font>이<br> 가장 많이 여행하는 곳은
	</c:when>
	</c:choose>

	<c:choose>
	<c:when test="${dest=='991'}">
	<font size="5"><b> 아시아</b></font>입니다.
	</c:when>
	<c:when test="${dest=='992'}">
	<font size="5"><b> 유럽</b></font>입니다.
	</c:when>
	<c:when test="${dest=='993'}">
	<font size="5"><b> 북아메리카</b></font>입니다.
	</c:when>
	<c:when test="${dest=='994'}">
	<font size="5"><b> 남아메리카</b></font>입니다.
	</c:when>
	<c:when test="${dest=='995'}">
	<font size="5"><b> 오세아니아</b></font>입니다.
	</c:when>
	<c:when test="${dest=='996'}">
	<font size="5"><b> 아프리카</b></font>입니다.
	</c:when>
	</c:choose>
	<br>
	가장 인기있는 도시는 <br>
	<font size="5"><b>${country},${city}</b></font>입니다.
	
	</c:otherwise>
	
</c:choose>
				</nav>
			</header>
		</div>
	

	</body>
</html>