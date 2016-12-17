<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>환율 정보</title>
</head>

<style type="text/css">
.transition, form button, form .question label, form .question input[type="text"] {
  -moz-transition: all 0.25s cubic-bezier(0.53, 0.01, 0.35, 1.5);
  -o-transition: all 0.25s cubic-bezier(0.53, 0.01, 0.35, 1.5);
  -webkit-transition: all 0.25s cubic-bezier(0.53, 0.01, 0.35, 1.5);
  transition: all 0.25s cubic-bezier(0.53, 0.01, 0.35, 1.5);
}

* {
  font-family: Helvetica, sans-serif;
  font-weight: light;
  -webkit-font-smoothing: antialiased;
}

html {
  background-color: #ff4a56;
}

form {
  position: relative;
  display: inline-block;
  max-width: 700px;
  min-width: 500px;
  box-sizing: border-box;
  padding: 30px 25px;
  background-color: white;
  border-radius: 40px;
  margin: 40px 0;
  left: 50%;
  -moz-transform: translate(-50%, 0);
  -ms-transform: translate(-50%, 0);
  -webkit-transform: translate(-50%, 0);
  transform: translate(-50%, 0);
}
form h1 {
  color: #ff4a56;
  font-weight: 100;
  letter-spacing: 0.01em;
  margin-left: 15px;
  margin-bottom: 35px;
  text-transform: uppercase;
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
form .question {
  position: relative;
  padding: 10px 0;
}
form .question:first-of-type {
  padding-top: 0;
}
form .question:last-of-type {
  padding-bottom: 0;
}
form .question label {
  transform-origin: left center;
  color: #ff4a56;
  font-weight: 100;
  letter-spacing: 0.01em;
  font-size: 17px;
  box-sizing: border-box;
  padding: 10px 15px;
  display: block;
  position: absolute;
  margin-top: -40px;
  z-index: 2;
  pointer-events: none;
}
form .question input[type="text"] {
  appearance: none;
  background-color: none;
  border: 1px solid #ff4a56;
  line-height: 0;
  font-size: 17px;
  width: 100%;
  display: block;
  box-sizing: border-box;
  padding: 10px 15px;
  border-radius: 60px;
  color: #ff4a56;
  font-weight: 100;
  letter-spacing: 0.01em;
  position: relative;
  z-index: 1;
}
form .question input[type="text"]:focus {
  outline: none;
  background: #ff4a56;
  color: white;
  margin-top: 30px;
}
form .question input[type="text"]:valid {
  margin-top: 30px;
}
form .question input[type="text"]:focus ~ label {
  -moz-transform: translate(0, -35px);
  -ms-transform: translate(0, -35px);
  -webkit-transform: translate(0, -35px);
  transform: translate(0, -35px);
}
form .question input[type="text"]:valid ~ label {
  text-transform: uppercase;
  font-style: italic;
  -moz-transform: translate(5px, -35px) scale(0.6);
  -ms-transform: translate(5px, -35px) scale(0.6);
  -webkit-transform: translate(5px, -35px) scale(0.6);
  transform: translate(5px, -35px) scale(0.6);
}


</style>


<body>
<form name="pop">
       <form name="popup">
  <h1>환율이 궁금한 나라<p></h1> 
      <select name="exchangerate" id="exchangerate">
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

    
    <a href="javascript:sendData();"><button>환율정보 보기</button></a> 

    </form>
 
 
 
    <script>
        function sendData(){

            
            var exchangeval=$("#exchangerate").val(); // 팝업의 벨루값을 가져와서
            $("#exchangerate",opener.document).val(exchangeval); // 부모에게 전달
            
			
            alert(exchangeval);
            
            alert("전송되었습니다.");
            self.close();
        }
    </script>
</body>
</html>