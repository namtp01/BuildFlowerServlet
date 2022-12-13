<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:admin_template title="Products">
    <jsp:attribute name="content">

        <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Product</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Product</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Information of all products</h3>
                        <form action="${pageContext.request.contextPath}/admin/add_product">
                            <input type="submit" class="btn btn-primary float-right" value="Add Product"/>
                        </form>
                    </div>
                    <div class="row card-header">
                        <div class="col-md-8 offset-md-2">
                            <form method="post">
                                <div class="input-group">
                                    <input type="search" class="form-control form-control-lg" placeholder="Type name of product here" name="search-product-value">
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-lg btn-default" name="search-product">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="card-body">
                        <table id="example2" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Description</th>
                                <th>Details</th>
                                <th>Image</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="product" items="${products }">
                                <tr>
                                    <td>${product.name }</td>
                                    <td>${product.price }</td>
                                    <td>${product.description }</td>
                                    <td>${product.details }</td>
                                    <td>
                                        <img class="product__item__pic" src="${product.image}">
                                    </td>
                                    <td>${product.status ? "Show" : "Hide" }</td>
                                    <td>
                                        <form>
                                            <a method="post" class="btn btn-success" href="${pageContext.request.contextPath}/admin/edit_product?id=<c:out value='${product.id}'/>" id="edit-product">Edit</a>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <a class="btn btn-danger" href="${pageContext.request.contextPath}/admin/product?id=<c:out value='${product.id}'/>" id="delete-user" name="delete-product">Delete</a>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Description</th>
                                <th>Details</th>
                                <th>Image</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->

    </jsp:attribute>
</mt:admin_template>
