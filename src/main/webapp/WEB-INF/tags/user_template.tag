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

    <!-- slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />


    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Poppins:400,600,700&display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/user/dist/css/style.css" rel="stylesheet" />
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
                    <a class="text-white pr-3" href="">Login</a>
                    <span class="text-white">|</span>
                    <a class="text-white px-3" href="">Register</a>
                </div>
            </div>
            <div class="col-md-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <a class="text-white px-3" href="">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-white px-3" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-white px-3" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-white px-3" href="">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-white pl-3" href="">
                        <i class="fab fa-youtube"></i>
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
                <h1 class="m-0 display-4 text-primary"><span class="text-secondary"></span>FLOWER</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav ml-auto py-0">
                    <a class="nav-item nav-link active" href="${pageContext.request.contextPath}/home">Home<span class="sr-only">(current)</span></a>
                    <a  class="nav-item nav-link" href="${pageContext.request.contextPath}/about">About</a>
                    <a  class="nav-item nav-link" href="${pageContext.request.contextPath}/product">Product</a>
                </div>
                <a href="index.html" class="navbar-brand mx-5 d-none d-lg-block">
                    <h1 class="m-0 display-4 text-primary"><span class="text-secondary">i</span>FLOWERS</h1>
                </a>
                <div class="navbar-nav mr-auto py-0">
                    <a href="service.html" class="nav-item nav-link">Service</a>
                    <a href="gallery.html" class="nav-item nav-link">Gallery</a>
                    <a href="contact.html" class="nav-item nav-link">Contact</a>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- Navbar End -->
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section position-relative">
        <jsp:invoke fragment="content"></jsp:invoke>

        <%--        <div class="slider_number-container ">--%>
        <%--            <div class="number-box">--%>
        <%--          <span>--%>
        <%--            01--%>
        <%--          </span>--%>
        <%--                <hr>--%>
        <%--                <span>--%>
        <%--            02--%>
        <%--          </span>--%>
        <%--            </div>--%>
        <%--        </div>--%>
        <%--        <div class="container">--%>
        <%--            <div class="row">--%>
        <%--                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">--%>
        <%--                    <div class="carousel-inner">--%>
        <%--                        <div class="carousel-item active">--%>
        <%--                            <div class="col-lg-7 col-md-8">--%>
        <%--                                <div class="detail_box">--%>
        <%--                                    <h2>--%>
        <%--                                        Welcome--%>
        <%--                                    </h2>--%>
        <%--                                    <h1>--%>
        <%--                                        Daisy Shop--%>
        <%--                                    </h1>--%>
        <%--                                    <p>--%>
        <%--                                        Hoa là ánh nắng mặt trời, thức ăn và thuốc cho tâm hồn giúp cho mọi người tốt hơn, hạnh phúc hơn, và hữu ích hơn.--%>
        <%--                                    </p>--%>
        <%--                                    <div>--%>
        <%--                                        <a href="">Buy Now</a>--%>
        <%--                                    </div>--%>
        <%--                                </div>--%>
        <%--                            </div>--%>
        <%--                        </div>--%>
        <%--                        <div class="carousel-item">--%>
        <%--                            <div class="col-lg-6 col-md-8">--%>
        <%--                                <div class="detail_box">--%>
        <%--                                    <h2>--%>
        <%--                                        Welcome--%>
        <%--                                    </h2>--%>
        <%--                                    <h1>--%>
        <%--                                        Daisy Shop--%>
        <%--                                    </h1>--%>
        <%--                                    <p>--%>
        <%--                                        Hoa là ánh nắng mặt trời, thức ăn và thuốc cho tâm hồn giúp cho mọi người tốt hơn, hạnh phúc hơn, và hữu ích hơn.--%>
        <%--                                    </p>--%>
        <%--                                    <div>--%>
        <%--                                        <a href="">Buy Now</a>--%>
        <%--                                    </div>--%>
        <%--                                </div>--%>
        <%--                            </div>--%>
        <%--                        </div>--%>
        <%--                        <div class="carousel-item">--%>
        <%--                            <div class="col-lg-6 col-md-8">--%>
        <%--                                <div class="detail_box">--%>
        <%--                                    <h2>--%>
        <%--                                        Welcome--%>
        <%--                                    </h2>--%>
        <%--                                    <h1>--%>
        <%--                                        Flowers shop--%>
        <%--                                    </h1>--%>
        <%--                                    <p>--%>
        <%--                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been--%>
        <%--                                        the--%>
        <%--                                        industry's--%>
        <%--                                        standard dummy text ever since--%>
        <%--                                    </p>--%>
        <%--                                    <div>--%>
        <%--                                        <a href="">Buy Now</a>--%>
        <%--                                    </div>--%>
        <%--                                </div>--%>
        <%--                            </div>--%>
        <%--                        </div>--%>
        <%--                    </div>--%>
        <%--                    <div class="carousel_btn-container">--%>
        <%--                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">--%>
        <%--                            <span class="sr-only">Previous</span>--%>
        <%--                        </a>--%>
        <%--                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">--%>
        <%--                            <span class="sr-only">Next</span>--%>
        <%--                        </a>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </div>--%>

    </section
    <img src="${pageContext.request.contextPath}/assets/user/dist/images/home.png">
    <!-- end slider section -->
</div>

<!-- about section -->
<section class="about_section ">
    <div class="section_number">
        01
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-xl-7">
                <div class="img-box">
                    <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoa5.png" alt="" />
                </div>
            </div>
            <div class="col-md-5 col-xl-5">
                <div class="detail_box">
                    <div class="heading_container justify-content-end">
                        <h2>
                            About Flowers
                        </h2>
                    </div>
                    <p>
                        Hoa Cúc Họa Mi thường được sử dụng trong các đám cưới vì hoa đại diện của tình yêu lâu dài, vĩnh cửu, mong manh, thuần khiết, hoa còn là biểu tượng của hơi trẻ thơ. Trong ý nghĩa các loài hoa cưới phổ biến thì Cúc Họa Mi tượng trưng cho tình yêu tinh khôi, giản dị mà rất đỗi chân thành.
                    </p>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- end about section -->

<!-- why section -->
<section class="why_section layout_padding">
    <div class="section_number">
        02
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2>
                    Tại sao chọn chúng tôi
                </h2>
                <p>
                    Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical
                    Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at
                    Hampden-Sydney College in Virginia, looked up one of the more obscure Latin wordsContrary to popular belief,
                    Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,
                    making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,
                    looked up one of the more obscure Latin words
                </p>
                <div>
                    <a href="">
                        Read More
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- end why section -->

<!-- gallery section -->
<section class="gallery_section layout_padding">
    <div class="section_number">
        03
    </div>
    <div class="heading_container justify-content-center">
        <h2>
            Our Gallery
        </h2>
    </div>
    <div class="container">
        <div class="img_container">
            <div class="box-1">
                <div class="box-1-container">
                    <div class="b-1">
                        <div class="img-box">
                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoa1.png" alt="">
                        </div>
                        <div class="img-box">
                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoa2.png" alt="">
                        </div>
                    </div>
                    <div class="b-2">
                        <div class="img-box">
                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoa3.png" alt="">
                        </div>
                        <div class="img-box">
                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoa4.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="b-3">
                    <div class="img-box">
                        <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoa5.png" alt="">
                    </div>
                </div>
            </div>
            <div class="box-2">
                <div class="img-box">
                    <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoa6.png" alt="">
                </div>
                <div class="img-box">
                    <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoa7.png" alt="">
                </div>
                <div class="img-box flex-grow-1">
                    <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoa8.png" alt="">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end gallery section -->

<!-- client section -->

<section class="client_section layout_padding">
    <div class="container">
        <div class="heading_container justify-content-center">
            <h2>
                Khách hàng của chúng tôi nói gì
            </h2>
            <div class="section_number">
                04
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="client_box">
                    <div class="detail_box">
                        <div class="img_box">
                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/huong.png">
                        </div>
                        <h5>
                            Huỳnh Quên
                        </h5>
                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of
                            classical Latin literature from 45 BC, making it over </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="client_box">
                    <div class="detail_box">
                        <div class="img_box">
                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/thaothao.png">
                        </div>
                        <h5>
                            Uống Nước Mía
                        </h5>
                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of
                            classical Latin literature from 45 BC, making it over </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>






<!-- end arrange section -->

<!-- contact section -->

<section class="contact_section layout_padding">
    <div class="section_number">
        05
    </div>
    <div class="container ">
        <div class="heading_container justify-content-center">
            <h2 class="">
                Liên Hệ
            </h2>
        </div>

    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <form action="">
                    <div>
                        <input type="text" placeholder="Name" />
                    </div>
                    <div>
                        <input type="email" placeholder="Email" />
                    </div>
                    <div>
                        <input type="text" placeholder="Pone Number" />
                    </div>
                    <div>
                        <input type="text" class="message-box" placeholder="Message" />
                    </div>
                    <div class="d-flex  mt-4 ">
                        <button>
                            SEND
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- end contact section -->

<!-- map section -->

<div class="map_section">
    <div class="map_container">
        <div class="map">
            <div id="googleMap"></div>
        </div>
    </div>
</div>

<!-- end map section -->

<!-- info section -->
<section class="info_section layout_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="info_logo">
                    <h5>
                        Tiệm Hoa
                    </h5>
                    <p>
                        There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info_links pl-lg-5">
                    <h5>
                        Chính Sách
                    </h5>
                    <ul>
                        <li class="active">
                            <a href="">
                                Chính Sách vận chuyển
                            </a>
                        </li>
                        <li  class="active" >
                            <a href="">
                                Chính Sách bảo mật
                            </a>
                        </li>
                        <li  class="active">
                            <a href="">
                                Giới thiệu
                            </a>
                        </li >
                        <li class="active">
                            <a href="">
                                Quy định và Chính Sách
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info_insta">
                    <h5>
                        Facebook
                    </h5>
                    <div class="active">
                        <a href="">
                            Facebook
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info_insta">
                    <h5>
                        Liên Hệ
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