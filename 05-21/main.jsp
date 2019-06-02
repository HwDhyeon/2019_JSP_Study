<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="./StyleFolder/Styles.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Main</title>
	</head>
	<body class="align">

  <div class="site__container">

    <div class="grid__container">

      <form action="Login" method="post" class="form form--login">

        <div class="form__field">
          <label class="fontawesome-user" for="login__username"><i class="fas fa-user"></i><span class="hidden">Username</span></label>
          <input id="login__username" type="text" class="form__input" placeholder="Email" required name="userid">
        </div>

        <div class="form__field">
          <label class="fontawesome-lock" for="login__password"><i class="fas fa-unlock-alt"></i><span class="hidden">Password</span></label>
          <input id="login__password" type="password" class="form__input" placeholder="Password" required name="userpw">
        </div>

        <div class="form__field">
          <input type="submit" value="Log In">
        </div>

      </form>

      <p class="text--center">Not a member? <a href="signUp.jsp">Sign up now</a> <span class="fontawesome-arrow-right"><i class="fas fa-arrow-right"></i></span></p>

    </div>

  </div>


</body>
</html>