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

                    <a class="text-white px-3" href="">
                        <i class="fas fa-search"></i>
                    </a>
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
                    <a  class="nav-item nav-link" href="${pageContext.request.contextPath}/product">Product</a>
                </div>
                <a href="index.html" class="navbar-brand mx-5 d-none d-lg-block">
                    <h1 class="m-0 display-4 text-primary"><span class="text-secondary"></span>LOTUS</h1>
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
<!-- Navbar End -->


<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa1.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Hoa Shop</h2>
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
    <%--                            <li><a href="hoaboa.html">Hoa Bó</a></li>--%>
    <%--                            <li><a href="">Bình Hoa</a></li>--%>
    <%--                            <li><a href="">Giỏ Hoa</a></li>--%>

    <%--                            <li><a href="">Hộp Hoa</a></li>--%>
    <%--                            <li><a href="">Kệ Hoa Chúc Mừng</a></li>--%>
    <%--                            <li><a href="">Kệ Hoa Chia Buồn</a></li>--%>
    <%--                            <li><a href="">Hoa Cưới</a></li>--%>
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
    <%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/img/latest-product/lp-1.jpg" alt="">--%>
    <%--                                        </div>--%>
    <%--                                        <div class="latest-product__item__text">--%>
    <%--                                            <h6>Crab Pool Security</h6>--%>
    <%--                                            <span>$30.00</span>--%>
    <%--                                        </div>--%>
    <%--                                    </a>--%>
    <%--                                    <a href="#" class="latest-product__item">--%>
    <%--                                        <div class="latest-product__item__pic">--%>
    <%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/img/latest-product/lp-2.jpg" alt="">--%>
    <%--                                        </div>--%>
    <%--                                        <div class="latest-product__item__text">--%>
    <%--                                            <h6>Crab Pool Security</h6>--%>
    <%--                                            <span>$30.00</span>--%>
    <%--                                        </div>--%>
    <%--                                    </a>--%>
    <%--                                    <a href="#" class="latest-product__item">--%>
    <%--                                        <div class="latest-product__item__pic">--%>
    <%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/img/latest-product/lp-3.jpg" alt="">--%>
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
    <%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/img/latest-product/lp-1.jpg" alt="">--%>
    <%--                                        </div>--%>
    <%--                                        <div class="latest-product__item__text">--%>
    <%--                                            <h6>Crab Pool Security</h6>--%>
    <%--                                            <span>$30.00</span>--%>
    <%--                                        </div>--%>
    <%--                                    </a>--%>
    <%--                                    <a href="#" class="latest-product__item">--%>
    <%--                                        <div class="latest-product__item__pic">--%>
    <%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/img/latest-product/lp-2.jpg" alt="">--%>
    <%--                                        </div>--%>
    <%--                                        <div class="latest-product__item__text">--%>
    <%--                                            <h6>Crab Pool Security</h6>--%>
    <%--                                            <span>$30.00</span>--%>
    <%--                                        </div>--%>
    <%--                                    </a>--%>
    <%--                                    <a href="#" class="latest-product__item">--%>
    <%--                                        <div class="latest-product__item__pic">--%>
    <%--                                            <img src="${pageContext.request.contextPath}/assets/user/dist/img/latest-product/lp-3.jpg" alt="">--%>
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
    <%--                                         data-setbg="img/product/discount/pd-1.jpg">--%>
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
    <%--                                         data-setbg="img/product/discount/pd-2.jpg">--%>
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
    <%--                                         data-setbg="img/product/discount/pd-3.jpg">--%>
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
    <%--                                         data-setbg="img/product/discount/pd-4.jpg">--%>
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
    <%--                                         data-setbg="img/product/discount/pd-5.jpg">--%>
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
    <%--                                         data-setbg="img/product/discount/pd-6.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-1.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-2.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-3.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-4.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-5.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-6.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-7.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-8.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-9.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-10.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-11.jpg">--%>
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
    <%--                            <div class="product__item__pic set-bg" data-setbg="img/product/product-12.jpg">--%>
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


<!-- end arrange section -->


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