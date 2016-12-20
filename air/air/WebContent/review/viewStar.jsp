<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">

$('#radios').radiosToSlider({
    animation: true,
});
</style>
<body>
별점랭킹
<div id="radios">
    <input id="option1" name="options" type="radio">
    <label for="option1">1 year</label>
    <input id="option2" name="options" type="radio">
    <label for="option2">2 years</label>
    <input id="option3" name="options" type="radio" checked>
    <label for="option3">3 years</label>
    <input id="option4" name="options" type="radio">
    <label for="option4">4 years</label>
    <input id="option5" name="options" type="radio">
    <label for="option5">5+ years</label>
</div>




</body>
</html>