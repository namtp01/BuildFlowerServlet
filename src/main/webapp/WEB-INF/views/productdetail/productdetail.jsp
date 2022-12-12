<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:productdeail_template title="ProductDetail">
    <jsp:attribute name="content">
    <!-- Shop Detail Start -->
    <div class="container-fluid py-5">
      <div class="row px-xl-5">
        <div class="col-lg-5 pb-5">
          <div id="product-carousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner border">
<%--              <div class="carousel-item active">--%>
<%--                <img class="w-100 h-100"  src="${pageContext.request.contextPath}/assets/user/dist/images/binhhoa/binhhoa8.png" alt="Image">--%>
<%--              </div>--%>
<%--              <div class="carousel-item">--%>
<%--                <img class="w-100 h-100"  src="${pageContext.request.contextPath}/assets/user/dist/images/binhhoa/binhhoa1.png" alt="Image">--%>
<%--              </div>--%>
<%--              <div class="carousel-item">--%>
<%--                <img class="w-100 h-100"  src="${pageContext.request.contextPath}/assets/user/dist/images/binhhoa/binhhoa3.png" alt="Image">--%>
<%--              </div>--%>
              <div class="carousel-item active" >
                <img class="w-100 h-100"  src="${detail.image}" alt="">
              </div>
            </div>
            <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
              <i class="fa fa-2x fa-angle-left text-dark"></i>
            </a>
            <a class="carousel-control-next" href="#product-carousel" data-slide="next">
              <i class="fa fa-2x fa-angle-right text-dark"></i>
            </a>
          </div>
        </div>

        <div class="col-lg-7 pb-5">
          <h8 class="font-weight-semi-bold">${detail.name}</h8>
          <div class="d-flex mb-3">
            <div class="text-primary mr-2">
              <small class="fas fa-star"></small>
              <small class="fas fa-star"></small>
              <small class="fas fa-star"></small>
              <small class="fas fa-star-half-alt"></small>
              <small class="far fa-star"></small>
            </div>
            <small class="pt-1">(50 Reviews)</small>
          </div>
          <h7 class="font-weight-semi-bold mb-4">${detail.price}</h7> <br>
          <h7 class="mb-4">${detail.description}</h7>
          <div class="d-flex mb-3">
            <p class="text-dark font-weight-medium mb-0 mr-3">Sizes:</p>
            <form>
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="size-1" name="size">
                <label class="custom-control-label" for="size-1">XS</label>
              </div>
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="size-2" name="size">
                <label class="custom-control-label" for="size-2">S</label>
              </div>
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="size-3" name="size">
                <label class="custom-control-label" for="size-3">M</label>
              </div>
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="size-4" name="size">
                <label class="custom-control-label" for="size-4">L</label>
              </div>
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="size-5" name="size">
                <label class="custom-control-label" for="size-5">XL</label>
              </div>
            </form>
          </div>
          <div class="d-flex mb-4">
            <p class="text-dark font-weight-medium mb-0 mr-3">Colors:</p>
            <form>
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="color-1" name="color">
                <label class="custom-control-label" for="color-1">Black</label>
              </div>
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="color-2" name="color">
                <label class="custom-control-label" for="color-2">White</label>
              </div>
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="color-3" name="color">
                <label class="custom-control-label" for="color-3">Red</label>
              </div>
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="color-4" name="color">
                <label class="custom-control-label" for="color-4">Blue</label>
              </div>
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="color-5" name="color">
                <label class="custom-control-label" for="color-5">Green</label>
              </div>
            </form>
          </div>
          <div class="d-flex align-items-center mb-4 pt-2">
            <div class="input-group quantity mr-3" style="width: 130px;">
              <div class="input-group-btn">
                <button class="btn btn-primary btn-minus" >
                  <i class="fa fa-minus"></i>
                </button>
              </div>
              <input type="text" class="form-control bg-secondary text-center" value="1">
              <div class="input-group-btn">
                <button class="btn btn-primary btn-plus">
                  <i class="fa fa-plus"></i>
                </button>
              </div>
            </div>
            <button class="btn btn-primary px-3"><a href="${pageContext.request.contextPath}/addtocart?action=buy&id=${detail.id}"><i class="fa fa-shopping-cart mr-1"></i></a>Add To Cart</button>
          </div>
        </div>
      </div>
      <div class="row px-xl-5">
        <div class="col">
          <div class="nav nav-tabs justify-content-center border-secondary mb-4">
            <h7 class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">Description</h7>
            <h7 class="nav-item nav-link" data-toggle="tab" href="#tab-pane-2">Information</h7>
            <h7 class="nav-item nav-link" data-toggle="tab" href="#tab-pane-3">Reviews (0)</h7>
          </div>
          <div class="tab-content">
            <div class="tab-pane fade show active" id="tab-pane-1">
              <h7 class="mb-3">${detail.description}</h7>
            </div>
            <div class="tab-pane fade" id="tab-pane-2">
              <h7 class="mb-3">${detail.details}</h7>
              <div class="row">
                <div class="col-md-6">
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item px-0">
                      Sit erat duo lorem duo ea consetetur, et eirmod takimata.
                    </li>
                    <li class="list-group-item px-0">
                      Amet kasd gubergren sit sanctus et lorem eos sadipscing at.
                    </li>
                    <li class="list-group-item px-0">
                      Duo amet accusam eirmod nonumy stet et et stet eirmod.
                    </li>
                    <li class="list-group-item px-0">
                      Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.
                    </li>
                  </ul>
                </div>
                <div class="col-md-6">
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item px-0">
                      Sit erat duo lorem duo ea consetetur, et eirmod takimata.
                    </li>
                    <li class="list-group-item px-0">
                      Amet kasd gubergren sit sanctus et lorem eos sadipscing at.
                    </li>
                    <li class="list-group-item px-0">
                      Duo amet accusam eirmod nonumy stet et et stet eirmod.
                    </li>
                    <li class="list-group-item px-0">
                      Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="tab-pane-3">
              <div class="row">
                <div class="col-md-6">
                  <h7 class="mb-4">1 review for "Colorful Stylish Shirt"</h7>
                  <div class="media mb-4">
                    <img src="${pageContext.request.contextPath}/assets/user/dist/images/Mark.png" alt="Image" class="img-fluid mr-3 mt-1" style="width: 45px;">
                    <div class="media-body">
                      <h7>John Doe<small> - <i>01 Jan 2045</i></small></h7>
                      <div class="text-primary mb-2">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <i class="far fa-star"></i>
                      </div>
                      <p>Diam amet duo labore stet elitr ea clita ipsum, tempor labore accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <h7 class="mb-4">Leave a review</h7>
                  <small>Your email address will not be published. Required fields are marked *</small>
                  <div class="d-flex my-3">
                    <p class="mb-0 mr-2">Your Rating * :</p>
                    <div class="text-primary">
                      <i class="far fa-star"></i>
                      <i class="far fa-star"></i>
                      <i class="far fa-star"></i>
                      <i class="far fa-star"></i>
                      <i class="far fa-star"></i>
                    </div>
                  </div>
                  <form>
                    <div class="form-group">
                      <label for="message">Your Review *</label>
                      <textarea id="message" cols="30" rows="5" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                      <label for="name">Your Name *</label>
                      <input type="text" class="form-control" id="name">
                    </div>
                    <div class="form-group">
                      <label for="email">Your Email *</label>
                      <input type="email" class="form-control" id="email">
                    </div>
                    <div class="form-group mb-0">
                      <input type="submit" value="Leave Your Review" class="btn btn-primary px-3">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Shop Detail End -->

    </jsp:attribute>
</mt:productdeail_template>
