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

<c:choose>
		
	
		<c:when test="${ITEM!=null}">
			<table align="center" border="1">
				<tr>
					<td>번호</td>
					<td>대륙</td>
					<td>영문이름</td>
					<td>아이디</td>
					<td>이미지 URL</td>
					<td>국가이름</td>
				
					<td>사건사고</td>
					<td>날짜</td>
					
				</tr>
				
				 <tr>
				 	<td>1</td>
				 	<td>${ITEM.continent}</td>
				 	<td>${ITEM.ename}</td>
				 	<td>${ITEM.id}</td>
				 	<td>
				 	
				 	<img src="${ITEM.imgUrl}"/>
				 	
				 	</td>
				 	<td>${ITEM.name}</td>
				 	<td>${ITEM.news}</td>
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