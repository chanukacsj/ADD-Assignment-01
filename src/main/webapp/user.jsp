<%@ page import="lk.ijse.aadassingment01.model.UserDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: CHANUKA
  Date: 1/25/2025
  Time: 6:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
            <img src="./assets/images/blue-circle-with-white-user-b.png" alt="Profile Image">
        </a>
    </nav>
    <!-- NAVBAR -->

    <!-- MAIN -->
    <main>
        <div class="head-title">
            <div class="left">
                <h1>User & Admin Management</h1>
                <ul class="breadcrumb">
                    <li><a href="#">Dashboard</a></li>
                    <li><i class='bx bx-chevron-right'></i></li>
                    <li><a href="#" class="active">User & Admin Management</a></li>
                </ul>
            </div>
        </div>
        <div class="d-flex">
            <button type="button" class="btn btn-product btn-primary mb-5 me-3 text-right" style="margin-top: 3rem; "
                    data-bs-toggle="modal"
                    data-bs-target="#studentModal">
                Add New Admin
            </button>
            <button type="button"
                    class="btn btn-product btn-success mb-5 text-right" style="margin-top: 3rem; "
                    onclick="window.location.href='/AAD_Assingment_01_war_exploded/user-all-servlet';">
                    View All Users & Admin
            </button>
        </div>


        <!--     add User modal-->
        <div class="modal fade" id="studentModal" tabindex="-1" aria-labelledby="studentModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="container m-2">
                        <form action="user-save-servlet" method="post">
                            <div class="mb-3 mt-3">
                                <label for="name" class="form-label" style="color: black;">User name</label>
                                <input type="text" class="form-control" name="name" id="name">
                            </div>
                            <div class="mb-3 mt-3">
                                <label for="name" class="form-label" style="color: black;">User Email</label>
                                <input type="text" class="form-control" name="email" id="email">
                            </div>
                            <div class="mb-3 mt-3">
                                <label for="name" class="form-label" style="color: black;">User password</label>
                                <input type="text" class="form-control" name="password" id="password">
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="role" class="form-label" style="color: black;">Role</label>
                                <select class="form-control" name="role" id="role">
                                    <option value="" disabled selected>Select a role</option>
                                    <option value="ADMIN">Admin</option>
                                    <option value="CUSTOMER">Customer</option>
                                </select>
                            </div>
                            <div class="mb-3 mt-3">
                                <label for="isActive" class="form-label" style="color: black;">Is Active</label>
                                <select class="form-control" name="isActive" id="isActive">
                                    <option value="" disabled selected>Select status</option>
                                    <option value="true">Active</option>
                                    <option value="false">Inactive</option>
                                </select>
                            </div>


                            <div class="modal-footer mt-3 flex-row justify-content-center">
                                <button type="submit" class="btn btn-success"
                                        onclick="return confirm('Are you sure Do you want to add this user?');"
                                        >Add User or Admin
                                </button>
                                <button id="btn_clear_student" type="submit" class="btn btn-primary"
                                        >Clear
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Update User Modal -->
        <div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateCategoryLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateCategoryModalLabel" style="color: #1C1F25">Update
                            User</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="user-update-servlet" method="post">
                            <div class="mb-3">
                                <label for="update_id" class="form-label">User ID</label>
                                <input type="text" class="form-control" name="id"
                                       id="update_id">
                            </div>
<%--                            <div class="mb-3">--%>
<%--                                <label for="update_name" class="form-label">User Name</label>--%>
<%--                                <input type="text" class="form-control" name="name"--%>
<%--                                       id="update_name">--%>
<%--                            </div>--%>
<%--                            <div class="mb-3">--%>
<%--                                <label for="update_email" class="form-label">User Email</label>--%>
<%--                                <input type="text" class="form-control" name="email"--%>
<%--                                       id="update_email">--%>
<%--                            </div>--%>
<%--                            <div class="mb-3">--%>
<%--                                <label for="update_password" class="form-label">User Password</label>--%>
<%--                                <input type="text" class="form-control" name="password"--%>
<%--                                       id="update_password">--%>
<%--                            </div>--%>
                            <div class="mb-3 mt-3">
                                <label for="update_role" class="form-label" style="color: black;">Role</label>
                                <select class="form-control" name="role" id="update_role">
                                    <option style="color: #1C1F25" value="" disabled selected>Select a role</option>
                                    <option value="ADMIN">Admin</option>
                                    <option value="CUSTOMER">Customer</option>
                                </select>
                            </div>
                            <div class="mb-3 mt-3">
                                <label for="update_isActive" class="form-label" style="color: black;">Is
                                    Active</label>
                                <select class="form-control" name="isActive" id="update_isActive" >
                                    <option style="color: #1C1F25" value="" disabled selected>Select status</option>
                                    <option value="1">Active</option>
                                    <option value="0">Inactive</option>
                                </select>
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
        <%--//////--%>

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
            List<UserDTO> userList = (List<UserDTO>) request.getAttribute("userList");
            if (userList != null && !userList.isEmpty()) {


        %>
        <%--                <div class="d-flex justify-content-center">--%>
        <table class="table table-bordered">
            <thead>
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Email</td>
                <td>Password</td>
                <td>Role</td>
                <td>Is Active</td>
                <td>Actions</td>

            </tr>
            </thead>
            <tbody>
            <%
                for (UserDTO user : userList) {

            %>
            <tr>
                <td><%= user.getId() %>
                </td>
                <td><%= user.getName() %>
                </td>
                <td><%= user.getEmail() %>
                </td>
                <td><%= user.getPassword() %>
                </td>
                <td><%= user.getRole() %>
                </td>
                <td><%= user.isActive() %>
                </td>
                <td>
                    <button class="btn btn-warning btn-sm"
                            onclick="editUser('<%= user.getId() %>','<%= user.getRole() %>','<%= user.isActive() %>')">
                        Edit
                    </button>

                    <button class="btn btn-danger btn-sm"
                            onclick="deleteUser('<%= user.getId() %>')">
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
        <p>No user found.</p>
        <%
            }
        %>
        <%--            </div>--%>

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


    const editUser = (userID, userName, userEmail, userRole, userIsActive, userPassword ) => {
        // Populate other modal fields
        document.getElementById('update_id').value = userID;
        // document.getElementById('update_name').value = userName;
        // document.getElementById('update_email').value = userEmail;
        document.getElementById('update_role').value = userRole;
        document.getElementById('update_isActive').value = userIsActive;
        // document.getElementById('update_password').value = userPassword;


        // Show the current image (if any) in an <img> element


        // Show the modal
        $('#updateModal').modal('show');
    };



    const deleteUser = (id) => {
        if (confirm('Are you sure you want to delete this user?')) {
            // Use Fetch API to send a POST request for deletion
            fetch('/AAD_Assingment_01_war_exploded/user-delete-servlet', {
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
                        window.location.href = '/AAD_Assingment_01_war_exploded/user-all-servlet'; // Redirect to all products page

                    } else {
                        alert("Error deleting the user.");
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
