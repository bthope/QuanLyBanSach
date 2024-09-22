<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@include file="views/allCss.jsp" %>
<style type="text/css">
.back-img {
	background: url("img/book.png");
	height: 55vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
.crd-ho:hover{
	background-color: #fcf7f7;
}
</style>
</head>
<body style="background-color:#fcf7f7; ">
	<%@include file="views/navbar.jsp" %>	
	<div class="container-fluid back-img">
		<h2 class="text-center text-primary">EBook Management System</h2>
	</div>

<hr>
<!-- Start Recent Book -->
	<div class="container">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
		
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book01.jpg"
							style="width: 150px;height: 200px" 
							class="img-thumbnail">
						<p>The world of studio Ghibli</p>
						<p>Michael Leader </p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book02.jpg"
							style="width: 150px;height: 200px" 
							class="img-thumbnail">
						<p>The art of the wind rises</p>
						<p>Hayao Miyazaki</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book03.jpg"
							style="width: 150px;height: 200px" 
							class="img-thumbnail">
						<p>Castle in the sky</p>
						<p>Hayao Miyazaki</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book04.jpg"
							style="width: 150px;height: 200px" 
							class="img-thumbnail">
						<p>My Neighbor Totoro </p>
						<p>Hayao Miyazaki</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="text-center">
			<a href="" class="btn btn-danger btn-sm mt-2">View All</a>
		</div>		
	</div>
<!-- End Recent Book -->
<hr>


<!-- Start New Book -->
	<div class="container">
		<h3 class="text-center">New Book</h3>
		<div class="row">
		
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book01.jpg"
							style="width: 150px;height: 200px" 
							class="img-thumbnail">
						<p>The world of studio Ghibli</p>
						<p>Michael Leader </p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book02.jpg"
							style="width: 150px;height: 200px" 
							class="img-thumbnail">
						<p>The art of the wind rises</p>
						<p>Hayao Miyazaki</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book03.jpg"
							style="width: 150px;height: 200px" 
							class="img-thumbnail">
						<p>Castle in the sky</p>
						<p>Hayao Miyazaki</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book04.jpg"
							style="width: 150px;height: 200px" 
							class="img-thumbnail">
						<p>My Neighbor Totoro </p>
						<p>Hayao Miyazaki</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="text-center">
			<a href="" class="btn btn-danger btn-sm mt-2">View All</a>
		</div>		
	</div>
<!-- End New Book -->
<hr>


<!-- Start Old Book -->
	<div class="container">
		<h3 class="text-center">Old Book</h3>
		<div class="row">
		
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book05.jpg"
							style="width: 150px;height: 200px" 
							class="img-thumbnail">
						<p>Soul</p>
						<p>Olivia Wilson</p>
						<p>Categories: New</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-5">View Detail</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book06.jpg"
							style="width: 150px;height: 200px" 
							class="img-thumbnail">
						<p>Điểu nhân</p>
						<p>Quỳnh Lê</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-5">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book08.jpg"
							style="width: 200px;height: 200px" 
							class="img-thumbnail">
						<p>Có hai con mèo bên cửa sổ</p>
						<p>Nguyễn Nhật Ánh</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-5">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/book09.jpg"
							style="width: 200px;height: 200px" 
							class="img-thumbnail">
						<p>Đắc Nhân Tâm</p>
						<p>Nguyễn Văn Phước</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-5">View Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-dollar-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="text-center">
			<a href="" class="btn btn-danger btn-sm mt-2">View All</a>
		</div>		
	</div>
<!-- End Old Book -->
<%@include file="views/footer.jsp" %>
</body>
</html>