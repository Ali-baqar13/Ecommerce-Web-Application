<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img th:src="@{/images/logo.png}" src="../static/images/logo.png" width="auto" height="40"
                 class="d-inline-block align-top" alt=""/>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto"></ul>
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" th:href="@{/admin}" href="#">admin-home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" th:href="@{/logout}" href="#">logout</a>
                </li>

            </ul>

        </div>
    </div>
</nav>
<div class="container">
    <h3>Add a new Product</h3>
    <form th:action="@{/admin/products/add}" method="post" th:object="${productDTO}" enctype="multipart/form-data">
        <div class="row">
            <div class="col-sm-5">

                <input type="hidden" name="id" th:field="*{id}">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" required th:field="*{name}" name="name" id="name"
                           placeholder="Enter name">

                </div>
                <div class="form-group">
                    <label for="category">Select Category</label>
                    <select class="form-control" th:field="*{categoryId}" id="category" name="category">
                        <option th:each="category :${categories}"
                                th:value="${category.id}"
                                th:text="${category.name}"
                        >
                    </select>
                </div>
                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="number" class="form-control" required th:field="*{price}" name="price" id="price"
                           placeholder="Price">
                </div>
                <div class="form-group">
                    <label for="weight">Weight in grams</label>
                    <input type="number" class="form-control" required th:field="*{weight}" name="weight" id="weight"
                           placeholder="Weight">
                </div>
                <div class="form-group">
                    <label for="description">Product Description</label>
                    <textarea class="form-control" rows="5" th:field="*{description}" name="description" id="description"></textarea>
                </div>
            </div>
            
            
            
            <div class="form-group">
                    <label for="quantity">Quantity</label>
                    <input type="number" class="form-control" required th:field="*{quantity}" name="quantity" id="quantity"
                           placeholder="Quantity">
                </div>
            
            
            
            
            
            
            <div class="col-sm-5">
                <p>Product Image</p>
                <div class="custom-file">
                    <input type="file"  class="custom-file-input" name="productImage" accept="image/jpeg, image/png, image/jpg"  id="productImage"/>
                    <label class="custom-file-label" for="productImage">Choose file</label>
                </div>
                <div class="form-group">
                    <img src="#" id="imgPreview" height="100px" width="100px" th:src="@{${'/productImages/' + productDTO.imageName}}" style="margin-top: 20px" alt=" ">
                </div>
                <input type="hidden" name="imgName" th:value="${productDTO.imageName}">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form>
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
<script>
    function readURL(input){
        if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function(e){
                $('#imgPreview').attr('src', e.target.result).width(100).height(100).border-radius(50%);
            }
            reader.readAsDataURL(input.files[0])
        }
    }
    $('#productImage').change(function(){
        readURL(this);
    });
    $(".custom-file-input").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>
</body>
</html>