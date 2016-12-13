<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
		/* $("#search1").click(function(){
			
			 alert("키워드:"+$("#keyword").val());
			 var target="/air/getCountrySafetyList.do?keyword="+$("#keyword").val();
			$("#left-box").load(target);
			 event.preventDefault();
		 });
		*/
		 $("#search2").click(function(){
				
			 alert("키워드:"+$("#keyword1").val());
			 var target="/air/getAccidentList.do?keyword="+$("#keyword1").val();
			$("#right-box").load(target);
			 event.preventDefault();
		 });
		
		$("#keyword1").keydown(function(event) {
			if(event.which==13){
			  alert( "엔터 눌렀음" );
			  alert("키워드:"+$("#keyword1").val());
				 var target="/air/getAccidentList.do?keyword="+$("#keyword1").val();
				$("#frame").load(target);
			  event.preventDefault();
			}
			
		});
		 /*
		 $("form2").submit(function(){
			 alert("서브밋");
			 alert($("#keyword1").val());
			 var target="/air/getAccidentList.do?keyword1="+$("#keyword1").val();
				$("#right-box").load(target);
			 //event.preventDefault();
		 });
		*/	
	}		
);
</script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">




function popup_win1() { //크기 width400 height300 팝업창
	

window.open("/air/UserInfoForm.jsp", "popup", "width=300, height=300");
}

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<style>
.right-box {

  float: right;
    width: 50%;
    padding-left:1px;
     padding-top:1px;
    

}
</style>
<div class='right-box' id = "right-box">
	
	<h1>국가 사고/유의사항 검색</h1>
	<form action="/air/getAccidentList.do" method="post" id="form2">
		검색어<input type="text"  name="keyword1" id="keyword1" class="form1"/>
	<input type="button" id="search2" value="검색" class="myButton"/>
	</form>
<c:choose>
	<c:when test="${ACCIDENT!=null}">
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
				 	<td>${ACCIDENT.continent}</td>
				 	<td>${ACCIDENT.ename}</td>
				 	<td>${ACCIDENT.id}</td>
				 	<td>
				 	
				 	<img src="${ACCIDENT.imgUrl}"/>
				 	
				 	</td>
				 	<td>${ACCIDENT.name}</td>
				 	<td>${ACCIDENT.news}</td>
				 		<td>${ACCIDENT.wrtDt}</td>
				 </tr>	
				 
			
				 	
			</table>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
		</c:when>
		<c:otherwise>
			검색 결과가 없습니다.
		</c:otherwise>
	</c:choose>
	</div>
</body>
</html>