<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="title" required="true" type="java.lang.String" %>
<%@ attribute name="content" fragment="true" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Flowers Shop</title>
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />


    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Poppins:400,600,700&display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->

    <link href="${pageContext.request.contextPath}/assets/user/dist/css/style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/assets/user/dist/css/style1.css" rel="stylesheet" />

    <!-- responsive style -->
    <link href="${pageContext.request.contextPath}/assets/user/dist/css/style.scss" rel="stylesheet" />

    <link href="${pageContext.request.contextPath}/assets/user/dist/css/style.css.map.css" rel="stylesheet" />

    <link href="${pageContext.request.contextPath}/assets/user/dist/css/responsive.css" rel="stylesheet" />
</head>
<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/user/dist/css/bootstrap.css" />

<!-- Topbar Start -->
<div class="container-fluid bg-primary py-3 d-none d-md-block">
    <div class="container">
        <div class="row">
            <div class="col-md-6 text-center text-lg-left mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center">
                    <a class="text-white pr-3"  href="${pageContext.request.contextPath}/login">Login</a>
                    <span class="text-white">|</span>
                    <a class="text-white px-3" href="${pageContext.request.contextPath}/register">Register</a>
                </div>
            </div>
            <div class="col-md-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <a class="text-white px-3"  href="${pageContext.request.contextPath}/profile">
                        <i class="far fa-user"></i>
                    </a>
                    <a class="text-white px-3" href="${pageContext.request.contextPath}/addtocart">
                        <i class="fas fa-shopping-cart"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Navbar Start -->
<div class="container-fluid position-relative nav-bar p-0">
    <div class="container-lg position-relative p-0 px-lg-3" style="z-index: 9;">
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow p-lg-0">
            <a href="index.html" class="navbar-brand d-block d-lg-none">
                <h1 class="m-0 display-4 text-primary"><span class="text-secondary"></span>Sunflower</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav ml-auto py-0">
                    <a class="nav-item nav-link active" href="${pageContext.request.contextPath}/home">Home<span class="sr-only">(current)</span></a>
                    <a  class="nav-item nav-link" href="${pageContext.request.contextPath}/about">About</a>
                    <div class="dropdown">
                        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/product">Product</a>
                        <div class="dropdown-content">
                            <a href="#">Congratulations Flowers</a>
                            <a href="#">Wedding Flowers</a>
                            <a href="#">Consolation Flowers</a>
                            <a href="#">Bouquet</a>
                            <a href="#">Basket of Flowers</a>
                            <a href="#">Vase of Flowers</a>
                            <a href="#">Accessories</a>
                        </div>
                    </div>
                </div>
                <a href="index.html" class="navbar-brand mx-5 d-none d-lg-block">
                    <h1 class="m-0 display-4 text-primary"><span class="text-secondary"></span>LOTUS</h1>
                </a>
                <div class="navbar-nav mr-auto py-0">
                    <a  class="nav-item nav-link" href="${pageContext.request.contextPath}/Service" >Service</a>
                    <a  class="nav-item nav-link" href="${pageContext.request.contextPath}/contact">Contact</a>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- Navbar End -->
</header>

<section class="breadcrumb-section set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa1.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Listen to Flowers Tell</h2>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- about section -->
    <jsp:invoke fragment="content"></jsp:invoke>
    <%--    <div class="container">--%>
    <%--        <div class="row">--%>
    <%--            <div class="col-md-6 col-xl-7">--%>
    <%--                <div class="img-box">--%>
    <%--                    <img src="${pageContext.request.contextPath}/assets/user/dist/images/about-img.png" alt="" />--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--            <div class="col-md-5 col-xl-5">--%>
    <%--                <div class="detail_box">--%>
    <%--                    <div class="heading_container justify-content-end">--%>
    <%--                        <h2>--%>
    <%--                            About Flowers--%>
    <%--                        </h2>--%>
    <%--                    </div>--%>
    <%--                    <p>--%>
    <%--                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the--%>
    <%--                        industry's standard dummy text Lorem Ipsum is simply dummy text of the printing and typesetting industry.--%>
    <%--                        Lorem Ipsum has been the industry's standard dummy text Lorem Ipsum is simply dummy text of the printing--%>
    <%--                        and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since ever since--%>
    <%--                        ever since--%>
    <%--                    </p>--%>
    <%--                </div>--%>
    <%--            </div>--%>

    <%--        </div>--%>
    <%--    </div>--%>

<!-- end about section -->
<!-- info section -->
<section class="info_section layout_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="info_logo">
                    <h5>
                        Flower Shop
                    </h5>
                    <p>
                        Ho Chi Minh City fresh flower shop Qflower is proud to be the convergence of countless flowers that are meticulously selected and made by the delicate and professional hands of experienced artisans. Help you send a gift of fresh flowers, bring messages and meaningful wishes to the recipient.
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info_links pl-lg-5">
                    <h5>
                        Policy
                    </h5>
                    <ul>
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/ShippingPolicy">
                                Shipping Policy
                            </a>
                        </li>
                        <li  class="active" >
                            <a href="${pageContext.request.contextPath}/PrivacyPolicy">
                                Privacy Policy
                            </a>
                        </li>
                        <li  class="active">
                            <a href="${pageContext.request.contextPath}/Introduce">
                                Introduce
                            </a>
                        </li >

                    </ul>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info_insta">
                    <h5>
                        Facebook
                    </h5>
                    <div class="active">
                        <p href="">
                            Facebook
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info_insta">
                    <h5>
                        Contact
                    </h5>
                    <div>
                        <img src="${pageContext.request.contextPath}/assets/user/dist/images/location-white.png" alt="">
                        <p>
                            91/1 Nguyễn Hữu Cảnh, Phường 22, Quận Bình Thạnh, TPHCM
                        </p>
                    </div>
                    <div>
                        <img src="${pageContext.request.contextPath}/assets/user/dist/images/telephone-white.png" alt="">
                        <p>
                            0919 89 79 69
                        </p>
                    </div>
                    <div>
                        <img src="${pageContext.request.contextPath}/assets/user/dist/images/envelope-white.png" alt="">
                        <p>
                            group02@gmail.com
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- end info_section -->

<!-- footer section -->
<footer class="container-fluid footer_section">
    <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://html.design/">Free Html Templates</a>
    </p>
</footer>
<!-- footer section -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/user/dist/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/user/dist/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/user/dist/js/custom.js"></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
</script>
<!-- End Google Map -->

</html>