<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:admin_template title="edit_product">
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
                                <h1>Edit Product</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Edit Product</li>
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
                                        <h3 class="card-title">Edit Product form</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <form>
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="inputName">Name</label>
                                                <input type="text" class="form-control" id="inputName" placeholder="Enter email">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputQuanity">Quanity</label>
                                                <input type="number" class="form-control" id="inputQuanity" placeholder="Password">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputDescription">Description</label>
                                                <input type="text" class="form-control" id="inputDescription" placeholder="Password">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputDetail">Detail</label>
                                                <input type="text" class="form-control" id="inputDetail" placeholder="Password">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputFeatured">Featured</label>
                                                <input type="text" class="form-control" id="inputFeatured" placeholder="Password">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputSize">Size</label>
                                                <input type="text" class="form-control" id="inputSize" placeholder="Password">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputCategory">Category</label>
                                                <input type="password" class="form-control" id="inputCategory" placeholder="Password">
                                            </div>
                                            <div class="form-group">
                                                <label for="checkRole">Role</label>
                                                <div class="row" id="checkRole">
                                                    <div class="form-check col-sm-6">
                                                        <input type="radio" class="form-check-input" id="checkAdmin" checked="checked" name="role">
                                                        <label class="form-check-label" for="checkAdmin">Admin</label>
                                                    </div>
                                                    <div class="form-check col-sm-6">
                                                        <input type="radio" class="form-check-input" id="checkUser" name="role">
                                                        <label class="form-check-label" for="checkUser">User</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.card-body -->

                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-primary">Submit</button>
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