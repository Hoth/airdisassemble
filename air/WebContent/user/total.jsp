<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Material Design Hover &amp; Click Effects Demo Page</title>
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" type="text/css" href="/air/newintrocss/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="/air/newintrocss/css/style4.css" />
<style>
body {
  margin: 0;
  padding: 0;
}

.wrapper {
  display: block;
  width: 99.6%;
  margin: 0.2%;
}

.wrapper:after {
  content: "";
  display: table;
  clear: both;
}

.ripplelink {
  display: block;
  float: left;
  width: 49.6%;
  margin: 0.2%;
  height: 10em;
  line-height: 10em;
  text-align: center;
  color: black;
  text-decoration: none;
  position: relative;
  overflow: hidden;
  -webkit-transition: all 0.2s ease;
  -moz-transition: all 0.2s ease;
  -o-transition: all 0.2s ease;
  transition: all 0.2s ease;
  z-index: 0;
}

.ripplelink:hover {
  z-index: 1000;
  box-shadow: rgba(0, 0, 0, 0.3) 0 16px 16px 0;
  -webkit-box-shadow: rgba(0, 0, 0, 0.3) 0 16px 16px 0;
  -moz-box-shadow: rgba(0, 0, 0, 0.3) 0 16px 16px 0;
}

.ink {
  display: block;
  position: absolute;
  background: rgba(255, 255, 255, 0.3);
  border-radius: 100%;
  -webkit-transform: scale(0);
  -moz-transform: scale(0);
  -o-transform: scale(0);
  transform: scale(0);
}

.animate {
  -webkit-animation: ripple 0.65s linear;
  -moz-animation: ripple 0.65s linear;
  -ms-animation: ripple 0.65s linear;
  -o-animation: ripple 0.65s linear;
  animation: ripple 0.65s linear;
}
 @-webkit-keyframes 
ripple {  100% {
opacity: 0;
-webkit-transform: scale(2.5);
}
}
@-moz-keyframes 
ripple {  100% {
opacity: 0;
-moz-transform: scale(2.5);
}
}
@-o-keyframes 
ripple {  100% {
opacity: 0;
-o-transform: scale(2.5);
}
}
@keyframes 
ripple {  100% {
opacity: 0;
transform: scale(2.5);
}
}

.cyan { background: #ffdddd; }

.lightgreen { background:  #cceeee; }

.amber { background: #bbddbb; }

.orange { background: #ccd4ee; }
.news{font-family:돋움;
font-size:22pt;}
.safety1{font-family:돋움;
font-size:22pt;}
.cosearch{font-family:돋움;
font-size:22pt;}
.hinfo{font-family:돋움;
font-size:22pt;}
.oneeye{font-family:돋움;
font-size:22pt;}
</style>
</head>



<body>

<h1 align="center" style="margin-top:150px;" class="oneeye">세계 각지의 모든 정보를 한눈에!!!!!</h1>
<div class="wrapper" id="sujin">
	<span class="ripplelink cyan" href="/air/viewExchangeRate.do"><h2 class="hinfo">환율 정보 보기</h2>></span> 
	<span class="ripplelink lightgreen" href="/air/getCountryBasicListForm.do"><h2 class="cosearch">나라 정보 검색</h2>></span> 
	<span class="ripplelink amber" href="/air/getCountrySafetyListForm.do"><h2 class="safety1">국가 안전 정보 검색</h2>></span> 
	<span class="ripplelink orange" href="/air/getNewsList.do"><h2 class="news">국제 뉴스</h2>></span>
 </div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
<script>
/*jQuery*/

$(function(){
	var ink, d, x, y;
	$(".ripplelink").click(function(e){
    if($(this).find(".ink").length === 0){
        $(this).prepend("<span class='ink'></span>");
    }
         
    ink = $(this).find(".ink");
    ink.removeClass("animate");
     
    if(!ink.height() && !ink.width()){
        d = Math.max($(this).outerWidth(), $(this).outerHeight());
        ink.css({height: d, width: d});
    }
     
    x = e.pageX - $(this).offset().left - ink.width()/2;
    y = e.pageY - $(this).offset().top - ink.height()/2;
     
    ink.css({top: y+'px', left: x+'px'}).addClass("animate");
    
    
    var target=$(this).attr("href");
   
	$("#frame").load(target);
	
    
});
});
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>
</html>
