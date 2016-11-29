<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, java.text.*"  %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Enroll Review</title>

</head>

<body>
<form name="upload" method="post"  action="/www/AddReview.do" onSubmit="return submitContents(this)" enctype="multipart/form-data" > 
<table>
<tr><td>이름 : <input type="text" name="r_Name"></td></tr>
<tr><td>제목 : <input type="text" name="r_Title"></td></tr>
<tr><td>장소 : <input type="text" name="c_Location"></td></tr>
<tr><td>여행 출발일 :<select name="r_Tdate"><option value="spring">봄(3월~5월)<option value="summer">여름(6월~8월)<option value="fall">가을(9월~11월)<option value="winter">겨울(11월~2월) </td></tr>
<tr><td>썸네일 : <input type="file" name="r_Image"></td></tr>
   <!-- Smart Editor -->
<tr><td><textarea style="width: 90%" rows="50" name="r_Context" id="textAreaContent" cols="80"></textarea></td></tr>
<tr><td>별점주기 : <input type="radio" name="r_Star" value="1"><input type="radio" name="r_Star" value="2">
<input type="radio" name="r_Star" value="3"><input type="radio" name="r_Star" value="4"><input type="radio" name="r_Star" value="5">/5</td></tr>
<%
 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMddHHmmss");
 String today = formatter.format(new java.util.Date());
%>
<input type="hidden" name="r_Wdate" value="${today}">
<tr><td><input type="submit" value="올리기" ></td></tr>
</table>
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
