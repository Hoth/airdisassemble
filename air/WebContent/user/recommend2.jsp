<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">


function popup_win1() { //크기 width400 height300 팝업창
	

window.open("/air/UserInfoForm.jsp", "popup", "width=300, height=300");
}

</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="button" value="추우우우천" onclick="popup_win1()">



recommend.jsp
<p>
<a href="/air/viewHot.do">핫!</a><p>
<a href="/air/viewStar.do">스톼~</a><p>

당신의 목적지는!!!   ${dest} 입니다..!!
 
 
 
</body>
</html>