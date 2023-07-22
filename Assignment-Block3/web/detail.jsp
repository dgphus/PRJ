<%-- 
    Document   : load
    Created on : Apr 23, 2023, 1:22:48 PM
    Author     : ROG STRIX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="Load">Home</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="Load">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                    <c:forEach items="${ListC}" var="o">
                                    <li><a class="dropdown-item" href="category?madm=${o.madm}">${o.tendm}</a></li>
                                    </c:forEach>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <form class="d-flex">
                                <input class="nav-link active" type="text" placeholder="Search">
                                <button class="nav-link active" type="button">Search</button>
                            </form>
                        </li>
                    </ul>

                    <ul class="navbar-nav navbar-right">
                        <c:if test="${sessionScope.acc == null}">
                            <li class="nav-item"><a class="nav-link active" aria-current="page" href="login">Login</a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc != null}">
                            <li class="nav-item"><a class="nav-link active" aria-current="page" href="logout">Logout</a></li>
                            <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Hello,${sessionScope.acc.tentk}</a></li>
                            <li class="nav-item"><a class="nav-link active" aria-current="page" href="crud">Manager</a></li>
                            </c:if>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Shop in style</h1>
                    <p class="lead fw-normal text-white-50 mb-0">You can't buy happiness, but you can buy Shoes and that's kind of the same thing.</p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/${detail.hinhanh}" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${detail.tensp}</h5>
                                </div>
                            </div>
                                <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${detail.mota}</h5>
                                </div>
                            </div>
                        </div>
                    </div>   
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &dphus - Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

