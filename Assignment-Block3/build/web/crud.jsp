<%-- 
    Document   : crud
    Created on : Apr 23, 2023, 5:09:15 PM
    Author     : ROG STRIX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/crud.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-4">
                                <h2>Manage <b>Employees</b></h2>
                            </div>
                            <div class="col-sm-4">
                                <h3><a href="Load"><b>Home</b></a></h3>						
                            </div>
                            <div class="col-sm-4">
                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add Product</span></a>						
                            </div>

                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${List}" var="o">
                                <tr>
                                    <td>${o.masp}</td>
                                    <td>${o.tensp}</td>
                                    <td>${o.mota}</td>
                                    <td><img src="img/${o.hinhanh}" width="60px"/></td>
                                    <td>${o.dongia}</td>
                                    <td>${o.soluong}</td>
                                    <td>
                                        <%--<a href="update?masp=${o.masp}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>--%>
                                        <%--<a href="delete?masp=${o.masp}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>--%>
                                        <a href="edit?masp=${o.masp}">update</a>
                                        <a href="deleteControl?masp=${o.masp}">delete</a>
                                    </td>
                                </tr> 
                            </c:forEach>
                        </tbody>
                    </table>
                    <%--<div class="clearfix">
                        <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                        <ul class="pagination">
                            <li class="page-item disabled"><a href="#">Previous</a></li>
                            <li class="page-item"><a href="#" class="page-link">1</a></li>
                            <li class="page-item"><a href="#" class="page-link">2</a></li>
                            <li class="page-item active"><a href="#" class="page-link">3</a></li>
                            <li class="page-item"><a href="#" class="page-link">4</a></li>
                            <li class="page-item"><a href="#" class="page-link">5</a></li>
                            <li class="page-item"><a href="#" class="page-link">Next</a></li>
                        </ul>
                    </div>--%>
                </div>
            </div>        
        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>ID</label>
                                <input name="masp" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input name="tensp" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="mota" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input name="soluong" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="dongia" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="hinhanh" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Status</label>
                                <input name="trangthai" type="text" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label>Category</label>
                                <select name="madm" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${ListC}" var="o">
                                        <option value="${o.madm}">${o.tendm}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>