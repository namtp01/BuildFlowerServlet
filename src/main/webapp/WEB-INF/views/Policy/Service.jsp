<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:Policy_template title="Introduce">
    <jsp:attribute name="content">

  <section class="fruit_section layout_padding-top">
    <section class="breadcrumb-section set-bg" data-setbg="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa1.png">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <div class="breadcrumb__text">
              <h2>Service</h2>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="service_section layout_padding">
      <div class="container">
          <div class="row">
            <div class="col-md-4">
              <div class="box b-1">
                <div class="img-box">
                  <img src="${pageContext.request.contextPath}/assets/user/dist/images/introduce.png"  alt="">
                </div>
                <div class="detail-box">
                  <h8>
                    Introduce
                  </h8>
                  <div class="btn-box">
                    <a href="${pageContext.request.contextPath}/Introduce">
                      Read More
                    </a>
                    <hr>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="box b-2">
                <div class="img-box">
                  <img src="${pageContext.request.contextPath}/assets/user/dist/images/baomat.png" alt="">
                </div>
                <div class="detail-box">
                  <h8>
                   Privacy Policy
                  </h8>

                  <div class="btn-box">
                    <a href="${pageContext.request.contextPath}/PrivacyPolicy">
                      Read More
                    </a>
                    <hr>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="box b-3">
                <div class="img-box">
                  <img src="${pageContext.request.contextPath}/assets/user/dist/images/vanchuyen.png" alt="">
                </div>
                <div class="detail-box">
                  <h8>
                    Shipping Policy
                  </h8>

                  <div class="btn-box">
                    <a href="${pageContext.request.contextPath}/ShippingPolicy">
                      Read More
                    </a>
                    <hr>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

  </section>

  <!-- end contact section -->

    </jsp:attribute>
</mt:Policy_template>
