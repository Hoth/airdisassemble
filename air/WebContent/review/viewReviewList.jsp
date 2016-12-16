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
<script type="text/javascript">
$(document).ready(
   function(){
      
      $("a").click(function(){
         
         //alert("클릭했음요");
         var target=$(this).attr("href");
         $("#frame").load(target);
         event.preventDefault();
      });
         
   }      
);
</script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
table.type11 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #369;
  margin : 20px 200px;
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
.type11{
width:700px;
}
</style>




</head>
<body>
<p>리뷰리스트.</p>
   <div data-role="content">   </div>
      
      
      <table class=type11 align="center" border="1">
      
      <tr>
      <th scope="cols">대표사진</th>
      <th scope="cols">제목</th>
      <th scope="cols">작성자</th>
      </tr>
      
      <c:forEach items="${rv}" var="item">
         <tr>
            <td width="350"><img src="/air/photo/${item.r_Image}" width="300"></td>
            <td><a href="viewReview.do?r_Num=${item.r_Num}">${item.r_Title}</a></td>
            <td>${item.r_Name}</td>
         </tr>
      </c:forEach>
   
   
    
    
   <a href= "/air/addReviewForm.do"><button class="myButton">리뷰 등록하기</button></a>
</body>
</html>