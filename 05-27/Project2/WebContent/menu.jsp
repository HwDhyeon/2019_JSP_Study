<html>
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	</head>
	<body>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="./welcome.jsp">Plan A</a>
			
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  	</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item">
		       			<a class="nav-link" href="./products.jsp?type=IT">IT & Programming</a>
		      		</li>
		      		<li class="nav-item">
		       			<a class="nav-link" href="./products.jsp?type=Design">Design</a>
		      		</li>
		      		<li class="nav-item">
		       			<a class="nav-link" href="./products.jsp?type=MultiMedia">MultiMedia</a>
		      		</li>
		      		<li class="nav-item">
		       			<a class="nav-link" href="./products.jsp?type=Marketing">Marketing</a>
		      		</li>
		      		<li class="nav-item">
		       			<a class="nav-link" href="./products.jsp?type=Translating">Translating</a>
		      		</li>
				</ul>
				
				<a href="#exampleModal" onclick="exampleModal" data-toggle="modal" class="btn btn-outline-success" style="color: #333333;">Sign in</a>
				
			</div>
			
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
			    	<div class="modal-content">
			      		<div class="modal-header">
			        		<h5 class="modal-title" id="exampleModalLabel">Sign in</h5>
			        		Not yet
			        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          		<span aria-hidden="true">&times;</span>
			        		</button>
			      		</div>
			      		<div class="modal-body">
			        		<form action="SigninGo" method="post">
			          			<div class="form-group">
			            			<label for="recipient-name" class="col-form-label">ID :</label>
			            			<input type="email" class="form-control" id="recipient-name" placeholder="Email" autofocus required>
			          			</div>
			          			<div class="form-group">
			            			<label for="message-text" class="col-form-label">PW :</label>
			            			<input type="password" class="form-control" id="recipient-name" placeholder="Password" required>
			          			</div>
			        			<button type="submit" class="btn btn-primary">Sign In</button>
			        			<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        		</form>
			        		<hr>
			        		<h5 class="modal-title" id="exampleModalLabel">Sign Up</h5>
			        		<p>Not a Member? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			        		<a href="signup.jsp" role="button" class="btn btn-secondary popover-test" title="Popover title" data-content="Popover body content is set in this attribute.">Sign up now</a></p>
			      		</div>
				    </div>
				</div>
			</div>
		</nav>
		
		
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>