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
                                    <form method="post">
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label for="editName">Name</label>
                                                <input type="text" class="form-control" id="editName" name="editName" placeholder="Enter username">
                                            </div>
                                            <div class="form-group">
                                                <label for="editQuantity">Quantity</label>
                                                <input type="number" class="form-control" id="editQuantity" name="editQuantity" placeholder="Enter quantity">
                                            </div>
                                            <div class="form-group">
                                                <label for="editPrice">Price</label>
                                                <input type="text" class="form-control" id="editPrice" name="editPrice" placeholder="Enter price">
                                            </div>

                                            <div class="card-footer">
                                                <button type="submit" class="btn btn-primary" name="save-product" value="saved">Submit</button>
                                            </div>
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