<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
	
    <title>Document</title>
    <link rel="Stylesheet" href="style.css">
    
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
						href="#" style="font-weight: bolder; font-family:sans-serif;">
						
						<!-- <span style="font-weight: bolder; font-family:sans-serif; position: absolute;right:150px; bottom: 4px">home</span> -->
						 <span style="position: relative;"> <img
								src="data:image/png;base64,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" 
								alt="home" style="width: 24px; height: 24px;">
								
						</span>

					</a></li>
					<li class="nav-item active"><a class="nav-link"
						th:href="@{/shop}" href="#">
						
						
						 <span style="position: relative;"> <img
								src="https://cdn-icons-png.flaticon.com/512/74/74827.png" 
								alt="home" style="width: 24px; height: 24px;">
								
						</span>
						
						
						</a></li>
					<li class="nav-item active"><a class="nav-link"
						sec:authorize="isAnonymous()" th:href="@{/login}" href="#">login</a>
					</li>
					<li class="nav-item active"><a class="nav-link"
						sec:authorize="isAuthenticated()" th:href="@{/logout}" href="#">
						
						 <span style="position: relative;"> <img
								src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcaV0TebKXD4PLrONyrOGg-CWIOt4nwxTPjA&s" 
								alt="home" style="width: 24px; height: 24px;">
								
						</span>
						
						</a>
					</li>
					<li class="nav-item active"><a class="nav-link" href="/cart">
							<span style="position: relative;"> <img
								src="data:image/png;base64,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"
								alt="Shopping Cart Icon" style="width: 25px; height: 26px;">
								<span th:text="${cartCount}"
								style="position: absolute; top: -px; right: -10px; display: inline-block; border-radius: 50%; background-color: red; height: 18px; width: 18px; text-align: center; font-size: 12px; border-color: black;">
									0 </span>
						</span>

					</a></li>


				</ul>

			</div>
		</div>
	</nav>
<main>
    <div class="container">

        <!--Section: Block Content-->
        <section class="mt-5 mb-4">

            <!--Grid row-->
            <div class="row">

                <!--Grid column-->
                <div class="col-lg-8">

                    <!-- Card -->
                    <div class="card wish-list mb-4">
                        <div class="card-body">

                            <h5 class="mb-4">Cart (<span th:text="${cartCount}">2</span> items)</h5>

                            <div class="row mb-4" th:each="item, iStat : ${cart}">
                                <div class="col-md-5 col-lg-3 col-xl-3">
                                    <div class="mb-3 mb-md-0">
                                        <img class="img-fluid w-100"
                                             th:src="@{${'/productImages/' + item.imageName}}"
                                             src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12a.jpg" alt="Sample">

                                    </div>
                                </div>
                                <div class="col-md-7 col-lg-9 col-xl-9">
                                    <div>
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <h5 th:text="${item.name}">Blue denim shirt</h5>
                                                <p class="mb-3 text-uppercase small">Weight: <span th:text="${item.weight}"></span> grams</p>
<!--                                                <p class="mb-2 text-uppercase small">Category: <span th:text="${item.category.name}"></span></p>-->

                                            </div>

                                        </div>
                                        <div class="mt-5 d-flex justify-content-between align-items-center">
                                            <div>
                                                <a href="#!" th:href="@{/cart/removeItem/{index}(index=${iStat.index})}"  type="button" class="card-link-secondary small text-uppercase mr-3"><i
                                                        class="fas fa-trash-alt mr-1"></i> Remove item </a>

                                            </div>
                                            <p class="mb-0"><span><strong>Rs<span th:text="${item.price}"></span></strong></span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="mb-4">

                            <p class="text-primary mb-0"><i class="fas fa-info-circle mr-1"></i> Do not delay the purchase, adding
                                items to your cart does not mean booking them.</p>

                        </div>
                    </div>




                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-lg-4">

                    <!-- Card -->
                    <div class="card mb-4">
                        <div class="card-body">

                            <h5 class="mb-3">The total amount </h5>

                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                                    Amount Payable
                                    <span>Rs<span th:text="${total}"></span></span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                                    Shipping
                                    <span>Gratis</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                                    <div>
                                        <strong>The total amount of</strong>
                                        <strong>
                                            <p class="mb-0">(including VAT)</p>
                                        </strong>
                                    </div>
                                    <span><strong>Rs<span th:text="${total}"></span></strong></span>
                                </li>
                            </ul>

                            <a th:href="@{/checkout}" h class="btn btn-primary btn-block waves-effect waves-light">go to
                                checkout</a>

                        </div>
                    </div>
                    <!-- Card -->

                    <!-- Card -->
                    <div class="card mb-4">
                        <div class="card-body">

                            <a class="dark-grey-text d-flex justify-content-between" data-toggle="collapse" href="#collapseExample"
                               aria-expanded="false" aria-controls="collapseExample">
                                Add a discount code (optional)
                                <span><i class="fas fa-chevron-down pt-1"></i></span>
                            </a>

                            <div class="collapse" id="collapseExample">
                                <div class="mt-3">
                                    <div class="md-form md-outline mb-0">
                                        <input type="text" id="discount-code" class="form-control font-weight-light"
                                               placeholder="Enter discount code">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Card -->

                </div>
                <!--Grid column-->

            </div>
            <!--Grid row-->

        </section>
        <!--Section: Block Content-->

    </div>
</main>
<!--Main layout-->





<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

</html>