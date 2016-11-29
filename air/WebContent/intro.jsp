<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width">

<title>Slider Pro</title>
<link rel="stylesheet" type="text/css" href="/air/dist/css/slider-pro.min.css" media="screen"/>
<link rel="stylesheet" type="text/css" href="/air/dist/css/examples.css" media="screen"/>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
<link href="/air/css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="/air/css/fonts.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="/air/libs/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/air/dist/js/jquery.sliderPro.min.js"></script>

<script type="text/javascript">


	
</script>

</head>
<body>
적용이 늦어
 여행지를 찾아서!<p>
 
<div data-role="content">
		<table>
		<tr><th>순위</th><th>도시</th></tr>
	<c:forEach items="${top}" varStatus="status"
			   var="top">
			   <tr>
			   		<td>${status.count}</td>
			   	  	
					<td>${top}</td>
				
			   
			     	</tr> 
			</c:forEach>
			</table>
    </div>

<div id="example3" class="slider-pro">
		<div class="sp-slides">
			<div class="sp-slide">
				<img class="sp-image" src="/air/dist/css/images/blank.gif" 
					data-src="/air/photo/k1.jpg"
					data-small="/air/photo/k1.jpg"
					data-medium="/air/photo/k1.jpg"
					data-large="/air/photo/k1.jpg"
					data-retina="/air/photo/k1.jpg"/>

				
			</div>

	        <div class="sp-slide">
	        	<img class="sp-image" src="/air/css/images/blank.gif" 
	        		data-src="/air/photo/k2.jpg"
					data-small="/air/photo/k2.jpg"
					data-medium="/air/photo/k2.jpg"
					data-large="/air/photo/k2.jpg"
					data-retina="/air/photo/k2.jpg"/>

				

				
				
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="/air/css/images/blank.gif" 
					data-src="/air/photo/k3.jpg"
					data-small="/air/photo/k3.jpg"
					data-medium="/air/photo/k3.jpg"
					data-large="/air/photo/k3.jpg"
					data-retina="/air/photo/k3.jpg"/>

				

				
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="/air/css/images/blank.gif" 
					data-src="/air/photo/k4.jpg"
					data-small="/air/photo/k4.jpg"
					data-medium="/air/photo/k4.jpg"
					data-large="/air/photo/k4.jpg"
					data-retina="/air/photo/k4.jpg"/>

				
			</div>

			<div class="sp-slide">
				<img class="sp-image" src="/air/css/images/blank.gif" 
					data-src="/air/photo/k5.jpg"
					data-small="/air/photo/k5.jpg"
					data-medium="/air/photo/k5.jpg"
					data-large="/air/photo/k5.jpg"
					data-retina="/air/photo/k5.jpg"/>

				
			</div>

			
		</div>

		<div class="sp-thumbnails">
			<img class="sp-thumbnail" src="/air/photo/k1.jpg"/>
			<img class="sp-thumbnail" src="/air/photo/k2.jpg"/>
			<img class="sp-thumbnail" src="/air/photo/k3.jpg"/>
			<img class="sp-thumbnail" src="/air/photo/k4.jpg"/>
			<img class="sp-thumbnail" src="/air/photo/k5.jpg"/>
		</div>
    </div>
    
    <script>
    
	$( '#example3' ).sliderPro({
		width: 960,
		height: 500,
		fade: true,
		arrows: true,
		buttons: false,
		fullScreen: true,
		shuffle: true,
		smallSize: 500,
		mediumSize: 1000,
		largeSize: 3000,
		thumbnailArrows: true,
		autoplay: false
	});
    
    </script>


</body>
</html>