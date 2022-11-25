<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
                                <form action="${pageContext.request.contextPath}/admin/general">
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
                                <table id="user-table" class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>Username</th>
                                        <th>Password</th>
                                        <th>Full name</th>
                                        <th>Address</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Status</th>
                                        <th>Role</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>ThuThao12</td>
                                        <td>Password</td>
                                        <td>Thai Thi Thu Thao</td>
                                        <td>Hell</td>
                                        <td>19110515@student.hcmute.edu.vn</td>
                                        <td>0000000001</td>
                                        <td>Active</td>
                                        <td>Admin</td>
                                        <td>
                                            <form action="${pageContext.request.contextPath}/admin/general">
                                                <input type="submit" class="btn btn-primary float-left" value="Edit"/>
                                            </form>
                                            <form action="${pageContext.request.contextPath}/admin/general">
                                                <input type="submit" class="btn btn-primary float-right" value="Delete"/>
                                            </form>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>LuanPOP12</td>
                                        <td>Pass/Pass</td>
                                        <td>Bui Huu Luan</td>
                                        <td>Highway</td>
                                        <td>19110088@student.hcmute.edu.vn</td>
                                        <td>0000000014</td>
                                        <td>Active</td>
                                        <td>Admin</td>
                                    </tr>
                                    <tr>
                                        <td>HuongNhay</td>
                                        <td>LazyTown</td>
                                        <td>Vo Thi Huynh Huong</td>
                                        <td>Tam Cam</td>
                                        <td>191100084@student.hcmute.edu.vn</td>
                                        <td>0000000004</td>
                                        <td>Active</td>
                                        <td>Admin</td>
                                    </tr>
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