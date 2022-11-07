<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:contact_template title="Contact">
    <jsp:attribute name="content">

  <section class="contact_section layout_padding">
      <div class="container ">
          <div class="heading_container justify-content-center">
              <h2 class="">
                  Contact
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

    </jsp:attribute>
</mt:contact_template>
