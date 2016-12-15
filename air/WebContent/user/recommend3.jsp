<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(
	function(){
		 $("#search").click(function(){
				
			 alert("키워드:"+$("#keyword").val());
			 var target="/air/getBlogList.do?keyword="+$("#keyword").val();
			$("#frame").load(target);
			 event.preventDefault();
		 });
		 
		$("#keyword").keydown(function(event) {
			if(event.which==13){
			  alert( "엔터 눌렀음" );
			  alert("키워드:"+$("#keyword").val());
				 var target="/air/getBlogList.do?keyword="+$("#keyword").val();
				$("#frame").load(target);
			  event.preventDefault();
			}
			
		});
			
	}		
);
</script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">


</script>
<html>
<head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 
	
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
				 	<td><a href="${item.link}">자세히보기</a></td>
				 	
				 	
				 	<td>${item.description}</td>
				 	<td>
				 	
				 	${item.bloggername}
				 	
				 	</td>
				 	<td><a href="${item.bloggerlink}">${item.bloggerlink}</a></td>
				 	
				 		
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