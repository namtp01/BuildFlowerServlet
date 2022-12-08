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
    <link href="${pageContext.request.contextPath}/assets/user/dist/css/style1.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/assets/user/dist/css/style.css" rel="stylesheet" />
    <!-- responsive style -->

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
                        <i class="fas fa-search"></i>
                    </a>
                    <a class="text-white px-3" href="">
                        <i class="far fa-user"></i>
                    </a>
                    <a class="text-white px-3" href="">
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
                    <a  class="nav-item nav-link" href="${pageContext.request.contextPath}/productdetail">ProductDetail</a>
                    <a href="gallery.html" class="nav-item nav-link">Gallery</a>
                    <a  class="nav-item nav-link" href="${pageContext.request.contextPath}/contact">Contact</a>
                </div>
            </div>
        </nav>
    </div>
</div>


<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/img/sanpham.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Hoa Bó</h2>
                    <div class="breadcrumb__option">
                        <a href="${pageContext.request.contextPath}/home">Home</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <jsp:invoke fragment="content"></jsp:invoke>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-3 col-md-5">--%>
<%--                <div class="sidebar">--%>
<%--                    <div class="sidebar__item">--%>
<%--                        <h4>Department</h4>--%>
<%--                        <ul>--%>
<%--                            <li><a href="${pageContext.request.contextPath}/hoabo">Hoa Bó</a></li>--%>
<%--                            <li><a href="${pageContext.request.contextPath}/hoabinh">Bình Hoa</a></li>--%>
<%--                            <li><a href="giohoa.html">Giỏ Hoa</a></li>--%>

<%--                            <li><a href="hophoa.html">Hộp Hoa</a></li>--%>
<%--                            <li><a href="kehoachucmung.html">Kệ Hoa Chúc Mừng</a></li>--%>
<%--                            <li><a href="kehoachiabuon.html">Kệ Hoa Chia Buồn</a></li>--%>
<%--                            <li><a href="hoacuoi.html">Hoa Cưới</a></li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                    <div class="sidebar__item">--%>
<%--                        <h4>Price</h4>--%>
<%--                        <div class="price-range-wrap">--%>
<%--                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"--%>
<%--                                 data-min="10" data-max="540">--%>
<%--                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>--%>
<%--                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>--%>
<%--                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>--%>
<%--                            </div>--%>
<%--                            <div class="range-slider">--%>
<%--                                <div class="price-input">--%>
<%--                                    <input type="text" id="minamount">--%>
<%--                                    <input type="text" id="maxamount">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="sidebar__item sidebar__item__color--option">--%>
<%--                        <h4>Colors</h4>--%>
<%--                        <div class="sidebar__item__color sidebar__item__color--white">--%>
<%--                            <label for="white">--%>
<%--                                White--%>
<%--                                <input type="radio" id="white">--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                        <div class="sidebar__item__color sidebar__item__color--gray">--%>
<%--                            <label for="gray">--%>
<%--                                Gray--%>
<%--                                <input type="radio" id="gray">--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                        <div class="sidebar__item__color sidebar__item__color--red">--%>
<%--                            <label for="red">--%>
<%--                                Red--%>
<%--                                <input type="radio" id="red">--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                        <div class="sidebar__item__color sidebar__item__color--black">--%>
<%--                            <label for="black">--%>
<%--                                Black--%>
<%--                                <input type="radio" id="black">--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                        <div class="sidebar__item__color sidebar__item__color--blue">--%>
<%--                            <label for="blue">--%>
<%--                                Blue--%>
<%--                                <input type="radio" id="blue">--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                        <div class="sidebar__item__color sidebar__item__color--green">--%>
<%--                            <label for="green">--%>
<%--                                Green--%>
<%--                                <input type="radio" id="green">--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="sidebar__item">--%>
<%--                        <h4>Popular Size</h4>--%>
<%--                        <div class="sidebar__item__size">--%>
<%--                            <label for="large">--%>
<%--                                Large--%>
<%--                                <input type="radio" id="large">--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                        <div class="sidebar__item__size">--%>
<%--                            <label for="medium">--%>
<%--                                Medium--%>
<%--                                <input type="radio" id="medium">--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                        <div class="sidebar__item__size">--%>
<%--                            <label for="small">--%>
<%--                                Small--%>
<%--                                <input type="radio" id="small">--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                        <div class="sidebar__item__size">--%>
<%--                            <label for="tiny">--%>
<%--                                Tiny--%>
<%--                                <input type="radio" id="tiny">--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="sidebar__item">--%>
<%--                        <div class="latest-product__text">--%>
<%--                            <h4>Latest Products</h4>--%>
<%--                            <div class="latest-product__slider owl-carousel">--%>
<%--                                <div class="latest-prdouct__slider__item">--%>
<%--                                    <a href="#" class="latest-product__item">--%>
<%--                                        <div class="latest-product__item__pic">--%>
<%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa1.png" alt="">--%>
<%--                                        </div>--%>
<%--                                        <div class="latest-product__item__text">--%>
<%--                                            <h6>Crab Pool Security</h6>--%>
<%--                                            <span>$30.00</span>--%>
<%--                                        </div>--%>
<%--                                    </a>--%>
<%--                                    <a href="#" class="latest-product__item">--%>
<%--                                        <div class="latest-product__item__pic">--%>
<%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa2.png" alt="">--%>
<%--                                        </div>--%>
<%--                                        <div class="latest-product__item__text">--%>
<%--                                            <h6>Crab Pool Security</h6>--%>
<%--                                            <span>$30.00</span>--%>
<%--                                        </div>--%>
<%--                                    </a>--%>
<%--                                    <a href="#" class="latest-product__item">--%>
<%--                                        <div class="latest-product__item__pic">--%>
<%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa3.png" alt="">--%>
<%--                                        </div>--%>
<%--                                        <div class="latest-product__item__text">--%>
<%--                                            <h6>Crab Pool Security</h6>--%>
<%--                                            <span>$30.00</span>--%>
<%--                                        </div>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                                <div class="latest-prdouct__slider__item">--%>
<%--                                    <a href="#" class="latest-product__item">--%>
<%--                                        <div class="latest-product__item__pic">--%>
<%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa4.png" alt="">--%>
<%--                                        </div>--%>
<%--                                        <div class="latest-product__item__text">--%>
<%--                                            <h6>Crab Pool Security</h6>--%>
<%--                                            <span>$30.00</span>--%>
<%--                                        </div>--%>
<%--                                    </a>--%>
<%--                                    <a href="#" class="latest-product__item">--%>
<%--                                        <div class="latest-product__item__pic">--%>
<%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa5.png" alt="">--%>
<%--                                        </div>--%>
<%--                                        <div class="latest-product__item__text">--%>
<%--                                            <h6>Crab Pool Security</h6>--%>
<%--                                            <span>$30.00</span>--%>
<%--                                        </div>--%>
<%--                                    </a>--%>
<%--                                    <a href="#" class="latest-product__item">--%>
<%--                                        <div class="latest-product__item__pic">--%>
<%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa6.png" alt="">--%>
<%--                                        </div>--%>
<%--                                        <div class="latest-product__item__text">--%>
<%--                                            <h6>Crab Pool Security</h6>--%>
<%--                                            <span>$30.00</span>--%>
<%--                                        </div>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-9 col-md-7">--%>
<%--                <div class="product__discount">--%>
<%--                    <div class="section-title product__discount__title">--%>
<%--                        <h2>Sale Off</h2>--%>
<%--                    </div>--%>
<%--                    <div class="row">--%>
<%--                        <div class="product__discount__slider owl-carousel">--%>
<%--                            <div class="col-lg-4">--%>
<%--                                <div class="product__discount__item">--%>
<%--                                    <div class="product__discount__item__pic set-bg"--%>
<%--                                         data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa7.png">--%>
<%--                                        <div class="product__discount__percent">-20%</div>--%>
<%--                                        <ul class="product__item__pic__hover">--%>
<%--                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                    <div class="product__discount__item__text">--%>
<%--                                        <span>Dried Fruit</span>--%>
<%--                                        <h5><a href="#">Raisin’n’nuts</a></h5>--%>
<%--                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-lg-4">--%>
<%--                                <div class="product__discount__item">--%>
<%--                                    <div class="product__discount__item__pic set-bg"--%>
<%--                                         data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa8.png">--%>
<%--                                        <div class="product__discount__percent">-20%</div>--%>
<%--                                        <ul class="product__item__pic__hover">--%>
<%--                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                    <div class="product__discount__item__text">--%>
<%--                                        <span>Vegetables</span>--%>
<%--                                        <h5><a href="#">Vegetables’package</a></h5>--%>
<%--                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-lg-4">--%>
<%--                                <div class="product__discount__item">--%>
<%--                                    <div class="product__discount__item__pic set-bg"--%>
<%--                                         data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa9.png">--%>
<%--                                        <div class="product__discount__percent">-20%</div>--%>
<%--                                        <ul class="product__item__pic__hover">--%>
<%--                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                    <div class="product__discount__item__text">--%>
<%--                                        <span>Dried Fruit</span>--%>
<%--                                        <h5><a href="#">Mixed Fruitss</a></h5>--%>
<%--                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-lg-4">--%>
<%--                                <div class="product__discount__item">--%>
<%--                                    <div class="product__discount__item__pic set-bg"--%>
<%--                                         data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa10.png">--%>
<%--                                        <div class="product__discount__percent">-20%</div>--%>
<%--                                        <ul class="product__item__pic__hover">--%>
<%--                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                    <div class="product__discount__item__text">--%>
<%--                                        <span>Dried Fruit</span>--%>
<%--                                        <h5><a href="#">Raisin’n’nuts</a></h5>--%>
<%--                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-lg-4">--%>
<%--                                <div class="product__discount__item">--%>
<%--                                    <div class="product__discount__item__pic set-bg"--%>
<%--                                         data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa11.png">--%>
<%--                                        <div class="product__discount__percent">-20%</div>--%>
<%--                                        <ul class="product__item__pic__hover">--%>
<%--                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                    <div class="product__discount__item__text">--%>
<%--                                        <span>Dried Fruit</span>--%>
<%--                                        <h5><a href="#">Raisin’n’nuts</a></h5>--%>
<%--                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-lg-4">--%>
<%--                                <div class="product__discount__item">--%>
<%--                                    <div class="product__discount__item__pic set-bg"--%>
<%--                                         data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa12.png">--%>
<%--                                        <div class="product__discount__percent">-20%</div>--%>
<%--                                        <ul class="product__item__pic__hover">--%>
<%--                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                    <div class="product__discount__item__text">--%>
<%--                                        <span>Dried Fruit</span>--%>
<%--                                        <h5><a href="#">Raisin’n’nuts</a></h5>--%>
<%--                                        <div class="product__item__price">$30.00 <span>$36.00</span></div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="filter__item">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-lg-4 col-md-5">--%>
<%--                            <div class="filter__sort">--%>
<%--                                <span>Sort By</span>--%>
<%--                                <select>--%>
<%--                                    <option value="0">Default</option>--%>
<%--                                    <option value="0">Default</option>--%>
<%--                                </select>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-lg-4 col-md-4">--%>
<%--                            <div class="filter__found">--%>
<%--                                <h6><span>16</span> Products found</h6>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-lg-4 col-md-3">--%>
<%--                            <div class="filter__option">--%>
<%--                                <span class="icon_grid-2x2"></span>--%>
<%--                                <span class="icon_ul"></span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="row">--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa13.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa14.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa15.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa15.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa16.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa18.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa19.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa10.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa1.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa5.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>11--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa6.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-4 col-md-6 col-sm-6">--%>
<%--                        <div class="product__item">--%>
<%--                            <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa8.png">--%>
<%--                                <ul class="product__item__pic__hover">--%>
<%--                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
<%--                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                            <div class="product__item__text">--%>
<%--                                <h6><a href="#">Crab Pool Security</a></h6>--%>
<%--                                <h5>$30.00</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="product__pagination">--%>
<%--                    <a href="#">1</a>--%>
<%--                    <a href="#">2</a>--%>
<%--                    <a href="#">3</a>--%>
<%--                    <a href="#"><i class="fa fa-long-arrow-right"></i></a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
</section>
<!-- Product Section End -->



<!-- end gallery section -->


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