<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page contentType="text/html;charset=UTF-8" language="java" %>


        <!-- tag thu nhat dung de dung path, form
        tag thu hai dung de render du lieu ra bang -->
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link rel="stylesheet" href="/css/demos.css">
            <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
            <link href="/css/styles.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">

        </head>
        </head>

        <body>
            <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
                <!-- Navbar Brand-->
                <a class="navbar-brand ps-3" href="index.html">Laptop Shop</a>
                <!-- Sidebar Toggle-->
                <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
                        class="fas fa-bars"></i></button>
                <!-- Navbar Search-->
                <div
                    style="display: flex; justify-content: center; align-items: center; margin-top: 1.5%; margin-left: 33%;">
                    <p style="color: aliceblue;">Hi, ${currentUserLogin}</p>
                </div>
                <!-- Navbar-->

            </nav>
            <div id="layoutSidenav">
                <div id="layoutSidenav_nav">
                    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                        <div class="sb-sidenav-menu">
                            <div class="nav">
                                <div class="sb-sidenav-menu-heading">Cơ bản</div>
                                <a class="nav-link" href="/adminDash">
                                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                    Dashboard
                                </a>
                                <a class="nav-link" href="/table/user">
                                    <div class=" sb-nav-link-icon"><i class="fa-solid fa-users"></i>
                                    </div>
                                    Quản lý người dùng
                                </a>
                                <a class="nav-link" href="/adminProduct">
                                    <div class="sb-nav-link-icon"><i class="fa-brands fa-product-hunt"></i></div>
                                    Quản lý sản phẩm
                                </a>
                                <a class="nav-link" href="/adminOrder">
                                    <div class="sb-nav-link-icon"><i class="fa-regular fa-newspaper"></i></div>
                                    Quản lý đơn hàng
                                </a>

                            </div>
                            <div class="nav">
                                <div class="sb-sidenav-menu-heading">Khác</div>
                                <a class="nav-link" href="/cmtCus">
                                    <div class="sb-nav-link-icon"><i class="fa-solid fa-house-user"></i></i></div>
                                    Phản hồi khách hàng

                                </a>
                            </div>
                        </div>
                        <div class="sb-sidenav-footer">
                            <div class="small">Logged in as:</div>
                            Start Bootstrap
                        </div>
                    </nav>
                </div>
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <section class="vh-100">
                                <div class="container-fluid h-custom">
                                    <div class="row d-flex justify-content-center align-items-center h-100">
                                        <div class="col-md-9 col-lg-6 col-xl-5">
                                            <img src="/images/product/not-allow.svg" class="img-fluid"
                                                alt="Sample image">
                                        </div>
                                        <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                                            <form:form method="get" action="/table/user" modelAttribute="current">



                                                <div class="alert alert-success" role="alert">
                                                    <h4 class="alert-heading">Lưu ý!</h4>
                                                    <p>Đây là tài khoản <span style="color: red">Quản trị viên</span>, Bạn không thể xóa nó<span></span>
                                                    </p>
                                                    <form:input type="text" value="${current.id}" style="display: none;"
                                                        path="id" />
                                                    <p>Bạn có cần quay lại không ?</p>
                                                    <hr>
                                                    <div style="display: flex; gap: 17px">
                                                        <button type="submit" class="btn btn-danger">Quay lại</button>
                                                    </div>
                                                </div>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </main>
                    <footer class="py-4 bg-light mt-auto">
                        <div class="container-fluid px-4">
                            <div class="d-flex align-items-center justify-content-between small">
                                <div class="text-muted">Copyright &copy; Your Website 2023</div>
                                <div>
                                    <a href="#">Privacy Policy</a>
                                    &middot;
                                    <a href="#">Terms &amp; Conditions</a>
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>


            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                crossorigin="anonymous"></script>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                crossorigin="anonymous"></script>
            <script src="/js/scripts.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                crossorigin="anonymous"></script>
            <script src="/js/chart-area-demo.js"></script>
            <script src="/js/chart-bar-demo.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                crossorigin="anonymous"></script>
            <script src="/js/datatables-simple-demo.js"></script>

        </body>

        </html>