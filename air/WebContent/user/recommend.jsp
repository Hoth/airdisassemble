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


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



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
 <input type="hidden" name="sex" id="sex" /><p>
 <input type="hidden" name="length" id="length"/><p>
 <input type="hidden" name="cost" id="cost"/><p>
 <input type="hidden" name="company" id="company"/><p>
 <input type="hidden" name="season" id="season" /><p>
 <input type="hidden" name="continent" id="continent"/><p>
 <input type="submit" value="조회!">
 </form>
 
</body>
</html>