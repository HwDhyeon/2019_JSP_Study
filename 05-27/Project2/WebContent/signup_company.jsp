<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Cute+Font&display=swap" rel="stylesheet">
<title>회원가입</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div style="margin-top: 350px">
		<form method="post">
			<div class="form-row">
	    		<div class="col" style="margin-left: 500px;">
	    			<label for="formGroupExampleInput" style="font-family: 'Cute Font', cursive; font-size: 29px;">이메일</label>
	      			<input type="email" class="form-control" placeholder="Email" style="width: 380px; border: 1px solid red;">
	    		</div>
	    		<div class="col" style="margin-right: 500px;">
	    			<label for="formGroupExampleInput" style="font-family: 'Cute Font', cursive; font-size: 29px;">비밀번호</label>
	      			<input type="password" class="form-control" placeholder="Password" style="width: 380px; border: 1px solid red;">
	    		</div>
	    		<div class="col" style="margin-left: 500px;">
	    			<label for="formGroupExampleInput" style="font-family: 'Cute Font', cursive; font-size: 29px;">전화번호</label>
	      			<input type="text" class="form-control" placeholder="- 빼고 입력" style="width: 380px; border: 1px solid red;" onKeyup="inputPhoneNumber(this);" maxlength="13">
	    		</div>
	    		<div class="col" style="margin-left: 80px; margin-top: 40px;">
        			<button type="submit" class="btn btn-outline-success" style="color: #333333; border: 1px; font-family: 'Cute Font', cursive; font-size: 29px;">Sign Up</button>
	    		</div>
	  		</div>
	  		<input type="hidden" value="company">
		</form>
  	</div>
<script type="text/javascript">
	function inputPhoneNumber(obj) {

	    var number = obj.value.replace(/[^0-9]/g, "");
	    var phone = "";
	
	    if(number.length < 4) {
	        return number;
	    } else if(number.length < 7) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3);
	    } else if(number.length < 8) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 3);
	        phone += number.substr(6);
	    } else {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 4);
	        phone += "-";
	        phone += number.substr(7);
	    }
	    obj.value = phone;
}
</script>
</body>
</html>