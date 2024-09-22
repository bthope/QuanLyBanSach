<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook: Login</title>
<%@include file="views/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="views/navbar.jsp"%>

	<div class="container">
		<div class="row mt-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body"><h4 class="text-center">Login</h4>
						<form>
							<div class="form-group">
								<label for="email">Email:</label> <input
									type="email" class="form-control" id="email" required="required">
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input
									type="password" class="form-control" id="password" required="required">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Login</button><br>
								<a href="register.jsp">Create New Account</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>