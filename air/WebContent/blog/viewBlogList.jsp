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
	<form action="/blog/getBlogList.do" method="post">
		검색어<input type="text" class="form1" name="keyword"/>
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
				 	<td><a href="${item.link}">자세히보기1112</a></td>
				 	
				 	
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
			검색 결과가 없습니다.
		</c:otherwise>
	</c:choose>

</body>
</html>