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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        .featured {
            margin-top: 15rem;
        }

        .img-mystery {
            width: 175px;
            height: 236px;
            margin-top: 44px;
            margin-left: 44px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        form .form-label {
            color: black;
        }

    </style>
    <!--
      - primary meta tags
    -->
    <title>Booken - Get Your New Book Collections</title>
    <meta name="title" content="Booken - Get Your New Book Collections">
    <meta name="description" content="This is a Book eCommerce html template made by codewithsadee">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


    <!--
      - favicon
    -->
    <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">

    <!--
      - custom css link
    -->
    <link rel="stylesheet" href="./assets/css/product.css">

    <!--
      - google font link
    -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Jost:wght@400;500;600&family=Work+Sans:wght@400;500;700&display=swap"
            rel="stylesheet">

    <!--
      - preload images
    -->
    <link rel="preload" as="image" href="./assets/images/hero-banner.png">
    <link rel="preload" as="image" href="./assets/images/hero-bg.jpg">

</head>

<body id="top">

<!--
  - #HEADER
-->


<header class="header" data-header>
    <div class="header-top">
        <div class="container">

            <a href="#" class="logo">
                <!-- <img src="./assets/images/logo.svg" width="138" height="28" alt="booken home"> -->
                <h2>Novel Nest</h2>
            </a>

            <div class="input-wrapper">
                <input type="search" name="search" placeholder="Search our store" class="input-field">

                <button class="btn btn-primary">Search</button>
            </div>

            <div class="header-action">

                <button class="header-action-btn" aria-label="cart" title="Cart">
                    <span class="quantity">0</span>

                    <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                </button>

                <button class="nav-open-btn" aria-label="open menu" title="Open Menu" data-nav-toggler>
                    <ion-icon name="menu-outline" aria-hidden="true"></ion-icon>
                </button>

                <!-- <button class="header-action-btn" aria-label="user" title="User">
                  <ion-icon name="person-outline" aria-hidden="true"></ion-icon>
                </button> -->

                <a href="./login.html">
                    <button type="button" class="btn btn-outline-primary"
                            style="border-radius: 5px; padding: 13px 30px;">Login
                    </button>
                </a>

            </div>

        </div>
    </div>

    <div class="header-bottom" data-navbar>
        <div class="container">

            <nav class="navbar">

                <button class="nav-close-btn" data-nav-toggler aria-label="clsoe menu" title="Clsoe Menu">
                    <ion-icon name="close-outline" aria-hidden="true"></ion-icon>
                </button>

                <div class="navbar-top">
                    <input type="search" name="search" placeholder="Search our store" class="input-field">

                    <button class="search-btn" aria-label="Search">
                        <ion-icon name="search-outline" aria-hidden="true"></ion-icon>
                    </button>
                </div>

                <ul class="navbar-list">

                    <li>
                        <a href="/index.html" class="navbar-link">Home</a>
                    </li>

                    <li>
                        <a href="#" class="navbar-link">Blog</a>
                    </li>

                    <li>
                        <a href="#FEATURED-COLLECTION" class="navbar-link">Shop</a>
                    </li>

                    <li>
                        <a href="#" class="navbar-link">About Us</a>
                    </li>

                    <li>
                        <!-- <a href="#" class="navbar-link">Categories</a> -->
                        <div class="dropdown">
                            <button class=" btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                                    aria-expanded="false" style="font-size: 20px;">
                                Categories
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/childrenBook.html">Children’s Books</a></li>
                                <li><a class="dropdown-item" href="Mystery & Thriller.html">Mystery & Thriller</a></li>
                                <li><a class="dropdown-item" href="romance.html">Romance</a></li>
                            </ul>
                        </div>

                    </li>
                </ul>

            </nav>

            <a href="tel:+0123456789" class="header-contact-link">
                <ion-icon name="headset-outline" aria-hidden="true"></ion-icon>

                <span class="span">(+41)-234-56789</span>
            </a>

        </div>
    </div>

    <div class="overlay" data-overlay data-nav-toggler></div>

</header>


<main>
    <article>
        <section class="section featured " id="FEATURED-COLLECTION" aria-label="featured collection">
            <div class="container">

                <h2 class="h2 section-title">User Management</h2>
            </div>

            </div>
            <div class="container mt-5">

                <hr/>
                <div class="d-flex  ">
                    <button type="button" class="btn btn-product btn-primary mb-5 me-5 text-right" style="border: white 1px solid;border-radius: 5px; margin-top: 3rem; padding: 5px 10px;  background-color: var(--maximum-blue-green);
" data-bs-toggle="modal"
                            data-bs-target="#studentModal">
                        Add New User
                    </button>
                    <button type="button"
                            class="btn btn-product btn-primary mb-5 text-right"
                            style="border: white 1px solid; border-radius: 5px; margin-top: 3rem; padding: 5px 22px; background-color: var(--maximum-blue-green); color: white;"
                            onclick="window.location.href='/AAD_Assingment_01_war_exploded/user-all-servlet';">
                        View All User
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
                                                style="border-radius: 12%; padding: 2% 5% ;">Add User
                                        </button>
                                        <button id="btn_clear_student" type="submit" class="btn btn-primary"
                                                style="border-radius: 12%; padding: 2% 5% ;">Clear
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Update Product Modal -->
                <div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateCategoryLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="updateCategoryModalLabel" style="color: #1C1F25">Update
                                    Product</h5>
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
                                    <div class="mb-3">
                                        <label for="update_name" class="form-label">User Name</label>
                                        <input type="text" class="form-control" name="name"
                                               id="update_name">
                                    </div>
                                    <div class="mb-3">
                                        <label for="update_email" class="form-label">User Email</label>
                                        <input type="text" class="form-control" name="email"
                                               id="update_email">
                                    </div>
                                    <div class="mb-3">
                                        <label for="update_password" class="form-label">User Password</label>
                                        <input type="text" class="form-control" name="password"
                                               id="update_password">
                                    </div>
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
                        <td style="display: flex;flex-direction: row; ">
                            <button class="btn btn-warning btn-sm"
                                    style="padding: 2px 2px;display: flex;flex-direction: row; border-radius: 0; margin-right: 6px;"
                                    onclick="editUser('<%= user.getId() %>','<%= user.getName() %>','<%= user.getEmail() %>','<%= user.getPassword() %>','<%= user.getRole() %>','<%= user.isActive() %>')">
                                Edit
                            </button>

                            <button class="btn btn-danger btn-sm"
                                    style="padding: 2px 2px; display: flex; flex-direction: row; border-radius: 0;"
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


        </section>
    </article>
</main>
<!--
  - #FOOTER
-->

<footer class="footer has-bg-image" style="background-image: url('./assets/images/section-bg.jpg')">

    <div class="footer-top section">
        <div class="container grid-list">

            <div class="footer-brand">

                <a href="#" class="logo">
                    <!-- <img src="./assets/images/logo.svg" width="138" height="28" alt="booken home"> -->
                    <h2>Novel Nest</h2>
                </a>

                <p class="footer-text">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor inci ut labore et
                    dolore
                    consectetur
                    adipisicing elit sed do eiusmod tempor.
                </p>

                <ul class="social-list">

                    <li>
                        <a href="#" class="social-link">
                            <ion-icon name="logo-facebook"></ion-icon>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <ion-icon name="logo-twitter"></ion-icon>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <ion-icon name="logo-instagram"></ion-icon>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <ion-icon name="logo-youtube"></ion-icon>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="social-link">
                            <ion-icon name="logo-pinterest"></ion-icon>
                        </a>
                    </li>

                </ul>

            </div>

            <ul class="footer-list">

                <li>
                    <p class="footer-list-title">Corporate</p>
                </li>

                <li>
                    <a href="#" class="footer-link">Careers</a>
                </li>

                <li>
                    <a href="#" class="footer-link">About Us</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Contact Us</a>
                </li>

                <li>
                    <a href="#" class="footer-link">FAQs</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Vendors</a>
                </li>

            </ul>

            <ul class="footer-list">

                <li>
                    <p class="footer-list-title">Information</p>
                </li>

                <li>
                    <a href="#" class="footer-link">Online Store</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Privacy Policy</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Refund Policy</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Shipping Policy</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Terms of Service</a>
                </li>

            </ul>

            <ul class="footer-list">

                <li>
                    <p class="footer-list-title">Services</p>
                </li>

                <li>
                    <a href="#" class="footer-link">Grooming</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Positive Dog Training</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Veterinary Services</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Insurance</a>
                </li>

                <li>
                    <a href="#" class="footer-link">Book Writing</a>
                </li>

            </ul>

        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">

            <p class="copyright">
                Copyright 2025
            </p>

            <img src="./assets/images/payment-mehtod.png" width="311" height="30" loading="lazy" alt="Payment method"
                 class="w-100">

        </div>
    </div>

</footer>

<script src="./assets/js/app.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>


<!--
  - #BACK TO TOP
-->

<a href="#top" class="back-top-btn" aria-label="back to top" data-back-top-btn>
    <ion-icon name="chevron-up" aria-hidden="true"></ion-icon>
</a>
<!--
  - custom js link
-->
<%--<script src="./assets/js/script.js" defer></script>--%>

<!--
  - ionicon link
-->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script>

    const editUser = (userID, userName, userEmail, userRole, userIsActive, userPassword ) => {
        // Populate other modal fields
        document.getElementById('update_id').value = userID;
        document.getElementById('update_name').value = userName;
        document.getElementById('update_email').value = userEmail;
        document.getElementById('update_role').value = userRole;
        document.getElementById('update_isActive').value = userIsActive;
        document.getElementById('update_password').value = userPassword;


        // Show the current image (if any) in an <img> element


        // Show the modal
        $('#updateModal').modal('show');
    };


    <%--// Function to handle product deletion--%>
    <%--const deleteProduct = (productID) => {--%>
    <%--        console.log(productID)--%>
    <%--    if (confirm('Are you sure you want to delete this product?')) {--%>
    <%--        // Corrected string interpolation and redirect--%>
    <%--        window.location.href = `/AAD_Assingment_01_war_exploded/product-delete-servlet?productID=${productID}`;--%>
    <%--    }--%>
    <%--};--%>

    const deleteUser = (id) => {
        if (confirm('Are you sure you want to delete this product?')) {
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
