<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>Insert title here</title>

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
<script type="text/javascript">
$(document).ready(
	function(){
		$(".age").click(
			function(){
				$("#txtAge").val("");
				$("#txtAge").val($(this).val());
			}		
		);
		
		$(".gender").click(
				function(){
					$("#txtgender").val("");
					$("#txtgender").val($(this).val());
				}		
			);
		
		$(".day").click(
				function(){
					$("#txtday").val("");
					$("#txtday").val($(this).val());
				}		
			);
		$(".cost").click(
				function(){
					$("#txtcost").val("");
					$("#txtcost").val($(this).val());
				}		
			);
			
			$(".whom").click(
					function(){
						$("#txtwhom").val("");
						$("#txtwhom").val($(this).val());
					}		
				);
			
			$(".season").click(
					function(){
						$("#txtseason").val("");
						$("#txtseason").val($(this).val());
					}		
				);
	}		
);
</script>
</head>

<body style="overflow-X:hidden">

<form>
<form name="pop">
       <form name="popup">
  <h1>여행지를 찾아라</h1>
   <div class="question">
   
    
    <input type="text" id="txtAge" required/ value="나이">
    
			<input type="radio" name="age" class="age" value="10">10대 및 이하<p>
			<input type="radio" name="age" class="age" value="20">20~23<p>
			<input type="radio" name="age" class="age" value="25">24~26<p>
			<input type="radio" name="age" class="age" value="29">27~29<p>
			<input type="radio" name="age" class="age" value="30">30대<p>
			<input type="radio" name="age" class="age" value="40">40대<p>   
			<input type="radio" name="age" class="age" value="50">50대 이상<p>      

 	 </div>
  
    <div class="question">
   	 <input type="text" id="txtgender" required/value="성별">

    	<input type="radio" name="gender" class="gender" value="man">남
		<input type="radio" name="gender" class="gender" value="woman">여<p>
 	 </div>
  
    <div class="question">
    	<input type="text" id="txtday" required/value="여행기간">

			<input type="radio" name="day" class="day" value="551">당일치기~2박3일<p>
			<input type="radio" name="day" class="day" value="552">~5박6일<p>
			<input type="radio" name="day" class="day" value="553">일주일<p>
			<input type="radio" name="day" class="day" value="554">이주일<p>
			<input type="radio" name="day" class="day" value="555">한달이내<p>
			<input type="radio" name="day" class="day" value="556">한달이상<p>   
  	</div>
  
   <div class="question">
   	<input type="text" id="txtcost" required/value="예상경비(1인당)">
   	
		<input type="radio" name="cost" class="cost" value="49">50만원이하<p>
		<input type="radio" name="cost" class="cost" value="50-99">50만원 이상~100만원 미만<p>
		<input type="radio" name="cost" class="cost" value="100-199">100만원 이상~200만원 미만<p>
		<input type="radio" name="cost" class="cost" value="200">200만원 이상<p>
  	</div>
  
    <div class="question">
    <input type="text" id="txtwhom" required/value="동행">
   
		<input type="radio" name="whom" class ="whom" value="771">가족<p>
		<input type="radio" name="whom" class ="whom" value="772">동료<p>
		<input type="radio" name="whom" class ="whom" value="773">연인<p>
		<input type="radio" name="whom" class ="whom" value="774">친구1명<p>
		<input type="radio" name="whom" class ="whom" value="775">친구2명 이상<p> 
		<input type="radio" name="whom" class ="whom" value="776">혼자<p>    
 	</div>
  
    <div class="question">
        <input type="text" id="txtseason" required/value="계절">
			<input type="radio" name="season" class ="season" value="881">봄(3월~5월)<p>
			<input type="radio" name="season" class ="season" value="882">여름(6월~8월)<p>
			<input type="radio" name="season" class ="season" value="883">가을(9월~11월)<p>
			<input type="radio" name="season" class ="season" value="884">겨울(11월~2월)<p>
 	 </div>
  
  
       <div class="question">
    <input type="text" required/>
    <label>동행</label>
<input type="radio" name="whom" id ="whom" value="771">가족<p>
<input type="radio" name="whom" id ="whom" value="772">동료<p>
<input type="radio" name="whom" id ="whom" value="773">연인<p>
<input type="radio" name="whom" id ="whom" value="774">친구1명<p>
<input type="radio" name="whom" id ="whom" value="775">친구2명 이상<p> 
<input type="radio" name="whom" id ="whom" value="776">혼자<p>    
 </div>
 
  

  </div>
  
     <a href="javascript:sendData();"><button>Submit</button>
</form>









 <!-- 
 
     <div class="question">
    <input type="text" required/>
    <label>동행</label>
<input type="radio" name="whom" id ="whom" value="771">가족<p>
<input type="radio" name="whom" id ="whom" value="772">동료<p>
<input type="radio" name="whom" id ="whom" value="773">연인<p>
<input type="radio" name="whom" id ="whom" value="774">친구1명<p>
<input type="radio" name="whom" id ="whom" value="775">친구2명 이상<p> 
<input type="radio" name="whom" id ="whom" value="776">혼자<p>    
 </div>
 
 
     
    나이<p>
      <select name="age" id="age">
<option value="10">10대 및 이하</option>
<option value="20">20~23</option>
<option value="25">24~26</option>
<option value="29">27~29</option>
<option value="30">30대</option>
<option value="40">40대</option>
<option value="50">50대 이상</option>
</select><p>

    
    성별
<input type="radio" name="gender" id="gender" value="man">남
<input type="radio" name="gender" id="gender" value="woman">여<p>

 여행기간<p>
<select name="day" id="day">
<option value="551">당일치기~2박3일</option>
<option value="552">~5박6일</option>
<option value="553">일주일</option>
<option value="554">이주일</option>
<option value="555">한달이내</option>
<option value="556">한달이상</option>

</select><p>
 
    예상경비(1인당)<p>
<input type="radio" name="cost" id="cost" value="49">50만원이하<p>
<input type="radio" name="cost" id="cost" value="50-99">50만원 이상~100만원 미만<p>
<input type="radio" name="cost" id="cost" value="100-199">100만원 이상~200만원 미만<p>
<input type="radio" name="cost" id="cost" value="200">200만원 이상<p>
    
 동행<p>
    <select name="whom" id ="whom">
 <option value="771">가족</option>
<option value="772">동료</option>
<option value="773">연인</option>
<option value="774">친구1명</option>
<option value="775">친구2명 이상</option>
<option value="776">혼자</option>

</select><p>
 
 계절<p>

<select name="season" id ="season">
<option value="881">봄(3월~5월)</option>
<option value="882">여름(6월~8월)</option>
<option value="883">가을(9월~11월)</option>
<option value="884">겨울(11월~2월)</option>
</select><p>

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
 
 <!--   <a href="javascript:sendData();"><button>부모창전송</button></a>
   -->
 
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
            
            
            var genderval=$("#gender").val();
            $("#gender",opener.document).val(genderval);
            
            var dayval=$("#day").val();
            $("#day",opener.document).val(dayval);
            
            var costval=$("#cost").val();
            $("#cost",opener.document).val(costval);
            
            var whomval=$("#whom").val();
            $("#whom",opener.document).val(whomval);
            
            var seasonval=$("#season").val(); // 팝업의 벨루값을 가져와서
            $("#season",opener.document).val(seasonval); // 부모에게 전달
            
            
            alert("전송되었습니다.");
            self.close();
        }
    </script>
</body>
</html>