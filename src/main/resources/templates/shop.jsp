<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<title>OrderNow</title>
</head>
<body>


	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				th:src="@{/images/logo.png}" src="../static/images/logo.png"
				width="auto" height="40" class="d-inline-block align-top" alt="" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto"></ul>
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" th:href="@{/}"
						href="#">home</a></li>
					<li class="nav-item active"><a class="nav-link"
						th:href="@{/shop}" href="#">shop</a></li>
					<li class="nav-item active"><a class="nav-link"
						sec:authorize="isAnonymous()" th:href="@{/login}" href="#">login</a>
					</li>
					<li class="nav-item active"><a class="nav-link"
						sec:authorize="isAuthenticated()" th:href="@{/logout}" href="#">logout</a>
					</li>
					<li class="nav-item active"><a class="nav-link"
						th:href="@{/cart}" href="#">cart</a></li>
					<li class="nav-item active" style="border-radius:50%;color:yellow;"><span class="nav-link"2
						th:text="${cartCount}">0</span></li>
				</ul>

			</div>
		</div>
	</nav>
	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-3">
				<h4>Categories</h4>
				<ul class="list-group">
					<a th:href="@{/shop}"><li class="list-group-item">All
							Products</li></a>
					<a href="" th:each="category, iStat : ${categories}"
						th:href="@{/shop/category/{id}(id=${category.id})}"><li
						class="list-group-item" th:text="${category.name}"></li></a>

				</ul>
			</div>
			<div class="col-sm-9">
				<div class="card" style="margin-top: 20px"
					th:each="product : ${products}">
					<div class="row no-gutters">
						<div class="col-sm-5 d-flex justify-content-center">
							<img class="" height="150px" width="150px"
								th:src="@{${'/productImages/' + product.imageName}}"
								th:alt="${product.name}">
						</div>
						<div class="col-sm-7 d-flex justify-content-center">
							<div class="card-body">
								<h5 class="card-title" th:text="${product.name}"></h5>
								<h4>
									RS <span th:text="${product.price}"></span>
								</h4>
								<p th:text="${product.description}">Suresh Dasari is a
									founder and technical lead developer in tutlane.</p>
								<a href="#"
									th:href="@{/shop/viewproduct/{id}(id=${product.id})}"
									class="btn btn-primary">View Product</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>