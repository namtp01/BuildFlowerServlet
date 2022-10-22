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

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/user/dist/css/bootstrap.min.css" />

    <!-- fonts style -->
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Poppins:400,600,700&display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/user/dist/css/style1.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/assets/user/dist/css/style.scss" rel="stylesheet" />
    <!-- responsive style -->
    <link href="${pageContext.request.contextPath}/assets/user/dist/css/responsive.css" rel="stylesheet" />
    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/dist/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/dist/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/dist/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/dist/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/dist/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/dist/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/dist/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/user/dist/css/style1.css" type="text/css">



</head>
<body class="sub_page">
<div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
        <div class="container">
            <nav class="navbar navbar-expand-lg custom_nav-container ">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/home">
            <span>
              Group02
            </span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="d-flex mx-auto flex-column flex-lg-row align-items-center">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="${pageContext.request.contextPath}/home">Trang Chủ <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/about"> Giới Thiệu </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/product"> Sản Phẩm </a>
                                <ul class="sub-menu">
                                    <li><a href="${pageContext.request.contextPath}/hoabo">Hoa Bó</a></li>
                                    <li><a href="${pageContext.request.contextPath}/hoabinh">Bình Hoa</a></li>
                                    <li><a href="">Giỏ Hoa</a></li>

                                    <li><a href="">Hộp Hoa</a></li>
                                    <li><a href="">Kệ Hoa Chúc Mừng</a></li>
                                    <li><a href="">Kệ Hoa Chia Buồn</a></li>
                                    <li><a href="">Hoa Cưới</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/contact">Nghe Hoa Kể</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/contact">Liên Hệ</a>
                            </li>
                        </ul>
                    </div>
                    <div class="quote_btn-container ">
                        <a href="">
                            Log in
                        </a>
                        <a href="">
                            <img src="${pageContext.request.contextPath}/assets/user/dist/images/cart.png" alt="">
                        </a>
                        <form class="form-inline">
                            <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- end header section -->
</div>



<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/img/sanpham.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Hoa Shop</h2>
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
                <div class="info_contact">
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
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="${pageContext.request.contextPath}/assets/user/dist/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/user/dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/user/dist/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/user/dist/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/user/dist/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/assets/user/dist/js/mixitup.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/user/dist/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/user/dist/js/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/user/dist/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/user/dist/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/user/dist/js/custom.js"></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
</script>
<!-- End Google Map -->

</body>

</html>