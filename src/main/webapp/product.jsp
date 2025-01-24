<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.aadassingment01.model.ProductDTO" %><%--
  Created by IntelliJ IDEA.
  User: CHANUKA
  Date: 1/23/2025
  Time: 3:23 PM
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


<section>
    <div class="card">
        <h1>Cart</h1>
        <ul class="listCard">
        </ul>
        <div class="checkOut">
            <div class="total">0</div>
            <div class="closeShopping">Close</div>
        </div>
    </div>
</section>

<main>
    <article>
        <section class="section featured " id="FEATURED-COLLECTION" aria-label="featured collection">
            <div class="container">

                <h2 class="h2 section-title">Product Management</h2>
            </div>

            </div>
            <div class="container mt-5">

                <hr/>
                <div class="d-flex  ">
                    <button type="button" class="btn btn-product btn-primary mb-5 me-5 text-right" style="border: white 1px solid;border-radius: 5px; margin-top: 3rem; padding: 5px 10px;  background-color: var(--maximum-blue-green);
" data-bs-toggle="modal"
                            data-bs-target="#studentModal">
                        Add New Product
                    </button>
                    <button type="button"
                            class="btn btn-product btn-primary mb-5 text-right"
                            style="border: white 1px solid; border-radius: 5px; margin-top: 3rem; padding: 5px 22px; background-color: var(--maximum-blue-green); color: white;"
                            onclick="window.location.href='/AAD_Assingment_01_war_exploded/all-product-servlet';">
                        View All Products
                    </button>

                </div>

                <!--     add student modal-->
                <div class="modal fade" id="studentModal" tabindex="-1" aria-labelledby="studentModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="container m-2">
                                <form action="product-servlet" method="post">
                                    <div class="mb-3 mt-3">
                                        <label for="name" class="form-label" style="color: black;">Product Name</label>
                                        <input type="text" class="form-control" name="name" id="name">
                                    </div>
                                    <div class="mb-3">
                                        <label for="description" class="form-label"
                                               style="color: black;">Description</label>
                                        <input type="text" class="form-control" name="description" id="description">
                                    </div>
                                    <div class="mb-3">
                                        <label for="price" class="form-label" style="color: black;">Price</label>
                                        <input type="number" class="form-control" name="price" id="price">
                                    </div>
                                    <div class="mb-3">
                                        <label for="qty" class="form-label" style="color: black;">Qty</label>
                                        <input type="number" class="form-control" name="qty" id="qty">
                                    </div>
                                    <div>
                                        <%--                                        <label for="Category" class="form-label" style="color: black;">Category ID</label>--%>
                                        <%--                                        <select class="form-select form-select-lg " aria-label="Large select example"--%>
                                        <%--                                                id="Category">--%>
                                        <%--                                            <option selected>Choose Category</option>--%>
                                        <%--                                            <option value="1">Romance</option>--%>
                                        <%--                                            <option value="2">Mystery</option>--%>
                                        <%--                                            <option value="3">Children</option>--%>
                                        <%--                                        </select>--%>
                                        <label for="CategoryID" class="form-label" style="color: black;">Category
                                            ID</label>
                                        <input type="number" class="form-control" name="CategoryID" id="CategoryID">
                                    </div>

                                    <!-- <div class="mb-3">
                                        <label for="age" class="form-label" style="color: black;">Image</label>
                                        <input type="number" class="form-control" id="age">
                                    </div> -->
                                    <div class="form-group mb-4">
                                        <label>Attach Product Image</label>
                                        <input type="file" id="ImageUrl" name="ImageUrl" required/>
                                    </div>

                                    <div class="modal-footer mt-3 flex-row justify-content-center">
                                        <button type="submit" class="btn btn-success"
                                                onclick="return confirm('Are you sure Do you want to add this product?');"
                                                style="border-radius: 12%; padding: 2% 5% ;">Add Product
                                        </button>

                                        <%--                                        <input class="button btn-outline-primary" type="submit" style="font-size: 13px; padding-bottom: 36px"  value="Add Product">--%>


<%--                                        <button id="btn_update_student" type="submit" class="btn btn-primary"--%>
<%--                                                style="border-radius: 12%; padding: 2% 5% ;">Update--%>
<%--                                        </button>--%>
<%--                                        <button id="btn_delete_student" type="submit" class="btn btn-primary"--%>
<%--                                                style="border-radius: 12%; padding: 2% 5% ;">Delete--%>
<%--                                        </button>--%>
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
                <div class="modal fade" id="updateProductModal" tabindex="-1" aria-labelledby="updateProductModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="updateProductModalLabel" style="color: #1C1F25">Update Product</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form id="updateProductForm">
                                    <div class="mb-3">
                                        <label for="update_product_id" class="form-label">Product ID</label>
                                        <input type="text" class="form-control" name="update_product_id" id="update_product_id" >
                                    </div>
                                    <div class="mb-3">
                                        <label for="update_product_id" class="form-label">Product ID</label>
                                        <input type="text" class="form-control" name="update_product_name" id="update_product_name" >
                                    </div>
                                    <div class="mb-3">
                                        <label for="update_product_description" class="form-label">Description</label>
                                        <input type="text" class="form-control" name="update_product_description" id="update_product_description" placeholder="Enter product description" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="update_product_price" class="form-label">Price</label>
                                        <input type="number" class="form-control" name="update_product_price" id="update_product_price" placeholder="Enter product price" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="update_product_quantity" class="form-label">Quantity</label>
                                        <input type="number" class="form-control" name="update_product_quantity" id="update_product_quantity" placeholder="Enter product quantity" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="update_product_category" class="form-label">Category ID</label>
                                        <input type="text" class="form-control" name="update_product_category" id="update_product_category" placeholder="Enter category ID" required>
                                    </div>
                                    <div id="current_product_image_wrapper" class="mb-3" style="display: none;">
                                        <label class="form-label">Current Product Image</label>
                                        <img id="current_product_image" src="" name="current_product_image" alt="Product Image" style="width: 100%; max-height: 200px;">
                                    </div>
                                    <div class="form-group mb-4">
                                        <label>Attach New Product Image</label>
                                        <input type="file" id="update_product_image" name="update_product_image" />
                                    </div>
                                    <div class="d-flex justify-content-end">
                                        <button type="button" class="btn btn-secondary me-2" data-bs-dismiss="modal">Cancel</button>
                                        <button id="btn_update_product" type="submit" class="btn btn-primary">Update</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>


                <%
                    List<ProductDTO> productList = (List<ProductDTO>) request.getAttribute("productList");
                    if (productList != null && !productList.isEmpty()) {


                %>

                <table>
                    <thead>
                    <tr>
                        <td>ID</td>
                        <td>Description</td>
<%--                        <td>Image</td>--%>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Qty</td>
                        <td>Category ID</td>
                        <td>Actions</td>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        for (ProductDTO product : productList) {

                    %>
                    <tr>
                        <td><%= product.getProductID() %>
                        </td>
                        <td><%= product.getDescription() %>
                        </td>
<%--                        <td><%= product.getImageUrl() %>--%>
                        </td>
                        <td><%= product.getName() %>
                        </td>
                        <td><%= product.getPrice() %>
                        </td>
                        <td><%= product.getQuantity() %>
                        </td>
                        <td><%= product.getCategoryID() %>
                        </td>
                        <td style="display: flex;flex-direction: row; ">
                            <button class="btn btn-warning btn-sm"
                                    style="padding: 2px 2px;display: flex;flex-direction: row; border-radius: 0; margin-right: 6px;"
                                    onclick="editProduct('<%= product.getProductID() %>','<%= product.getName() %>', '<%= product.getPrice() %>', '<%= product.getQuantity() %>', '<%= product.getDescription() %>', '<%= product.getCategoryID() %>', '<%= product.getImageUrl() %>')">
                                Edit
                            </button>

                            <button class="btn btn-danger btn-sm"
                                    style="padding: 2px 2px;display: flex;flex-direction: row; border-radius: 0;  "
                                    onclick="deleteProduct('<%= product.getProductID() %>')">Delete
                            </button>
                        </td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>

                <%
                } else {
                %>
                <p>No product found.</p>
                <%
                    }
                %>
            </div>

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

    const editProduct = (productID, productName, productPrice, productQuantity, productDescription, productCategory, productImageUrl) => {
        // Populate other modal fields
        document.getElementById('update_product_id').value = productID || '';
        document.getElementById('update_product_name').value = productName || '';
        document.getElementById('update_product_price').value = productPrice || '';
        document.getElementById('update_product_quantity').value = productQuantity || '';
        document.getElementById('update_product_description').value = productDescription || '';
        document.getElementById('update_product_category').value = productCategory || '';

        // Show the current image (if any) in an <img> element
        if (productImageUrl) {
            document.getElementById('current_product_image').src = productImageUrl;
            document.getElementById('current_product_image_wrapper').style.display = 'block'; // Make sure it's visible
        } else {
            document.getElementById('current_product_image_wrapper').style.display = 'none'; // Hide if no image
        }

        // Show the modal
        $('#updateProductModal').modal('show');
    };


    // Function to handle product deletion
    const deleteProduct = (productID) => {
        if (confirm('Are you sure you want to delete this product?')) {
            // Redirect to a servlet or use AJAX for deletion
            window.location.href = `<%= request.getContextPath() %>/delete-product-servlet?productID=${productID}`;
        }
    };
</script>
</body>
</html>
