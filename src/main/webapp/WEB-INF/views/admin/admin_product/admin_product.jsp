<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:admin_template title="admin-product">
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
                                <h1>Product list</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item active">Product</li>
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
                                <form action="${pageContext.request.contextPath}/admin/general">
                                    <input type="submit" class="btn btn-primary float-right" value="Add user"/>
                                </form>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table id="product-table" class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Quanity</th>
                                        <th>Description</th>
                                        <th>Details</th>
                                        <th>Status</th>
                                        <th>Featured</th>
                                        <th>Size</th>
                                        <th>Category</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>Hoa Hong</td>
                                        <td>20</td>
                                        <td>Hoa Hong Do</td>
                                        <td>...</td>
                                        <td>Available</td>
                                        <td>...</td>
                                        <td>Medium</td>
                                        <td>...</td>
                                        <td>
                                            <form action="${pageContext.request.contextPath}/admin/general">
                                                <input type="submit" class="btn btn-primary float-left" value="Edit user"/>
                                            </form>
                                            <form action="${pageContext.request.contextPath}/admin/general">
                                                <input type="submit" class="btn btn-primary float-right" value="Delete user"/>
                                            </form>
                                        </td>
                                    </tr>
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