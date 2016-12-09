<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(
	 function(){
		 $("#search").click(function(){
				
			 alert("키워드:"+$("#keyword").val());
			 var target="/air/getCountryBasicList.do?keyword="+$("#keyword").val();
			$("#frame").load(target);
			 event.preventDefault();
		 });
	 }		
	);

</script>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>국가 검색</h1>
<img src="/air/photo/ww.png" >
	<form action="/air/getCountryBasicList.do" method="post">
		검색어<input type="text" class="form1"  name="keyword" id="keyword"/>
		<input type="button" id="search" value="검색" class="myButton"/>
</form>

	
	<c:choose>

		<c:when test="${ITEM!=null}">
			<table class=type11 align="center" border="1">
				<tr>
					<th>번호</th>
					<th>기본정보</th>
					<th>국가</th>
					<th>국가세부</th>
					<th>이미지 URL</th>
					<th>영문</th>
				
					<td>id</td>
					<td>날짜</td>
					
				</tr>
				
				 <tr>
				 	<td>1</td>
				 	<td>${ITEM.basic}</td>
				 	<td>${ITEM.continent}</td>
				 	<td>${ITEM.countryName}</td>
				 	<td>
				 	
				 	<img src="${ITEM.imgUrl}"/>
				 	
				 	</td>
				 	<td>${ITEM.countryEnName}</td>
				 	<td>${ITEM.id}</td>
				 		<td>${ITEM.wrtDt}</td>
				 </tr>	
				 
				 
				 	
			</table>
		</c:when>
		
		 <c:otherwise>
			검색 결과가 없습니다.
		</c:otherwise>
		
		
		
	</c:choose>

</body>
</html>