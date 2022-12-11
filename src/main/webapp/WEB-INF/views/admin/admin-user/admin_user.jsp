<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:admin_template title="admin-user">
    <jsp:attribute name="content">
        <!-- Navbar -->
        <body class="hold-transition sidebar-mini">
            <div class="wrapper">
              <!-- Content Wrapper. Contains page content -->
              <div class="wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>User list</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item active">User</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Main content -->
                <section class="content">
                  <div class="container-fluid">
                    <div class="row">
                      <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">DataTable with minimal features & hover style</h3>
                                <form action="${pageContext.request.contextPath}/admin/add_user">
                                    <input type="submit" class="btn btn-primary float-right" value="Add user"/>
                                </form>
                            </div>
                            <div class="row card-header">
                                <div class="col-md-8 offset-md-2">
                                    <form action="#">
                                        <div class="input-group">
                                            <input type="search" class="form-control form-control-lg" placeholder="Type your keywords here">
                                            <div class="input-group-append">
                                                <button type="submit" class="btn btn-lg btn-default">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="user-table" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Username</th>
                                        <th>Password</th>
                                        <th>Full name</th>
                                        <th>Address</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="user" items="${users}">
                                    <tr>
                                        <td>${user.username}</td>
                                        <td>${user.password}</td>
                                        <td>${user.fullName}</td>
                                        <td>${user.address}</td>
                                        <td>${user.email}</td>
                                        <td>${user.phone}</td>
                                        <td>
                                            <form action="${pageContext.request.contextPath}/admin/edit_user?id=<c:out value='${user.id}'/>">
                                                <input type="submit" class="btn btn-success" value="Edit"/>
                                            </form>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <form method="post">
                                                <a class="btn btn-danger" href="${pageContext.request.contextPath}/admin/user?id=<c:out value='${user.id}'/>" id="delete-user">Delete</a>
                                            </form>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                    <tfoot>
                                    <tr>
                                        <th>Username</th>
                                        <th>Password</th>
                                        <th>Full name</th>
                                        <th>Address</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Action</th>
                                    </tr>
                                    </tfoot>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                      </div>
                    </div>
                  </div>
                </section>
              </div>
            </div>
        </body>
    </jsp:attribute>
</mt:admin_template>