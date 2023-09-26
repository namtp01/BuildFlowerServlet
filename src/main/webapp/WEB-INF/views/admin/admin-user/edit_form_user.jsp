<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<mt:admin_template title="edit_user">
    <jsp:attribute name="content">
        <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <!-- Content Wrapper. Contains page content -->
            <div class="content">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Edit User</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Edit User</li>
                                </ol>
                            </div>
                        </div>
                    </div><!-- /.container-fluid -->
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid">
                        <!-- left column -->
                        <div class="content">
                                <!-- general form elements -->
                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Edit User form</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <form method="post">
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="editUsername">Username</label>
                                                <input type="text" class="form-control" id="editUsername" name="editUsername" placeholder="Enter username"
                                                       value="<c:out value='${user.username}'/>">
                                            </div>
                                            <div class="form-group">
                                                <label for="editPassword">Password</label>
                                                <input type="text" class="form-control" id="editPassword" name="editPassword" placeholder="Enter password"
                                                       value="<c:out value='${user.password}'/>">
                                            </div>
                                            <div class="form-group">
                                                <label for="editFullName">Full name</label>
                                                <input type="text" class="form-control" id="editFullName" name="editFullName" placeholder="Enter name"
                                                       value="<c:out value='${user.full_name}'/>">
                                            </div>
                                            <div class="form-group">
                                                <label for="editAddress">Address</label>
                                                <input type="text" class="form-control" id="editAddress" name="editAddress" placeholder="Enter address"
                                                       value="<c:out value='${user.address}'/>">
                                            </div>
                                            <div class="form-group">
                                                <label for="editEmail">Email</label>
                                                <input type="text" class="form-control" id="editEmail" name="editEmail" placeholder="Enter email"
                                                       value="<c:out value='${user.email}'/>">
                                            </div>
                                            <div class="form-group">
                                                <label for="editPhone">Phone number</label>
                                                <input type="text" class="form-control" id="editPhone" name="editPhone" placeholder="Enter phone numbers"
                                                       value="<c:out value='${user.phone}'/>">
                                            </div>
                                            <div class="form-group">
                                                <label for="editRole">Select role:</label>
                                                <br>
                                                <select id="editRole" name="editRole">
                                                    <option ${user.role=="Admin"?"selected":""} value="Admin">Admin</option>
                                                    <option ${user.role=="User"?"selected":""} value="User">User</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-primary" name="save-user" value="saved">Save</button>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.card -->
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- /.control-sidebar -->
        </div>
        <!-- ./wrapper -->
        </body>
    </jsp:attribute>
</mt:admin_template>