<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
   function button6_click(){
         //alert("클릭했음요");
         //var target=$(this).attr("href");
         $("#frame").load("/air/total.do");   
   }      

</script>
 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">

function popup_win1() { //크기 width400 height300 팝업창
	window.open("/air/UserInfoForm.jsp", "popup", "width=600, height=1000, scrollbars=yes, toolbar=no, menubar=no, location=no");

}

</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(
	 function(){
		 $("#search").click(function(){
				
			 alert("키워드:"+$("#keyword1").val());
			 var target="/air/getCountryBasicList.do?keyword="+$("#keyword1").val();
			$("#frame").load(target);
			 event.preventDefault();
		 });
		 
		$("#keyword").keydown(function(event) {
			if(event.which==13){
			  alert( "엔터 눌렀음" );
			  alert("키워드:"+$("#keyword1").val());
				 var target="/air/getCountryBasicList.do?keyword="+$("#keyword1").val();
				$("#frame").load(target);
			  event.preventDefault();
			}
			
		});
		
		 $("#search1").click(function(){
				
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
</head>
<body>

 <style>
.left-box {

  float: left;
  width: 20%;
  padding:1px;
  
}
.right-box {

  float: right;
    width: 50%;
    padding-left:200px;
     padding-top:1px;
    

}
</style>
<div class='left-box'>
<h1>국가 검색</h1>
<img src="/air/photo/ww.png" >

	<form action="/air/getCountryBasicList.do" method="post">

		검색어<input type="text" class="form1"  name="keyword" id="keyword1"/>
		<input type="button" id="search" value="검색" class="myButton"/>
		
</form>

	
	<c:choose>

		<c:when test="${ITEM!=null}">
			<table class=type11 align="center" border="1">
				<tr>
					<th>번호</th>
					<th>기본정보</th>
					<th>국가</th>
					<th>국가세부</th>
					<th>이미지 URL</th>
					<th>영문</th>
				
					<td>id</td>
					<td>날짜</td>
					
				</tr>
				
				 <tr>
				 	<td>1</td>
				 	<td>${ITEM.basic}</td>
				 	<td>${ITEM.continent}</td>
				 	<td>${ITEM.countryName}</td>
				 	<td>
				 	
				 	<img src="${ITEM.imgUrl}"/>
				 	
				 	</td>
				 	<td>${ITEM.countryEnName}</td>
				 	<td>${ITEM.id}</td>
				 		<td>${ITEM.wrtDt}</td>
				 </tr>	
				 
				 
				 	
			</table>
		</c:when>
		
		 <c:otherwise>
			검색 결과가 없습니다.
		</c:otherwise>
		
		
		
	</c:choose>
</div>

<div class='right-box'>


<h2>블로그 여행후기 검색</h2>
<h1>국가검색</h1>
	<form action="/air/getBlogList.do" method="post">
		검색어<input type="text"  name="keyword" id="keyword"/>
		<input type="submit" id="search1" class="myButton" value="검색"/>
		  	</form>
	
	<c:choose>
		<c:when test="${ITEM5!=null}">
			<table align="center" border="1">
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>링크</td>
					
							
				</tr>
				
				<c:forEach items="${ITEM5}" var="item" 
				 varStatus="i">
				 <tr>
				 	<td>${i.count}</td>
				 	<td>${item.title}</td>
				 	<td><a href="#" onclick="window.open('${item.link}')">자세히보기</a></td>
					 	
				 	
				 	
				 		
				 </tr>	
				 </c:forEach>	
				 
				 	
			</table>
		</c:when>
		<c:otherwise>
			
		</c:otherwise>
	</c:choose>



	<div><a href="#" onClick="window.open('http://www.hanatour.com');return false"><img src="/air/photo/hana.jpg" ></a></div>
<div class="fb-like" style="top:575px;   position : absolute; margin:0px; padding:0px;" data-href="https://www.facebook.com/HanaTour.fb/?fref=ts" data-width="269px" data-layout="standard" data-action="like"  data-size="small" data-show-faces="true" data-share="true"></div>
 <br/>
 <br/>
 <br/>
<input type="button" class="myButton" value="뒤로가세영" onclick="button6_click()"/>
</div>


</body>
</html>