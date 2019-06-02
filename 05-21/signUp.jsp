<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="./StyleFolder/Styles.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Register</title>
	</head>
	<body class="align">
		<div class="site__container">
			<div class="grid__container">
				<h1>Input your information</h1>
				<form action="SignUp" method="post" class="form form--login">
					<div class="form__field">
						<label class="fontawesome-user" for="login__username"><i class="fas fa-user"></i><span class="hidden">Username</span></label>
						<input type="text" id="login__username" class="form__input" placeholder="example@gmail.com" required name="userid">
					</div>
					<div class="form__field">
						<label class="fontawesome-user" for="login__password"><i class="fas fa-lock"></i><span class="hidden">Password</span></label>
						<input type="password" id="login__password" class="form__input" placeholder="Password" required name="userpw">
					</div>
					<div class="form__field">
						<label class="fontawesome-user" for="login__username"><i class="fas fa-signature"></i><span class="hidden">Name</span></label>
						<input type="text" id="login__password" class="form__input" placeholder="Name" required name="username">
					</div>
					<div class="form__field">
						<label class="fontawesome-user" for="login__username"><i class="fas fa-map-marker-alt"></i><span class="hidden">Position</span></label>
						<input type="text" id="login__password" class="form__input" placeholder="Position" required name="positionname">
					</div>
					<div class="form__field">
						<label class="fontawesome-user" for="login__username"><i class="fas fa-users"></i><span class="hidden">Department</span></label>
						<input type="text" id="login__password" class="form__input" placeholder="Department" required name="Department">
					</div>
					<div class="form__field">
						<label class="fontawesome-user" for="login__username"><i class="fas fa-venus-mars"></i><span class="hidden">Gender</span></label>
						<input type="text" id="login__password" class="form__input" placeholder="남 / 여" required name="gender">
					</div>
					<div class="form__field">
						<label class="fontawesome-user" for="login__username"><i class="fas fa-calendar-week"></i><span class="hidden">JoinDate</span></label>
						<input type="text" id="login__password" class="form__input" placeholder="2000-01-01" required name="joindate">
					</div>
					
					<div class="form__field">
         				<input type="submit" value="Sign Up">
        			</div>
				</form>
				
			</div>
		</div>
	</body>
</html>