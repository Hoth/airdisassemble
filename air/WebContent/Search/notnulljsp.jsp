<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.ArrayList" %>
<%@ page import="bitcom.air.user. bestlist_crawler" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$("#myButton").click(function(){
			
			$("#rank").load("/air/Search/nulljsp.jsp");
			 event.preventDefault();
		 });
</script>

<body>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" id="myButton" class="myButton" value="표 숨기기" onclick="button1_click()"/>

<%
    ArrayList<String> topN=bestlist_crawler.top();
    request.setAttribute("top",topN);
    %>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h2>실시간 인기 여행지</h1>
<table class="type01">
			
			
			<tr>
					<th>순위</th><th>도시</th>
			</tr>
			
					<c:forEach items="${top}" varStatus="status"  var="top">
			 <tr>
			  		<td>${status.count}</td>
					<td>${top}</td>
			 </tr>
					</c:forEach>
		</table>


</body>
</html>