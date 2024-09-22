<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook: Register</title>
<%@include file="views/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="views/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body"><h4 class="text-center">Registration Page</h4>
						<form>
							<div class="form-group">
								<label for="fname">Enter Full Name</label> <input
									type="text" class="form-control" id="fname" required="required">
							</div>
							<div class="form-group">
								<label for="email">Email address</label> <input
									type="email" class="form-control" id="email" required="required">
							</div>
							<div class="form-group">
								<label for="phone">Phone number</label> <input
									type="number" class="form-control" id="phone">
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input
									type="password" class="form-control" id="password" required="required">
							</div>
							<div class="form-group">
								<label for="password">Re-Password</label> <input
									type="password" class="form-control" id="password" required="required">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Check me out</label>
							</div>
							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="views/footer.jsp" %>
	
</body>
</html>