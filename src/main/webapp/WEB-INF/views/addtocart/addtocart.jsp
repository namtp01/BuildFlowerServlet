<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<mt:contact_template title="Contact">
    <jsp:attribute name="content">
        <!-- Hero Section End -->
  <section class="contact_section layout_padding">
      <div class="container ">
          <div class="heading_container justify-content-center">
              <h2 class="">
                  Add To Cart
              </h2>
          </div>

      </div>
      <div class="card">
      <div class="row">
        <div class="col-md-8 cart">
            <c:forEach var="item" items="${sessionScope.cart }">
                <div class="row border-top border-bottom">
                    <div class="row main align-items-center">
                        <div class="col-2"><img class="img-fluid" src="${pageContext.request.contextPath}/assets/user/dist/images/hoabo/hoaboa9.png"></div>
                        <div class="col">
                            <div class="row text-muted">${item.product.name }</div>
                            <div class="row">Cotton Flower</div>
                        </div>
                        <div class="col">
                            <b href="#">-</b><b href="#" class="border">1</b><b href="#">+</b>
                        </div>
                        <div class="col">&euro; 44.00 <span class="close">&#10005;</span></div>
                    </div>
                </div>
            </c:forEach>


            <div class="back-to-shop"><a  href="${pageContext.request.contextPath}/home">&leftarrow;</a><span class="text-muted">Back to shop</span></div>
        </div>
        <div class="col-md-4 summary">
            <div><h5><b>Summary</b></h5></div>
            <hr>
            <div class="row">
                <div class="col" >ITEMS 3</div>
                <div class="col text-right">&euro; 132.00</div>
            </div>
            <form>
                <p>SHIPPING</p>
                <select><option class="text-muted">Standard-Delivery- &euro;5.00</option></select>
                <p>GIVE CODE</p>
                <input id="code" placeholder="Enter your code">
            </form>
            <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                <div class="col">TOTAL PRICE</div>
                <div class="col text-right">&euro; 137.00</div>
            </div>
            <a method="post" class="btn" href="${pageContext.request.contextPath}/authorize_payment">CHECKOUT</a>
        </div>
    </div>

   </div>
  </section>

    </jsp:attribute>
</mt:contact_template>
