<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, java.text.*"  %>
<head>
<script src='https://production-assets.codepen.io/assets/editor/live/console_runner-5710c30fb566082d9fcb6e7d97ee7e3f2a326128c9f334a4231b6fd752b29965.js'></script>
<!--
<script src='https://production-assets.codepen.io/assets/editor/live/events_runner-d5e4bf42585b8da8c18f7d963dbfc17cd66a79aa586c9448c4de8d6952ee9d97.js'></script>
-->

<meta charset='UTF-8'>

<meta name="robots" content="noindex">

<link rel="shortcut icon" type="image/x-icon" href="https://production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
<link rel="mask-icon" type="" href="https://production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
<link rel="canonical" href="https://codepen.io/lsirivong/pen/ekBxI" />

<style type="text/css">
.transition, form button,  form  input[type="text"] {
  -moz-transition: all 0.25s cubic-bezier(0.53, 0.01, 0.35, 1.5);
  -o-transition: all 0.25s cubic-bezier(0.53, 0.01, 0.35, 1.5);
  -webkit-transition: all 0.25s cubic-bezier(0.53, 0.01, 0.35, 1.5);
  transition: all 0.25s cubic-bezier(0.53, 0.01, 0.35, 1.5);
}
form  input[type="text"] {
  appearance: none;
  background-color: none;
  border: 1px solid #ff4a56;
  line-height: 0;

  display: inline;
  box-sizing: border-box;
  padding: 10px 15px;
  border-radius: 60px;
  color: #ff4a56;
  font-weight: 100;
  letter-spacing: 0.01em;
  
  z-index: 1;
}
form  input[type="radio"]{
color: #ff4a56;
}
form  input[type="select"]{
border:  #ff4a56;
}

form  input[type="text"]:focus {
  outline: none;
  background: #ff4a56;
  color: white;
  margin-top: 30px;
}
form  input[type="text"]:valid {
  margin-top: 30px;
}
form button {
  margin-top: 35px;
  background-color: white;
  border: 1px solid #ff4a56;
  line-height: 0;
  font-size: 17px;
  display: inline-block;
  box-sizing: border-box;
  padding: 20px 15px;
  border-radius: 60px;
  color: #ff4a56;
  font-weight: 100;
  letter-spacing: 0.01em;
  position: relative;
  z-index: 1;
}
form button:hover, form button:focus {
  color: white;
  background-color: #ff4a56;
}


</style>

 
<style class="cp-pen-styles">@charset "UTF-8";
.star-cb-group {
  /* remove inline-block whitespace */
  font-size: 0;
  /* flip the order so we can use the + and ~ combinators */
  unicode-bidi: bidi-override;
  direction: rtl;
  /* the hidden clearer */
}
.star-cb-group * {
  font-size: 1rem;
}
.star-cb-group > input {
  display: none;
}
.star-cb-group > input + label {
  /* only enough room for the star */
  display: inline-block;
  overflow: hidden;
  text-indent: 9999px;
  width: 1em;
  white-space: nowrap;
  cursor: pointer;
}
.star-cb-group > input + label:before {
  display: inline-block;
  text-indent: -9999px;
  content: "☆";
  color: #888;
}
.star-cb-group > input:checked ~ label:before, .star-cb-group > input + label:hover ~ label:before, .star-cb-group > input + label:hover:before {
  content: "★";
  color: #ff4a56;
  text-shadow: 0 0 1px #333;
}
.star-cb-group > .star-cb-clear + label {
  text-indent: -9999px;
  width: .5em;
  margin-left: -.5em;
}
.star-cb-group > .star-cb-clear + label:before {
  width: .5em;
}
.star-cb-group:hover > input + label:before {
  content: "☆";
  color: #888;
  text-shadow: none;
}
.star-cb-group:hover > input + label:hover ~ label:before, .star-cb-group:hover > input + label:hover:before {
  content: "★";
  color: #ff4a56;
  text-shadow: 0 0 1px #333;
}

fieldset {
  border: 0;
  width: 5em;
  }

</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="(http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet" />
<title>Enroll Review</title>

</head>

<body >
<form name="pop" method="post"  action="/air/addReview.do"  enctype="multipart/form-data" > 

<input type="text" name="r_Name" value="이름" size="13">
 <input type="text" id="txtgender" required/value="성별" size="7">
<input type="radio" name="r_Gender" class="gender" value="man"><span>Man</span>&nbsp;
<input type="radio" name="r_Gender" class="gender" value="woman"><span>Woman</span>&nbsp;
<select name="r_Age" value="나이">
<option value="10">10대</option>
<option value="20">20~23</option>
<option value="25">24~26</option>
<option value="29">27~29</option>
<option value="30">30대</option>
<option value="40">40대</option>
<option value="50">50대</option>
</select><p>

<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-58d22c749295bca52f487966e382a94a495ac103faca9206cbd160bdf8aedf2a.js'></script><script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script>var logID = 'log', log = $('<div id="' + logID + '"></div>');
$('body').append(log);
$('[type*=".star-cb-group radio"]').change(function () {
    var me = $(this);
    log.html(me.attr('value'));
});//# sourceURL=pen.js
</script>
<select name="r_Continent" value="대륙">
<option value="991">아시아</option>
<option value="992">유럽</option>
<option value="993">북미</option>
<option value="994">남미</option>
<option value="995">오세아니아</option>
<option value="996">아프리카</option>
</select>&nbsp;&nbsp;
<select name="r_Location" value="여행국가">
<option value="NO">기타</option>
<option value="NETHERLANDS">네덜란드</option>
<option value="New Zealand">뉴질랜드</option>
<option value="Dominican Republic">도미니카 공화국</option>
<option value="Germany">독일</option>
<option value="Dubai">두바이</option>
<option value="Laos">라오스</option>
<option value="Makao">마카오</option>
<option value="Morocco">모로코</option>
<option value="USA">미국</option>
<option value="Vietnam">베트남</option>
<option value="Slovenia">슬로베니아</option>
<option value="Spain">스페인</option>
<option value="Switzerland">스위스</option>
<option value="Singapore">싱가폴</option>
<option value="Italy">이탈리아</option>
<option value="Iran">이란</option>
<option value="India">인도</option>
<option value="Indonesia">인도네시아</option>
<option value="Japan">일본</option>
<option value="England">잉글랜드</option>
<option value="China">중국</option>
<option value="Czech">체코</option>
<option value="Cambodia">캄보디아</option>
<option value="Canada">캐나다</option>
<option value="Croatia">크로아티아</option>
<option value="Taiwan">타이완</option>
<option value="Tajikistan">타지키스탄</option>
<option value="Thailand">태국</option>
<option value="Turkey">터키</option>
<option value="Portugal">포르투갈</option>
<option value="Finland">필란드</option>
<option value="Philippines">필리핀</option>
<option value="France">프랑스</option>
<option value="Hungary">헝가리</option>
<option value="Australia">호주</option>
<option value="Hongkong">홍콩</option>
</select>&nbsp;&nbsp;
<select name="r_Season" value="계절"><option value="spring">봄(3월~5월)<option value="summer">여름(6월~8월)<option value="fall">가을(9월~11월)<option value="winter">겨울(11월~2월) </option>
</select><p>
<input type="text" value="썸네일">&nbsp;&nbsp;<input type="file" name="file"><p>
<input type="text" name="r_Title" value="제목" size="50"><p>
   <!-- Smart Editor -->
<textarea style="width: 90%" rows="30" name="r_Context" id="textAreaContent" cols="60"></textarea><p>

<%
 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss");
 String today = formatter.format(new java.util.Date());
%>
<input type="hidden" name="r_Wdate" value="${today}">
<table><tr><td><font color="#ff4a56">별점주기</font></td>
<td><fieldset>
  
  <span class="star-cb-group">
      <input type="radio" id="rating-5" name="r_Star" value="5"/><label for="rating-5">5</label>&nbsp;
      <input type="radio" id="rating-4" name="r_Star" value="4"/><label for="rating-4">4</label>&nbsp;
      <input type="radio" id="rating-3" name="r_Star" value="3"/><label for="rating-3">3</label>&nbsp;
      <input type="radio" id="rating-2" name="r_Star" value="2"/><label for="rating-2">2</label>&nbsp;
      <input type="radio" id="rating-1" name="r_Star" value="1" checked="checked"/><label for="rating-1">1</label>&nbsp;
      <input type="radio" id="rating-0" name="r_Star" value="0" class="star-cb-clear"/><label for="rating-0">0</label>&nbsp;
    </span>
  </fieldset>
</td><td><button>올리기</button></td></tr></table>
 </form>
  <script type="text/javascript">
  $(document).ready(
			function(){
				 $(".gender").click(
				            function(){
				               $("#txtgender").val("");
				               $("#txtgender").val($(this).next().text());
				            }      
				         );
			}
  );
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "textAreaContent",
    sSkinURI: "/www/se2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});
 
 
//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
    // 에디터의 내용에 대한 값 검증은 이곳에서
    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
  
    try {
        elClickedObj.form.submit();
    } catch(e) {
     
    }
}
 
// textArea에 이미지 첨부
function pasteHTML(filepath){
    var sHTML = '<img src="/www/photo/'+filepath+'">';
    oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
}
    
</script>
</body>
</html>