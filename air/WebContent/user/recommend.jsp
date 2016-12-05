<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(
	function(){
		
		$("a").click(function(){
			
			//alert("클릭했음요");
			var target=$(this).attr("href");
			$("#frame").load(target);
			event.preventDefault();
		});
			
	}		
);
</script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">




function popup_win1() { //크기 width400 height300 팝업창
	

window.open("/air/UserInfoForm.jsp", "popup", "width=300, height=300");
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
  width: 3%;
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
<input type="button" value="자신의 정보입력" onclick="popup_win1()">

<c:choose>
	<c:when test="${dest==null}">
		값이 없음.	
	</c:when>
	
	<c:otherwise>
	${dest} 입니다
	</c:otherwise>
</c:choose>




${dest}


<p>
<a href="/air/viewHot.do">핫!</a><p>
<a href="/air/viewStar.do">스톼~</a><p>
<!-- <a href="/air/generateDestination.do">생성해보자</a> -->
<form action="/air/generateDestination.do" method="post">
 <input type="hidden" name="age" id="age"/><p>
 <input type="hidden" name="gender" id="gender" /><p>
 <input type="hidden" name="day" id="day"/><p>
 <input type="hidden" name="cost" id="cost"/><p>
 <input type="hidden" name="whom" id="whom"/><p>
 <input type="hidden" name="season" id="season" /><p>
 <input type="submit" value="조회!">
 </form>
 </div>
 
 <div class='right-box'>
 
 <h2>블로그 여행후기 검색</h2>
<h1>국가검색</h1>
	<form action="/air/getBlogList.do" method="post">
		검색어<input type="text"  name="keyword"/>
		<input type="submit"  value="검색"/>
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



	<div><a href="#" onClick="window.open('http://www.hanatour.com');return false"><img src="img/hana.jpg" ></a></div>
<div class="fb-like" style="top:575px;   position : absolute; margin:0px; padding:0px;" data-href="https://www.facebook.com/HanaTour.fb/?fref=ts" data-width="269px" data-layout="standard" data-action="like"  data-size="small" data-show-faces="true" data-share="true"></div>
 
 </div>
 
</body>
</html>