<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title> NEW LIST </title>
<style type="text/css">
table.type11 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #369;
  margin : 20px 10px;
}
table.type11 th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;

}
table.type11 td {
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}
</style>



</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
   function button5_click(){
         //alert("클릭했음요");
         //var target=$(this).attr("href");
         $("#example3").load("/air/total.do");   
   }      

</script>

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
	<input type="button" class="myButton" value="뒤로가세영" onclick="button5_click()"/>
</body>
</html>