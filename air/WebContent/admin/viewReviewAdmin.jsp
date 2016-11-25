<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(
	function(){
		$("a").click(
			function(event){
				var target=$(this).attr("href");
				$("#frame").load(target);
				event.preventDefault();
			}		
		);
	}		
);
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
${r.r_Num}번<p>
${r.r_Name}(은)는 ${r.c_Location}에 갔다와서<p>
${r.r_context}(이)라고 말했다<p>

<a href="/air/deleteReview.do?r_Num=${r.r_Num}">해당 리뷰 삭제.</a>
</body>
</html>