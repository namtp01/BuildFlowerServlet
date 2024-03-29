<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:admin_template title="add_product">
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
                                <h1>Add Product</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Add Product</li>
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
                                    <h3 class="card-title">Add Product form</h3>
                                </div>
                                <form method="post">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="inputName">Name</label>
                                            <input type="text" class="form-control" id="inputName" name="inputName" placeholder="Enter name">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputQuantity">Quantity</label>
                                            <input type="number" class="form-control" id="inputQuantity" name="inputQuantity" placeholder="Enter quantity">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPrice">Price</label>
                                            <input type="number" class="form-control" id="inputPrice" name="inputPrice" placeholder="Enter price">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputDescription">Description</label>
                                            <input type="text" class="form-control" id="inputDescription" name="inputDescription" placeholder="Enter description">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputDetails">Details</label>
                                            <input type="text" class="form-control" id="inputDetails" name="inputDetails" placeholder="Enter details">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputImage">Image</label>
                                            <input type="text" class="form-control" id="inputImage" name="inputImage" placeholder="Enter link image">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputType">Catergory</label>
                                            <br>
                                            <select id="inputType" name="inputType">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-primary" name="submit-product" value="clicked">Submit</button>
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