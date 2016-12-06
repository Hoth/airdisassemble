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
<%-- 	<form action="/student1/getNewsList.do" method="post">
		검색어<input type="text"  name="keyword"/>
		<input type="submit"  value="검색"/>
	</form>--%>
	
	<c:choose>
		<c:when test="${ITEM!=null}">
			<table class=type11 align="center" border="1">
				<tr>
				<th scope="cols">번호</th>
        		<th scope="cols">제목</th>
        		<th scope="cols">오리지날링크</th>
                <th scope="cols">설명</th>
      			<th scope="cols">발행일</th>
	
				</tr>
				
				
				<c:forEach items="${ITEM}" var="item" 
				 varStatus="i">
				 
				 <tr>
				 	<td width="50px">${i.count}</td>
				 	<td width="150px">  ${item.title}</td>
				 	<td width="150px"><a href="${item.originallink}">뉴스자세히보기</a></td>
	
				 	<td width="500px" nowrap>   
				 	${item.description}
				 	</td>
				 	
				 	<td width="100px">${item.pubDate}</td>
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