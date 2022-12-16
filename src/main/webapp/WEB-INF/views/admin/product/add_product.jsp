<%@ page contentType="text/html;charset=UTF-8"  isELIgnored="false" %>
<%@taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<mt:admin_template title="Add Product">
    <jsp:attribute name="content">

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
            <div class="row">
                <!-- left column -->
                <div class="col-md-6">
                    <!-- general form elements -->
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Add Product</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form method="post"
                              action="${pageContext.request.contextPath}/admin/product?action=add">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="inputName">Name</label>
                                    <input type="text" class="form-control" id="inputName" name="inputName" required="required">
                                </div>

                                <div class="form-group">
                                    <label for="inputPrice">Price</label>
                                    <input type="text" class="form-control" id="inputPrice" name="inputPrice" required="required">
                                </div>

                                <div class="form-group">
                                    <label for="inputQuantity">Quantity</label>
                                    <input type="text" class="form-control" id="inputQuantity" name="inputQuantity" required="required">
                                </div>

                                <div class="form-group">
                                    <label for="inputDescription">Description</label>
                                    <textarea class="form-control" id="inputDescription" name="inputDescription"></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="inputDetails">Details</label>
                                    <input type="text" class="form-control" id="inputDetails" name="inputDetails" required="required">
                                </div>

                                <div class="form-group">
                                    <label for="inputImage">Image</label>
                                    <input type="text" class="form-control" id="inputImage" name="inputImage" placeholder="Enter link image" required="required">
                                </div>


                                <div class="form-check">
                                    <input type="checkbox" name="inputStatus" class="form-check-input" id="inputStatus">
                                    <label class="form-check-label" for="inputStatus">Status</label>
                                </div>

                                <div class="form-group">
                                    <label>Category</label>

                                    <label>
                                        <select class="form-control" name="inputCategory_id">
                                            <c:forEach items="${listC }" var="o">
                                                <option value="${o.id }">${o.name }</option>
                                            </c:forEach>
                                        </select>
                                    </label>

                                </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary" value="add" name="submit-product">Save</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.card -->


                </div>

            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

    </jsp:attribute>
</mt:admin_template>
