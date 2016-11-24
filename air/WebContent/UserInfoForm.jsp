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
     
    나이<input type="text" name="age" id="age"/><p>
    성별<input type="text" name="sex" id="sex" /><p>
    여행기간<input type="text" name="length" id="length"/><p>
    예상경비<input type="text" name="cost" id="cost"/><p>
 동행<input type="text" name="company" id="company"/><p>
 계절<input type="text" name="season" id="season" /><p>
 대륙<input type="hidden" name="continent" id="continent"/><p>
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