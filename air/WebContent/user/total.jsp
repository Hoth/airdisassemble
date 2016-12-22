<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
	<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(
		
	function(){
	
		$("#nation").click(function(){
			
			 var target="/air/getCountryBasicListForm.do";
			$("#frame").load(target);
			 event.preventDefault();
		 });
		$("#exchange").click(function(){
			
			 var target="/air/viewExchangeRate.do";
			$("#frame").load(target);
			 event.preventDefault();
		 });
		$("#news").click(function(){
			
			 var target="/air/getNewsList.do";
			$("#frame").load(target);
			 event.preventDefault();
		 });
		$("#safety").click(function(){
			 var target="/air/getCountrySafetyListForm.do";
				$("#frame").load(target);
				 event.preventDefault();
			 
			
			 //var target="/air/viewStar.do";
			//$("#frame").load(target);
			 //event.preventDefault();
		 });	 
	}		
);
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
			<link rel="stylesheet" type="text/css" href="/air/newintrocss/css/demo.css" />
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
			
			<header class="codrops-header">
				<span>머라머라</span>
				
			</header>
			<div class="content">
				<h2>머라적죠?</h2>
				<div class="grid">
					<figure class="effect-lily" id="exchange">
						<img src="/air/sample/img/1.jpg" alt="img1"/>
						<figcaption>
							<div>
								<h2>환율정보</span></h2>
								<p>실시간 환율을 확인하세요!</p>
							</div>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-lily" id="nation">
						<img src="/air/sample/img/1.jpg" alt="img1"/>
						<figcaption>
							<div>
								<h2>나라정보</h2>
								<p>뭐라고좀 적어줘</p>
							</div>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
				<div class="grid">
					<figure class="effect-lily" id="safety">
						<img src="/air/sample/img/1.jpg" alt="img1"/>
						<figcaption>
							<div>
								<h2>국가 안전 정보검색 </span></h2>
								<p>국정!</p>
							</div>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-lily" id="news">
						<img src="/air/sample/img/1.jpg" alt="img1"/>
						<figcaption>
							<div>
								<h2>국가뉴스</h2>
								<p>자신의 정보를 입력하세요</p>
							</div>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
			</div>
			</div>
	</body>
</html>