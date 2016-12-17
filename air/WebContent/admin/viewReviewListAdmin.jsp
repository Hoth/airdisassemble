<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%
response.setHeader("cache-control","no-cache"); 
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <link rel="stylesheet" type="text/css" href="/air/newintrocss/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="/air/newintrocss/css/style4.css" />
<style>
.nono{font-family:돋움;
font-size:22pt;}
.nono1{font-family:돋움;
font-size:22pt;}
.nono2{font-family:돋움;
font-size:22pt;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(
   function(){
      
      $(".rlink").click(function(){
         
         //alert("클릭했음요");
         var target=$(this).attr("href");
         $("#frame").load(target);
         event.preventDefault();
      });
     
   }      
);
</script>


<body>
	리뷰리스트.<p>
	<div data-role="content">
			<table class=type01 align="center" border="1">
			<tr><th scope="cols">글번호</th>
			<th scope="cols">제목</th>
			<th scope="cols">삭제</th></tr>
	
	
	<c:forEach items="${rv}"  var="rv">
	<tr>		
			   
<<<<<<< HEAD
			   	  <td>${rv.r_Num}</td>
					<td><span class="rlink" href="viewReviewAdmin.do?r_Num=${rv.r_Num}">${rv.r_Title}</span></td>    
=======
			   	  <td><a href="viewReviewAdmin.do?r_Num=${rv.r_Num}" class="nono">${rv.r_Num }</a></td>
					<td class="nono1">${rv.r_Title}</td>    
>>>>>>> branch '1218' of https://github.com/Hoth/airdisassemble.git
					<!-- /home/hosting_users/feelk22/photo -->
<<<<<<< HEAD
			   	   <td>    <span class="rlink" href="deleteReview.do?r_Num=${rv.r_Num}">삭제</span>
=======
			   	   <td>    <a href="deleteReview.do?r_Num=${rv.r_Num} class="nono2"">삭제</a>
>>>>>>> branch '1218' of https://github.com/Hoth/airdisassemble.git
			 	 </td>
			 	 </tr>
			</c:forEach>
			</ul>
    </div>
</body>
</html>