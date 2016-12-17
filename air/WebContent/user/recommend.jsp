<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
</script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">




function popup_win1() { //크기 width400 height300 팝업창
	

window.open("/air/UserInfoForm.jsp", "popup", "width=600, height=1000, scrollbars=yes, toolbar=no, menubar=no, location=no");

}

</script>
<html>
<head>

   <link rel="stylesheet" type="text/css" href="/air/newintrocss/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="/air/newintrocss/css/style4.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">


</script>
	<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style type="text/css">
<%--body {
	margin: 0px;
	padding: 0px;
	background: #ffdde5;	
	font-family: 'Raleway', sans-serif;
	font-size: 11pt;
	font-weight: 400;
	color: black;
}--%>

@import url('/air/photo');
<%--body {   font-family: Helvetica, san-serif;

 background: -webkit-linear-gradient(90deg, #00aaee 10%, #DD2476 90%); /* Chrome 10+, Saf5.1+ */
  background:    -moz-linear-gradient(90deg, #00aaee 10%, #DD2476 90%); /* FF3.6+ */
  background:     -ms-linear-gradient(90deg, #00aaee 10%, #DD2476 90%); /* IE10 */
  background:      -o-linear-gradient(90deg, #00aaee 10%, #DD2476 90%); /* Opera 11.10+ */
  background:         linear-gradient(90deg, #00aaee 10%, #DD2476 90%); /* W3C */ }
.transition { transition: .3s cubic-bezier(.3, 0, 0, 1.3) }

 background:#ffdde5;
 }--%>
 
.card {
    background-color: #fff;
    bottom: 0;
    box-shadow: 0px 0px 10px 2px rgba(0,0,0,0.3);
  -webkit-box-shadow: 0px 0px 10px 2px rgba(0,0,0,0.3);
  -moz-box-shadow: 0px 0px 10px 2px rgba(0,0,0,0.3);
    height: 300px;
    left: 0;
    margin: auto;
    overflow: hidden;
    position: absolute;
  
    width: 300px;
}
.card:hover {
    height: 450px;
    width: 300px;
}
.card:hover .cta-container {
    display: inline;
    margin-top: 380px;
}
.card:hover .card_circle {
    background-size: cover;
    border-radius: 0;
    margin-top: -130px;
}
.card:hover .card_circle1 {
    background-size: cover;
    border-radius: 0;
    margin-top: -130px;
}
.card:hover .card_circle2 {
    background-size: cover;
    border-radius: 0;
    margin-top: -130px;
}
.card:hover h2 {
    background: #3487f7;
    color: #fff;
    margin-top: 100px;
    padding: 5px;
}
.card:hover h2 small { color: #fff }
.card:hover p { margin-top: 300px }
.card_circle {
    background: url('/air/photo/998.JPG') no-repeat center bottom;
    background-color: #3487f7;
    background-size: 70%;
    border-radius: 50%;
    height: 400px;
    margin-left: -75px;
    margin-top: -200px;
    position: absolute;
    width: 450px;
}
.card_circle1 {
    background: url('/air/photo/999.JPG') no-repeat center bottom;
    background-color: #3487f7;
    background-size: 70%;
    
    
    border-radius: 50%;
    height: 400px;
    margin-left: -75px;
    margin-top: -200px;
    position: absolute;
    width: 450px;
}
.card_circle2 {
    background: url('/air/photo/9972.JPG') no-repeat center bottom;
    background-color: #3487f7;
    background-size: 70%;
    border-radius: 50%;
    height: 400px;
    margin-left: -75px;
    margin-top: -200px;
    position: absolute;
    width: 450px;
}
h2 {
    color: #3487f7;
    font-family: 'Raleway', sans-serif;
    font-size: 24px;
    font-weight: 200;
    margin-top: 150px;
    position: absolute;
    text-align: center;
    width: 100%;
    z-index: 9999;
}

.p {
    color: rgba(0,0,0,.6);
    font-family: 'Raleway', sans-serif;
    font-size: 100%;
    font-weight: normal;
    margin-top: 200px;
    position: absolute;
    text-align: center;
    z-index: 9999;
}
.cta-container {
    display: none;
    margin-top: 320px;
    position: absolute;
    text-align: center;
    width: 100%;
    z-index: 9999;
}
.cta {
    -moz-border-radius: 2px;
    -moz-transition: 0.2s ease-out;
    -ms-transition: 0.2s ease-out;
    -o-transition: 0.2s ease-out;
    -webkit-border-radius: 2px;
    -webkit-transition: 0.2s ease-out;
    background-clip: padding-box;
    border: 2px solid #3487f7;
    border-radius: 2px;
    color: #3487f7;
    display: inline-block;
    font-family: 'Raleway', sans-serif;
    font-size: 17px;
    font-weight: 400;
    height: 36px;
    letter-spacing: 0.5px;
    line-height: 36px;
    margin-bottom: 15px;
    padding: 0 2rem;
    text-decoration: none;
    text-transform: uppercase;
    transition: 0.2s ease-out;
}
.cta:hover {
    background-color: #3487f7;
    box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    color: #fff;
    -moz-box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    -webkit-box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.left{
  left: 300;
  top: 300;
}

.right{
  left: 700;
  top: 300;
}

.center{
  left: 1100;
  top: 300;
}

</style>

</head>
<body>

  
<div class='left-box'>


<c:choose>
	<c:when test="${dest==null}">
	<input type="button" class="myButton" value="자신의 정보입력" onclick="popup_win1()">	
	</c:when>
	
	<c:otherwise>
	
	${age}세 
	<c:choose>
	<c:when test="${gender=='man'}">
	<h2>남성</h2>이 가장 많이 여행하는 곳은
	</c:when>
	<c:when test="${gender=='woman'}">
	<h2>여성</h2>이 가장 많이 여행하는 곳은
	</c:when>
	</c:choose>

	<c:choose>
	<c:when test="${dest=='991'}">
	<h2>아시아</h2>입니다.
	</c:when>
	<c:when test="${dest=='992'}">
	<h2>유럽</h2>입니다.
	</c:when>
	<c:when test="${dest=='993'}">
	<h2>북아메리카</h2>입니다.
	</c:when>
	<c:when test="${dest=='994'}">
	<h2>남아메리카</h2>입니다.
	</c:when>
	<c:when test="${dest=='995'}">
	<h2>오세아니아</h2>입니다.
	</c:when>
	<c:when test="${dest=='996'}">
	<h2>아프리카</h2>입니다.
	</c:when>
	</c:choose>
	가장 인기있는 도시 <h2>${country},${city}</h2> 
	
	</c:otherwise>
	
</c:choose>

<p/>

<!-- <a href="/air/generateDestination.do">생성해보자</a> -->
<form action="/air/generateDestination.do" method="post">
 <input type="hidden" name="age" id="age"/><p>
 <input type="hidden" name="gender" id="gender" /><p>
 <input type="hidden" name="day" id="day"/><p>
 <input type="hidden" name="cost" id="cost"/><p>
 <input type="hidden" name="whom" id="whom"/><p>
 <input type="hidden" name="season" id="season" /><p>

 <br/>
 <p/>

		

 </form>
 
 </div>
 
 <div>
  <div class="card transition left">
    <h2 class="transition">인기 여행지</h2>
  <p class="p"> 인기여행지가 궁금하지 않으신가여 흐흫흐흐흐흐흐.</p>
  <div class="cta-container transition"><span class="cta"  id="viewHot"> HOT HOT HOT!</a></div>
  <div class="card_circle1 transition"></div>
</div>

<div>
 
 <div class="card transition center">
 <h2 class="transition">자신의 정보입력</h2>
  <p class="p">자신의 정보를 입력받아 최적의 여행지를 추천해드립니다.</p>
  <div class="cta-container transition"><span class="cta"  id="veryveryvery">자신의 정보입력</a></div>
  <div class="card_circle transition"></div>
</div>

<div>
 
 <div class="card transition right">
  <h2 class="transition">별점 인기순</h2>
  <p class="p">여행을 다녀온 고객들의 평가를 기준으로 별점이 높은 지역을 보여드립니당</p>
  <div class="cta-container transition"><span class="cta"  id="viewStar"> viewStar </span></div>
  <div class="card_circle2 transition"></div>
  
  
  
</div>




</body>
</html>