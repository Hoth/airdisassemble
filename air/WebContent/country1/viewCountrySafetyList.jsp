<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(
	function(){
		
		$("a").click(function(){
			
			//alert("클릭했음요");
			var target=$(this).attr("href");
			$("#frame").load(target);
			event.preventDefault();
		});
		 $("form").submit(function(){
			 alert("서브밋");
			 alert($("#keyword").val());
			 var target="/air/getCountrySafetyList.do?keyword="+$("#keyword").val();
				$("#frame").load(target);
			 event.preventDefault();
		 });
		 $("form2").submit(function(){
			 alert("서브밋");
			 alert($("#keyword1").val());
			 var target="/air/getAccidentList.do?keyword1="+$("#keyword1").val();
				$("#frame").load(target);
			 event.preventDefault();
		 });
			
	}		
);
</script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">




function popup_win1() { //크기 width400 height300 팝업창
	

window.open("/air/UserInfoForm.jsp", "popup", "width=300, height=300");
}

</script>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>

<body>
 <style>
.left-box {

  float: left;
  width: 25%;
  padding:1px;
   padding-top:0px;
  
}
.right-box {

  float: right;
    width: 50%;
    padding-left:1px;
     padding-top:1px;
    

}
</style>
<div class='left-box'>

<h1>국가 안전정보검색</h1>
	<form action="/air/getCountrySafetyList.do" method="post" id="form">
		검색어<input type="text"  name="keyword" id = "keyword"/>
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
	</div>
	
	<div class='right-box'>
	
	<h1>국가 사고/유의사항 검색</h1>
	<form action="/air/getAccidentList.do" method="post" id="form2">
		검색어<input type="text"  name="keyword1" id="keyword1"/>
		<input type="submit"  value="검색"/>
	</form>
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
	
	</div>
	
	
</body>
</html>