<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(
	function(){
		
		$("a").click(function(){
			
			alert("클릭했음요");
			var target=$(this).attr("href");
			$("#frame").load(target);
			event.preventDefault();
		});
		$("#button1").click(function(){
			
			 var target="/air/viewHot.do";
			$("#frame").load(target);
			 event.preventDefault();
		 });
		$("#button2").click(function(){
			
			 var target="/air/viewStar.do";
			$("#frame").load(target);
			 event.preventDefault();
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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

  <style>
.left-box {

  float: left;
  width: 20%;
  padding:1px;
  
}
.right-box {

  float: right;
    width: 50%;
    padding-left:200px;
     padding-top:1px;
    

}
</style>
  
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
	
	</c:otherwise>
	
</c:choose>

<p>

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
<input type="button" id="button1" class="myButton" value="HOT" >
<input type="button" id="button2" class="myButton" value="VIEWSTAR">		

 </form>
 
 </div>
 
 <div class='right-box'>
 
 <h2>블로그 여행후기 검색</h2>
<h1>국가검색</h1>
	<form action="/air/getBlogList.do" method="post">
		검색어<input type="text"  name="keyword"/>
		<input type="submit" class="myButton" value="검색"/>
		  	</form>
	
	<c:choose>
		<c:when test="${ITEM!=null}">
			<table align="center" border="1">
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>링크</td>
					<td>설명</td>
					<td>블로거이름</td>
					<td>블로그링크</td>
							
				</tr>
				
				<c:forEach items="${ITEM}" var="item" 
				 varStatus="i">
				 <tr>
				 	<td>${i.count}</td>
				 	<td>${item.title}</td>
				 	<td><a href="${item.link}">자세히보기</a></td>
					 	
				 	<td>${item.description}</td>
				 	<td>
		 	
				 	${item.bloggername}
				 	
				 	</td>
				 	<td>${item.bloggerlink}</td>
				 	
				 		
				 </tr>	
				 </c:forEach>	
				 
				 	
			</table>
		</c:when>
		<c:otherwise>
			
		</c:otherwise>
	</c:choose>



	<div><a href="#" onClick="window.open('http://www.hanatour.com');return false"><img src="/air/photo/hana.jpg" ></a></div>
<div class="fb-like" style="top:575px;   position : absolute; margin:0px; padding:0px;" data-href="https://www.facebook.com/HanaTour.fb/?fref=ts" data-width="269px" data-layout="standard" data-action="like"  data-size="small" data-show-faces="true" data-share="true"></div>
 
 </div>
 
</body>
</html>