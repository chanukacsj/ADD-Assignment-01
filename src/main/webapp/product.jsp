<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.aadassingment01.model.ProductDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminHub - Product Management</title>

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
                <h1>Products Management</h1>
                <ul class="breadcrumb">
                    <li><a href="#">Dashboard</a></li>
                    <li><i class='bx bx-chevron-right'></i></li>
                    <li><a href="#" class="active">Product Management</a></li>
                </ul>
            </div>
        </div>
        <div class="d-flex">
            <button type="button" class="btn btn-primary mb-5 me-3" style="margin-top: 3rem;" data-bs-toggle="modal"
                    data-bs-target="#studentModal">
                Add New Product
            </button>
            <button type="button" class="btn btn-success mb-5 " style="margin-top: 3rem;"
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

                                <label for="CategoryID" class="form-label" style="color: black;">Category
                                    ID</label>
                                <input type="number" class="form-control" name="CategoryID" id="CategoryID">
                            </div>

                            <div class="form-group mb-4">
                                <label>Attach Product Image</label>
                                <input type="file" id="ImageUrl" name="ImageUrl" required/>
                            </div>

                            <div class="modal-footer mt-3 flex-row justify-content-center">
                                <button type="submit" class="btn btn-success"
                                        onclick="return confirm('Are you sure Do you want to add this product?');"
                                        style="border-radius: 12%; padding: 2% 5% ;">Add Product
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
        <div class="modal fade" id="updateProductModal" tabindex="-1" aria-labelledby="updateProductModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateProductModalLabel" style="color: #1C1F25">Update
                            Product</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="updateProductForm" action="product-update" method="post">
                            <div class="mb-3">
                                <label for="update_product_id" class="form-label">Product ID</label>
                                <input type="text" class="form-control" name="update_product_id"
                                       id="update_product_id">
                            </div>
                            <div class="mb-3">
                                <label for="update_product_name" class="form-label">Product Name</label>
                                <input type="text" class="form-control" name="update_product_name"
                                       id="update_product_name">
                            </div>
                            <div class="mb-3">
                                <label for="update_product_description" class="form-label">Description</label>
                                <input type="text" class="form-control" name="update_product_description"
                                       id="update_product_description" placeholder="Enter product description"
                                       required>
                            </div>
                            <div class="mb-3">
                                <label for="update_product_price" class="form-label">Price</label>
                                <input type="number" class="form-control" name="update_product_price"
                                       id="update_product_price" placeholder="Enter product price" required>
                            </div>
                            <div class="mb-3">
                                <label for="update_product_quantity" class="form-label">Quantity</label>
                                <input type="number" class="form-control" name="update_product_quantity"
                                       id="update_product_quantity" placeholder="Enter product quantity"
                                       required>
                            </div>
                            <div class="mb-3">
                                <label for="update_product_category" class="form-label">Category ID</label>
                                <input type="text" class="form-control" name="update_product_category"
                                       id="update_product_category" placeholder="Enter category ID" required>
                            </div>
                            <div id="current_product_image_wrapper" class="mb-3" style="display: none;">
                                <label class="form-label">Current Product Image</label>
                                <img id="current_product_image" src="" name="current_product_image"
                                     alt="Product Image" style="width: 100%; max-height: 200px;">
                            </div>
                            <div class="form-group mb-4">
                                <label>Attach New Product Image</label>
                                <input type="file" id="update_product_image" name="update_product_image"/>
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

        <%-- Display Product List --%>
        <%
            List<ProductDTO> productList = (List<ProductDTO>) request.getAttribute("productList");
            if (productList != null && !productList.isEmpty()) {
        %>
        <table class="table table-bordered mt-4">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category ID</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <% for (ProductDTO product : productList) {
                System.out.println(product.getImageUrl());
            %>
            <tr>
                <td><%= product.getProductID() %>
                </td>
                <td><%= product.getName() %>
                </td>
                <td><%= product.getDescription() %>
                </td>
                <td><%= product.getPrice() %>
                </td>
                <td><%= product.getQuantity() %>
                </td>
                <td><%= product.getCategoryID() %>
                </td>
                <td>
                    <button class="btn btn-warning btn-sm"

                            onclick="editProduct('<%= product.getProductID() %>','<%= product.getName() %>', '<%= product.getPrice() %>', '<%= product.getQuantity() %>', '<%= product.getDescription() %>', '<%= product.getCategoryID() %>', '<%= product.getImageUrl() %>')">
                        Edit
                    </button>
                    <button class="btn btn-danger btn-sm" onclick="deleteProduct('<%= product.getProductID() %>')">
                        Delete
                    </button>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
        <% } else { %>
        <p>No products found.</p>
        <% } %>
    </main>
    <!-- MAIN -->
</section>
<!-- CONTENT -->

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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

    const deleteProduct = (id) => {
        if (confirm('Are you sure you want to delete this product?')) {
            fetch('/AAD_Assingment_01_war_exploded/product-delete-servlet', {
                method: 'POST',
                body: new URLSearchParams({productID: id}),
                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            }).then(response => {
                if (response.ok) {
                    window.location.reload();
                } else {
                    alert('Error deleting product');
                }
            }).catch(err => console.error(err));
        }
    };
</script>
</body>
</html>
