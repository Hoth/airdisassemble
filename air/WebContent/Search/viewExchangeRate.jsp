<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">




function popup_win1() { //크기 width400 height300 팝업창
	

window.open("/air/ERForm.jsp", "popup", "width=300, height=300");
}


$(document).ready(
	function(){
		
		$("submit").click(function(){
			
			//alert("클릭했음요");
			var target=$(this).attr("href");
			$("#frame").load(target);
			event.preventDefault();
		});
			
	}		
);
</script>



<html>
<head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>





<c:choose>
	<c:when test="${exarr.get(0)==null}">
	<input type="button" value="나라선택" onclick="popup_win1()">		
		<form action="/air/viewExchange.do" method="post">
 <input type="text" name="exchangerate" id="exchangerate"/><p>

 	
 <input type="submit" value="조회!">
 </form>
		
		
	</c:when>
	
	<c:otherwise>
	${exarr.get(0)} 는<p>
	살때 ${exarr.get(1)}, 팔때 ${exarr.get(2)}원 입니다.
	</c:otherwise>
</c:choose>

 
</body>
</html>