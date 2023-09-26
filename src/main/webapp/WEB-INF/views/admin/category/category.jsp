<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<mt:admin_template title="Categories">
    <jsp:attribute name="content">

        <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Categories</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item active">Categories</li>
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
                        <h3 class="card-title">Information of all categories</h3>
                        <form action="${pageContext.request.contextPath}/admin/add_category">
                            <input type="submit" class="btn btn-primary float-right" value="Add category"/>
                        </form>
                    </div>
                    <div class="row card-header">
                        <div class="col-md-8 offset-md-2">
                            <form method="post">
                                <div class="input-group">
                                    <input type="search" class="form-control form-control-lg" placeholder="Type username of category here" name="search-category-value">
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-lg btn-default" name="search-category">
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
                                <th>Id</th>
                                <th>Name</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="category" items="${categories }">
                                <tr>
                                    <td>${category.id }</td>
                                    <td>${category.name }</td>
                                    <td>${category.status ? "Show" : "Hide" }</td>
                                    <td>
                                        <form>
                                            <a method="post" class="btn btn-success" href="${pageContext.request.contextPath}/admin/edit_category?id=<c:out value='${category.id}'/>" id="edit-category">Edit</a>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <a class="btn btn-danger" href="${pageContext.request.contextPath}/admin/category?id=<c:out value='${category.id}'/>" id="delete-user" name="delete-category">Delete</a>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
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
