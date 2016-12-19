<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
   function button1_click(){
         //alert("클릭했음요");
         //var target=$(this).attr("href");
         $("#frame").load("/air/viewReviewList.do");   
   }      

</script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><font color="black">
${r.r_Num}번<p>
${r.r_Name}님의 후기<p> 
여행 국가 : ${r.c_Location}<p>
여행 계절 : ${r.r_Season}<p>
별점 : ${r.r_Star}<p>
내용 <p>
${r.r_Context}<p>
<input type="button" class="myButton" value="리스트로" onclick="button1_click()"/>
</font></h3>

</body>
</html>