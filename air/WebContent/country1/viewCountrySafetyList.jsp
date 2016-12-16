<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(
		
		
	function(){
		
		
		 $("#search1").click(function(){
			
			 alert("키워드:"+$("#keyword").val());
			 var target="/air/getCountrySafetyList.do?keyword="+$("#keyword").val();
			$("#left-box").load(target);
			 event.preventDefault();
		 });
		 
		 $("#keyword").keydown(function(event) {
				if(event.which==13){
				  alert( "엔터 눌렀음" );
				  alert("키워드:"+$("#keyword").val());
					 var target="/air/getCountrySafetyList.do?keyword="+$("#keyword").val();
					$("#frame").load(target);
				  event.preventDefault();
				}
				
			});
		 $("#search2").click(function(){
				
			 alert("키워드:"+$("#keywordd").val());
			 var target="/air/getAccidentList.do?keyword="+$("#keywordd").val();
			$("#right-box").load(target);
			 event.preventDefault();
		 });
		 
		 $("#keywordd").keydown(function(event) {
				if(event.which==13){
				  alert( "엔터 눌렀음" );
				  alert("키워드:"+$("#keywordd").val());
					 var target="/air/getAccidentList.do?keyword="+$("#keywordd").val();
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
function button9_click(){
    //alert("클릭했음요");
    //var target=$(this).attr("href");
    $("#frame").load("/air/total.do");   
}
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
<div class='left-box' id = "left-box">

<h1>국가 안전정보검색</h1>
	<form action="/air/getCountrySafetyList.do" method="post"  >
		검색어<input type="text"  name="keyword" id = "keyword" class="form1"/>
		<input type="button" id="search1" value="검색" class="myButton"/>
	</form>


	
	
	</div>
	
	<div class='right-box' id = "right-box">
	
	<h1>국가 사고/유의사항 검색</h1>
	<form action="/air/getAccidentList.do" method="post" id="form2">
		검색어<input type="text"  name="keywordd" id="keywordd" class="form1"/>
	<input type="button" id="search2" value="검색" class="myButton"/>
	</form>
	
	<%--
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
	</c:choose> --%>
	
	</div>
	<input type="button" class="myButton" value="뒤로가세영" onclick="button9_click()"/>
	
</body>
</html>