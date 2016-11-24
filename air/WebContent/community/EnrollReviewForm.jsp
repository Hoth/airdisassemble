<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import="java.util.*, java.text.*"  %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Enroll Review</title>
<script type="text/javascript" src="/www/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="/www/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>

</head>

<body>
<form name="upload" method="post"  action="/www/AddGood.do" onSubmit="return submitContents(this)" enctype="multipart/form-data" > 

제목 : <input type="text" name="r_Title"><br>
장소 : <input type="text" name="c_Location">원.<br>
썸네일 : <input type="file" name="r_Image"><br>
	<!-- Smart Editor -->
<textarea style="width: 100%" rows="50" name="r_Context" id="textAreaContent" cols="80"></textarea>
별점주기 : <input type="radio" name="r_Star" value="5"><input type="radio" name="r_Star" value="4">
<input type="radio" name="r_Star" value="3"><input type="radio" name="r_Star" value="2"><input type="radio" name="r_Star" value="1">
여행 출발일 :<input type="date">

<%
 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss");
 String today = formatter.format(new java.util.Date());
 out.println(today);
%>
 <input type="submit" value="올리기" ><br>
 </form>
  <script type="text/javascript">

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