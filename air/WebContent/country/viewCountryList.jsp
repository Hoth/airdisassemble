<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>국가 검색</h1>
	<form action="/air/getCountryBasicList.do" method="post">
		검색어<input type="text"  name="keyword"/>
		<input type="submit"  value="검색"/>
	</form>
	
	<c:choose>

		<c:when test="${ITEM!=null}">
			<table align="center" border="1">
				<tr>
					<td>번호</td>
					<td>기본정보 테스트</td>
					<td>국가</td>
					<td>국가세부</td>
					<td>이미지 URL</td>
					<td>영문</td>
				
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