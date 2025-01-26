<%@ page import="lk.ijse.aadassingment01.model.CategoryDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: CHANUKA
  Date: 1/25/2025
  Time: 1:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminHub - Category Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          crossorigin="anonymous">

    <!-- Boxicons -->
    <link href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="./assets/css/AdminStyle.css">
    <style>
        ul {
            padding-left: 0;
        }
    </style>
</head>
<body>
<!-- SIDEBAR -->
<section id="sidebar">
    <a href="#" class="brand">
        <i class='bx bxs-smile'></i>
        <span class="text">Admin Navel Nest</span>
    </a>
    <ul class="side-menu top">
        <li class="active">
            <a href="AdminDashBoard.jsp">
                <i class='bx bxs-dashboard'></i>
                <span class="text">Dashboard</span>
            </a>
        </li>
        <li><a href="user.jsp"><i class='bx bxs-group'></i> <span class="text">Users & Admin Management</span></a></li>
        <li><a href="Category.jsp"><i class='bx bxs-shopping-bag-alt'></i> <span class="text">Category Management</span></a></li>
        <li><a href="product.jsp"><i class='bx bxs-message-dots'></i> <span class="text">Product Management</span></a></li>
    </ul>
    <ul class="side-menu">
        <li><a href="#"><i class='bx bxs-cog'></i> <span class="text">Settings</span></a></li>
        <li><a href="login.jsp" class="logout"><i class='bx bxs-log-out-circle'></i> <span class="text">Logout</span></a></li>
    </ul>
</section>
<!-- SIDEBAR -->

<!-- CONTENT -->
<section id="content">
    <!-- NAVBAR -->
    <nav>
        <i class='bx bx-menu'></i>
        <a href="#" class="nav-link">Categories</a>
        <form>
            <div class="form-input">
                <input type="search" placeholder="Search...">
                <button type="submit" class="search-btn"><i class='bx bx-search'></i></button>
            </div>
        </form>
        <a href="#" class="notification">
            <i class='bx bxs-bell'></i>
            <span class="num">8</span>
        </a>
        <a href="#" class="profile">
            <img src="img/people.png" alt="Profile Image">
        </a>
    </nav>
    <!-- NAVBAR -->

    <!-- MAIN -->
    <main>
        <div class="head-title">
            <div class="left">
                <h1>Category Management</h1>
                <ul class="breadcrumb">
                    <li><a href="#">Dashboard</a></li>
                    <li><i class='bx bx-chevron-right'></i></li>
                    <li><a href="#" class="active">Category Management</a></li>
                </ul>
            </div>
        </div>
        <div class="d-flex">
            <button type="button" class="btn btn-product btn-primary mb-5 me-3 text-right"style="margin-top: 3rem; "
            data-bs-toggle="modal"
            data-bs-target="#studentModal">
            Add New Category
            </button>
            <button type="button"
                    class="btn btn-product btn-primary mb-5 text-right" style="margin-top: 3rem; "
                    onclick="window.location.href='/AAD_Assingment_01_war_exploded/category-all-servlet';">
                View All Category
            </button>
        </div>


        <!--     add student modal-->
        <div class="modal fade" id="studentModal" tabindex="-1" aria-labelledby="studentModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="container m-2">
                        <form action="category-save-servlet" method="post">
                            <div class="mb-3 mt-3">
                                <label for="name" class="form-label" style="color: black;">Category Name</label>
                                <input type="text" class="form-control" name="name" id="name">
                            </div>
                            <div class="modal-footer mt-3 flex-row justify-content-center">
                                <button type="submit" class="btn btn-success"
                                        onclick="return confirm('Are you sure Do you want to add this category?')">Add Category
                                </button>
                                <button id="btn_clear_student" type="submit" class="btn btn-primary">Clear
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Update Category Modal -->
        <div class="modal fade" id="updateCategoryModal" tabindex="-1" aria-labelledby="updateCategoryLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateCategoryModalLabel" style="color: #1C1F25">Update
                            Category</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="category-update" method="post">
                            <div class="mb-3">
                                <label for="update_category_id" class="form-label">Category ID</label>
                                <input type="text" class="form-control" name="id"
                                       id="update_category_id">
                            </div>
                            <div class="mb-3">
                                <label for="update_category_name" class="form-label">Category Name</label>
                                <input type="text" class="form-control" name="name"
                                       id="update_category_name">
                            </div>
                            <div class="d-flex justify-content-end">
                                <button type="button" class="btn btn-secondary me-2" data-bs-dismiss="modal">
                                    Cancel
                                </button>
                                <button id="btn_update_product" type="submit" class="btn btn-primary">Update
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <%
            String message = request.getParameter("message");
            if (message != null && !message.isEmpty()) {
        %>
        <script>
            alert("<%= message %>");
        </script>
        <%
            }
        %>
        <%
            String error = request.getParameter("error");
            if (error != null) {
        %>
        <script>
            alert("<%= error %>");
        </script>
        <%
            }
        %>


        <%--//////--%>
        <%
            List<CategoryDTO> categoryList = (List<CategoryDTO>) request.getAttribute("categoryList");
            if (categoryList != null && !categoryList.isEmpty()) {


        %>
        <%--                <div class="d-flex justify-content-center">--%>
        <table class="table table-bordered">
            <thead>
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Actions</td>
            </tr>
            </thead>
            <tbody>
            <%
                for (CategoryDTO category : categoryList) {

            %>
            <tr>
                <td><%= category.getId() %>
                </td>
                <td><%= category.getCategoryName() %>
                </td>
                <td>
                    <button class="btn btn-warning btn-sm"
                            onclick="editCategory('<%= category.getId() %>','<%= category.getCategoryName() %>')">
                        Edit
                    </button>

                    <button class="btn btn-danger btn-sm"
                            onclick="deleteCategory('<%= category.getId() %>')">
                        Delete
                    </button>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
        </div>
        <%
        } else {
        %>
        <p>No categories found.</p>
        <%
            }
        %>
        <%--            </div>--%>


    </main>
    <!-- MAIN -->
</section>
<!-- CONTENT -->

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>

    const editCategory = (categoryID, categoryName) => {
        // Populate other modal fields
        document.getElementById('update_category_id').value = categoryID;
        document.getElementById('update_category_name').value = categoryName;


        // Show the current image (if any) in an <img> element


        // Show the modal
        $('#updateCategoryModal').modal('show');
    };


    const deleteCategory = (id) => {
        if (confirm('Are you sure you want to delete this category?')) {
            // Use Fetch API to send a POST request for deletion
            fetch('/AAD_Assingment_01_war_exploded/category-delete', {
                method: 'POST',
                body: new URLSearchParams({
                    'id': id

                }),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            })
                .then(response => {
                    if (response.ok) {
                        // Redirect or update the page after deletion
                        window.location.href = '/AAD_Assingment_01_war_exploded/category-all-servlet'; // Redirect to all products page

                    } else {
                        alert("Error deleting the category.");
                    }
                })
                .catch(error => {
                    console.error("Error:", error);
                    alert("An error occurred.");
                });
        }
    };
</script>
</body>
</html>
