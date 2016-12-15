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
<h1 align=center>후 기<p>
<img src="/air/photo/${r.r_Image}"><p>
${r.r_Num}번<p>
${r.r_Name}(은)는 ${r.c_Location}에 갔다와서<p>
${r.r_Context}(이)라고 말했다<p>

<input type="button" class="myButton" value="리스트로" onclick="button1_click()"/>
</font></h3>

</body>
</html>