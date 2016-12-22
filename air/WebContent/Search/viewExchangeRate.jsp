<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <link rel="stylesheet" type="text/css" href="/air/newintrocss/css/demo.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">




function popup_win1() { //크기 width400 height300 팝업창
	

window.open("/air/ERForm.jsp", "popup", "width=300, height=300");
}

</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
   function button5_click(){
         //alert("클릭했음요");
         //var target=$(this).attr("href");
         $("#frame").load("/air/total.do");   
   }      

</script>

<script type="text/javascript">
	$(document).ready(
	 function(){
		 $("form").submit(function(){
			 alert("서브밋");
			 alert($("#exchangerate").val());
			 var target="/air/viewExchange.do?exchangerate="+$("#exchangerate").val();
				$("#frame").load(target);
			 event.preventDefault();
		 });
	 }		
	);

</script>
</head>
<body>


   <h1>환율 정보</h1><br/>
  <img src="/air/photo/ex.png" ><br/>


<c:choose>
	<c:when test="${exarr.get(0)==null}">

	
	<input type="button" class="myButton" value="나라선택" onclick="popup_win1()" >		
		<form action="/air/viewExchange.do" method="post" id="form">
 <input type="text" name="exchangerate" class="form1" id="exchangerate"/><p>

 	
 <input type="submit" class="myButton" value="조회!">
 </form>
		
		
	</c:when>
	
	<c:otherwise>
	${exarr.get(0)} 는 현찰일때<p>
	살때 ${exarr.get(1)}, 팔때 ${exarr.get(2)}원 입니다.
	<p>
	${exarr.get(3)} 는 송급할떄<p>
	살때 ${exarr.get(4)}, 팔때 ${exarr.get(5)}원 입니다.
	<p>
	${exarr.get(6)} 는 매매일때<p>
	살때 ${exarr.get(7)}, 환살율은 ${exarr.get(8)} 입니다.
	
	</c:otherwise>
</c:choose>

 <input type="button" class="myButton" value="뒤로가세영" onclick="button5_click()"/>
</body>
</html>