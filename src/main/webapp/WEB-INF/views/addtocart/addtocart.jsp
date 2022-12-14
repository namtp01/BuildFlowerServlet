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
            <c:set var="total" value="0"></c:set>
            <c:forEach var="item" items="${sessionScope.addtocart }" varStatus="i">
                <c:set var="total" value="${total + item.product.price * item.quantity }"></c:set>
                <div class="row border-top border-bottom">
                    <div class="row main align-items-center">
                        <div class="col-2"><img class="img-fluid" src="${item.product.image}"></div>
                        <div class="col">
                            <div class="row text-muted">${item.product.name }</div>
                            <div class="row">${item.product.name }</div>
                        </div>
                        <form method="post" action="${pageContext.request.contextPath }/addtocart?action=update&index=${i.index}">
<%--                            <b href="#">-</b><b href="#" class="border">${item.quantity }</b><b href="#">+</b>--%>
                            <div class="col">
                                <input class="span1" value="${item.quantity}" id="appendedInputButtons" type="number" min="1" name="quantity" required="required">
                            </div>
                            <div class="col">
                                <button class="btn" type="submit">
                                    <i class="fa fa-save"></i>
                                </button>
                            </div>
                            <div class="col">&euro; ${item.product.price }
                                <a class="close" href="${pageContext.request.contextPath }/addtocart?action=remove&index=${i.index}">&#10005;</a>
                            </div>
                        </form>
                    </div>
                </div>
            </c:forEach>
            <div class="back-to-shop"><a  href="${pageContext.request.contextPath}/product">&leftarrow;<span class="text-muted">Back to shop</span></a></div>
        </div>
        <div class="col-md-4 summary">
            <div><h5><b>Summary</b></h5></div>
            <hr>
            <div class="row">
                <div class="col" >ITEMS ${addtocart != null ? addtocart.size() : 0 }</div>
                <div class="col text-right">&euro; $${total}</div>
            </div>
            <form>
                <p>SHIPPING</p>
                <select><option class="text-muted">Standard-Delivery- &euro;5.000</option></select>
                <p>GIVE CODE</p>
                <input id="code" placeholder="Enter your code">
            </form>
            <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                <div class="col">TOTAL PRICE</div>
                <div class="col text-right">&euro; $${total + 5.000 }</div>
            </div>
            <a method="post" class="btn" href="${pageContext.request.contextPath}/authorize_payment?product=<c:out value="Order"/>&total=<c:out value="${total}"/>&shipping=<c:out value="${5.000}"/>">CHECKOUT</a>
        </div>
    </div>

   </div>
  </section>

    </jsp:attribute>
</mt:contact_template>
