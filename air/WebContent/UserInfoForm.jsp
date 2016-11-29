<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form name="pop">
       <form name="popup">
     
    나이<p>
      <select name="age">
<option value="10">10대 및 이하</option>
<option value="20">20~23</option>
<option value="25">24~26</option>
<option value="29">27~29</option>
<option value="30">30대</option>
<option value="40">40대</option>
<option value="50">50대 이상</option>
</select><p>

    
    성별
<input type="radio" name="gender" value="man">남
<input type="radio" name="gender" value="woman">여<p>

 여행기간<p>
<select name="day">
<option value="551">당일치기~2박3일</option>
<option value="552">~5박6일</option>
<option value="553">일주일</option>
<option value="554">이주일</option>
<option value="555">한달이내</option>
<option value="556">한달이상</option>

</select><p>
 
    예상경비(1인당)<p>
<input type="radio" name="cost" value="49">50만원이하<p>
<input type="radio" name="cost" value="50-99">50만원 이상~100만원 미만<p>
<input type="radio" name="cost" value="100-199">100만원 이상~200만원 미만<p>
<input type="radio" name="cost" value="200">200만원 이상<p>
    
 동행<p>
    <select name="whom">
 <option value="771">가족</option>
<option value="772">동료</option>
<option value="773">연인</option>
<option value="774">친구1명</option>
<option value="775">친구2명 이상</option>
<option value="776">혼자</option>

</select><p>
 
 계절<p>

<select name="season">
<option value="881">봄(3월~5월)</option>
<option value="882">여름(6월~8월)</option>
<option value="883">가을(9월~11월)</option>
<option value="884">겨울(11월~2월)</option>
</select><p>
<!-- 
 대륙<p>
  <select name="class">
 <option value="Europe">유럽</option>
<option value="Asia">아시아</option>
<option value="SouthAmerica">남아메리카</option>
<option value="NorthAmerica">북아메리카</option>
<option value="Africa">아프리카</option>
<option value="Oceania">오세아니아</option>
</select><p>
  -->

    </form>
 
    <a href="javascript:sendData();"><button>부모창전송</button></a>
 
    <script>
        function sendData(){
            //var frm = document.popup;
            //var title = "parent2";
            //var url = 'parent_2.asp';
               
            //window.opener.name = title; //객체의 레퍼런스가 아닌 스트링을 사용한 이름을 지정해 주어야 함.
            //frm.target = title; 
 
            //opener.parent.name = opener.parent.name || "opener_parent"; 
            //frm.target = opener.parent.name; 
 
            //frm.action = url;
            //frm.submit();
            
            var ageval=$("#age").val(); // 팝업의 벨루값을 가져와서
            $("#age",opener.document).val(ageval); // 부모에게 전달
            
            var sexval=$("#sex").val(); 
            $("#sex",opener.document).val(sexval);
            
            var lengthval=$("#length").val();
            $("#length",opener.document).val(lengthval);
            
            var costval=$("#cost").val();
            $("#cost",opener.document).val(costval);
            
            var companyval=$("#company").val();
            $("#company",opener.document).val(companyval);
            
            var seasonval=$("#season").val(); // 팝업의 벨루값을 가져와서
            $("#season",opener.document).val(seasonval); // 부모에게 전달
            
            
            alert("전송되었습니다.");
            self.close();
        }
    </script>
</body>
</html>