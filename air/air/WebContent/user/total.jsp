<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
	<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(
		
	function(){
		
		$("#viewExchangeRate").click(function(){
			alert("클릭1");	
			 var target="/air/viewExchangeRate.do";
			$("#frame").load(target);
			$("#rank").load("/air/Search/nulljsp.jsp");
			 event.preventDefault();
		 });
		$("#getCountryBasicListForm").click(function(){
			alert("클릭2");
			 var target="/air/getCountryBasicListForm.do";
			$("#frame").load(target);
			 event.preventDefault();
		 });
		$("#getCountrySafetyListForm").click(function(){
			alert("클릭3");
			 var target="/air/getCountrySafetyListForm.do";
			$("#frame").load(target);
			 event.preventDefault();
		 });
		$("#getNewsList").click(function(){
			alert("클릭4");
			 var target="/air/getNewsList.do";
			$("#frame").load(target);
			 event.preventDefault();
		 });
	 
	}		
);
</script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">

function popup_win1() { //크기 width400 height300 팝업창
	
window.open("/air/user/UserInfoForm.jsp", "popup", "width=600, height=1000, scrollbars=yes, toolbar=no, menubar=no, location=no");

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
					<figure class="effect-layla" id="viewExchangeRate">
						<img src="/air/sample/img/2.jpg" alt="img12"/>
						<figcaption>
							<div>
								<h2>환율 <span>정보보기</span></h2>
								<p>지금 핫한 인기여행지는 오디이이이?</p>
							</div>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					
					<figure class="effect-layla" id="getCountryBasicListForm">
						<img src="/air/sample/img/3.jpg" alt="img12"/>
						<figcaption>
							<div>
								<h2>나라<span>정보검색</span></h2>
								<p>너에게 딱! 맞는 여행지는 어디이이이이이이?</p>
							</div>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
			<br/>
				<div class="grid" >
					<figure class="effect-layla" id="getCountrySafetyListForm">
						<img src="/air/sample/img/2.jpg" alt="img12"/>
						<figcaption>
							<div>
								<h2>국가<span>안전 정보 검색</span></h2>
								<p>지금 핫한 인기여행지는 오디이이이?</p>
							</div>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					
					
					<figure class="effect-layla" id="getNewsList">
						<img src="/air/sample/img/3.jpg" alt="img12"/>
						<figcaption>
							<div>
								<h2>국제<span>뉴스</span></h2>
								<p>너에게 딱! 맞는 여행지는 어디이이이이이이?</p>
							</div>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					
				</div>
			</div>
		</div>
	</body>
</html>