<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:about_template title="About">
    <jsp:attribute name="content">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xl-7">
                    <div class="img-box">
                        <img src="${pageContext.request.contextPath}/assets/user/dist/images/about-img.png" alt="" />
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
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                            industry's standard dummy text Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                            Lorem Ipsum has been the industry's standard dummy text Lorem Ipsum is simply dummy text of the printing
                            and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since ever since
                            ever since
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </jsp:attribute>

</mt:about_template>