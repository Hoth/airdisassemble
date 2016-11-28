<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>환율 정보</title>
</head>
<body>
<form name="pop">
       <form name="popup">
     
   환율이 궁금한 나라<p>
      <select name="exchangerate">
<option value="1USD">미국</option>
<option value="100¥">일본</option>
<option value="1EUR">유럽</option>
<option value="1GBP">영국</option>
<option value="1CHF">스위스</option>
<option value="1CHF">캐나다</option>
<option value="1AUD">호주</option>
<option value="1SEK">SEK</option>
<option value="1DKK">덴마크</option>
<option value="1HKD">홍콩</option>
<option value="1THB">태국</option>
<option value="1SGD">싱가폴</option>
<option value="1INR">인도</option>
<option value="IDR">인도네시아</option>
<option value="1MYR">말레이시아</option>
<option value="1SAR">사우디</option>
<option value="1AED">아랍에미리트</option>
<option value="1KWD">쿠웨이트</option>
<option value="1BHD">바레인</option>
<option value="1CNY">중국</option>
<option value="1TWD">대만</option>
<option value="1PKR">파키스탄</option>
<option value="1BDT">방글라데시</option>
<option value="1PHP">필리핀</option>
<option value="1EGP">이집트</option>
<option value="1MXN">멕시코</option>
<option value="1BRL">브라질</option>
<option value="1BND">브루나이</option>
<option value="1ILS">이스라엘</option>
<option value="1JOD">요르단</option>
<option value="VND">베트남</option>
<option value="1RUB">러시아</option>
<option value="1HUF">헝가리</option>
<option value="1PLN">폴란드</option>
<option value="1ZAR">남아공</option>
<option value="1MNT">1MNT</option>
<option value="1TRY">터키</option>
<option value="1KZT">1KZT</option>
<option value="1CZK">체코</option>
<option value="1QAR">카타르</option>


</select><p>

    
  

    </form>
 
    <a href="javascript:sendData();"><button>환율정보 보기</button></a>
 
    <script>
        function sendData(){

            
            var ageval=$("#exchangerate").val(); // 팝업의 벨루값을 가져와서
            $("#exchangerate",opener.document).val(ageval); // 부모에게 전달
            

            
            
            alert("전송되었습니다.");
            self.close();
        }
    </script>
</body>
</html>