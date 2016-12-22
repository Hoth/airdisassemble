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
  background-color: #FFD9EC;
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
			            $("#txtAge").val($(this).next().text());
			         }      
			      );
			      
			      $(".gender").click(
			            function(){
			               $("#txtgender").val("");
			               $("#txtgender").val($(this).next().text());
			            }      
			         );
			      
			      $(".day").click(
			            function(){
			               $("#txtday").val("");
			               $("#txtday").val($(this).next().text());
			            }      
			         );
			      $(".cost").click(
			            function(){
			               $("#txtcost").val("");
			               $("#txtcost").val($(this).next().text());
			            }      
			         );
			         
			         $(".whom").click(
			               function(){
			                  $("#txtwhom").val("");
			                  $("#txtwhom").val($(this).next().text());
			               }      
			            );
			         
			         $(".season").click(
			               function(){
			                  $("#txtseason").val("");
			                  $("#txtseason").val($(this).next().text());
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
   
    
    <input type="text" id="txtAge" required/ value="나이"><p>
    
		<input type="radio" name="age" class="age" value="10"><span>10대 및 이하</span><p>
         <input type="radio" name="age" class="age" value="20"><span>20~23</span><p>
         <input type="radio" name="age" class="age" value="25"><span>24~26</span><p>
         <input type="radio" name="age" class="age" value="29"><span>27~29</span><p>
         <input type="radio" name="age" class="age" value="30"><span>30대</span><p>
         <input type="radio" name="age" class="age" value="40"><span>40대</span><p>   
         <input type="radio" name="age" class="age" value="50"><span>50대</span><p>

 	 </div>
  
    <div class="question">
   	 <input type="text" id="txtgender" required/value="성별"><p>

    	<input type="radio" name="gender" class="gender" value="man"><span>남</span>
		<input type="radio" name="gender" class="gender" value="woman"><span>여</span><p>
 	 </div>
  
    <div class="question">
    	<input type="text" id="txtday" required/value="여행기간"><p>

			<input type="radio" name="day" class="day" value="551"><span>당일치기~2박3일</span><p>
			<input type="radio" name="day" class="day" value="552"><span>~5박6일</span><p>
			<input type="radio" name="day" class="day" value="553"><span>일주일</span><p>
			<input type="radio" name="day" class="day" value="554"><span>이주일</span><p>
			<input type="radio" name="day" class="day" value="555"><span>한달이내</span><p>
			<input type="radio" name="day" class="day" value="556"><span>한달이상</span><p>   
  	</div>
  
   <div class="question">
   	<input type="text" id="txtcost" required/  value="예상경비(1인당)"><p>
   	
 		<input type="radio" name="cost" class="cost" value="49"><span>50만원이하</span><p>
      <input type="radio" name="cost" class="cost" value="50-99"><span>50만원 이상~100만원 미만</span><p>
      <input type="radio" name="cost" class="cost" value="100-199"><span>100만원 이상~200만원 미만</span><p>
      <input type="radio" name="cost" class="cost" value="200"><span>200만원 이상</span><p>

  	</div>
  
    <div class="question">
    <input type="text" id="txtwhom" required value="동행"><p>
   
		  <input type="radio" name="whom" class ="whom" value="771"><span>가족</span><p>
      <input type="radio" name="whom" class ="whom" value="772"><span>동료</span><p>
      <input type="radio" name="whom" class ="whom" value="773"><span>연인</span><p>
      <input type="radio" name="whom" class ="whom" value="774"><span>친구1명</span><p>
      <input type="radio" name="whom" class ="whom" value="775"><span>친구2명 이상</span><p> 
      <input type="radio" name="whom" class ="whom" value="776"><span>혼자</span><p>    
 
 	</div>
  
    <div class="question">
         <input type="text" id="txtseason" required value="계절"><p>
         <input type="radio" name="season" class ="season" value="881"><span>봄(3월~5월)</span><p>
         <input type="radio" name="season" class ="season" value="882"><span>여름(6월~8월)</span><p>
         <input type="radio" name="season" class ="season" value="883"><span>가을(9월~11월)</span><p>
         <input type="radio" name="season" class ="season" value="884"><span>겨울(11월~2월)</span><p>
 	 </div>
    
     <button onclick="sendData(event);"> Submit</button>
</form>
</form>
</form>
 
 
    <script>
        function sendData(event){
    
            var ageval=$(".age").val(); // 팝업의 벨루값을 가져와서
            $("#age",opener.document).val(ageval); // 부모에게 전달
  
            var genderval=$(".gender").val();
            $("#gender",opener.document).val(genderval);
            
            var dayval=$(".day").val();
            $("#day",opener.document).val(dayval);
            
            var costval=$(".cost").val();
            $("#cost",opener.document).val(costval);
            
            var whomval=$(".whom").val();
            $("#whom",opener.document).val(whomval);
            
            var seasonval=$(".season").val(); // 팝업의 벨루값을 가져와서
            $("#season",opener.document).val(seasonval); // 부모에게 전달

            
          var target="/air/generateDestination.do?age="+ageval+"&gender="+genderval+"&day="+dayval+"&cost="+costval+"&whom="+whomval+"&season="+seasonval;
          alert("target:"+target);
          //alert(target);
		$("#frame",opener.document).load(target);
		alert("조회중입니다.");
		//	event.preventDefault();
		$(opener.location).attr("href", "javascript:getTarget('"+target+"');");
            self.close();
        }
    </script>
</body>
</html>