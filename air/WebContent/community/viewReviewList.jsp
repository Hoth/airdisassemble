<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%
response.setHeader("cache-control","no-cache"); 
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	리뷰리스트.<p>
	<div data-role="content">
		<ul data-role="listview">
	<c:forEach items="${rv}"
			   var="rv">
			   <li>
			   	  <a href="viewReview.do?r_Num=${rv.r_Num}">
					${rv.r_Title}
					<!-- /home/hosting_users/feelk22/photo -->
			   	  </a>
			   	</li>  	 
			</c:forEach>
			</ul>
    </div>
</body>
</html>