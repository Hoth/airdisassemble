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
      
      $(".rlink").click(function(){
         
         //alert("클릭했음요");
         var target=$(this).attr("href");
         $("#frame").load(target);
         event.preventDefault();
      });
     
   }      
);
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">




function popup_win2() { //크기 width400 height300 팝업창
	

window.open("/air/addReviewForm.do", "popup", "width=600, height=1000, scrollbars=yes, toolbar=no, menubar=no, location=no");

}

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
            <form action="/air/viewReviewList.do" method="post"  id="viewReview">
      <select name="order" id="order">
      <option value="1">등록일 순</option>
      <option value="2">별점 높은 순</option>
      <option value="3">별점 낮은 순</option>
      </select>
     </form> 
      <tr>
      <th scope="cols">대표사진</th>
      <th scope="cols">제목</th>
      <th scope="cols">작성자</th>
      </tr>
      
      <c:forEach items="${rv}" var="item">
         <tr>
            <td width="350"><img src="/air/photo/${item.r_Image}" width="300"></td>
            <td><span class="rlink" href="viewReview.do?r_Num=${item.r_Num}">${item.r_Title}</span></td>
            <td>${item.r_Name}</td>
         </tr>
      </c:forEach>
   
   
    
    
   <span class="rlink" href= "/air/addReviewForm.do"></span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" class="myButton" value="진짜리뷰등록" onclick="popup_win2()">	
</body>
</html>