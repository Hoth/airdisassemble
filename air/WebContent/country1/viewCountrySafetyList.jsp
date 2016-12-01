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
	<form action="/air/getCountrySafetyList.do" method="post">
		검색어<input type="text"  name="keyword"/>
		<input type="submit"  value="검색"/>
	</form>
	

	
	<c:choose>
		<c:when test="${ITEM!=null}">
			<table align="center" border="1">
				<tr>
					<td>번호</td>
					<td>국가이름</td>
					<td>국가영문</td>
					<td>내용</td>
					<td>ID</td>
					<td>제목</td>
				
					<td>날짜</td>
					
					
				</tr>
				<c:forEach items="${ITEM}" var="item" 
				 varStatus="i">
				 <tr>
				 	<td>${i.count}</td>
				 	<td>${item.countryName}</td>
				 	<td>${item.countryEnName}</td>
				 	<td>${item.content}</td>
				 	<td>
				 	
				 	${item.id}
				 	
				 	</td>
				 	<td>${item.title}</td>
				 	<td>${item.wrtDt}</td>
				 		
				 </tr>	
				 </c:forEach>	
				 
				 
				 	
			</table>
		</c:when>		
		<c:otherwise>
			검색 결과가 없습니다.
		</c:otherwise>
	</c:choose>
</body>
</html>