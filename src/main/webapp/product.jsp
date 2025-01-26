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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">

    <!-- Boxicons -->
    <link href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
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
            <a href="#">
                <i class='bx bxs-dashboard'></i>
                <span class="text">Dashboard</span>
            </a>
        </li>
        <li><a href="#"><i class='bx bxs-group'></i> <span class="text">Users & Admin Management</span></a></li>
        <li><a href="#"><i class='bx bxs-shopping-bag-alt'></i> <span class="text">Category Management</span></a></li>
        <li><a href="#"><i class='bx bxs-message-dots'></i> <span class="text">Product Management</span></a></li>
    </ul>
    <ul class="side-menu">
        <li><a href="#"><i class='bx bxs-cog'></i> <span class="text">Settings</span></a></li>
        <li><a href="#" class="logout"><i class='bx bxs-log-out-circle'></i> <span class="text">Logout</span></a></li>
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
                    <li><a href="#">Products</a></li>
                    <li><i class='bx bx-chevron-right'></i></li>
                    <li><a href="#" class="active">Home</a></li>
                </ul>
            </div>
        </div>
        <div class="d-flex">
            <button type="button" class="btn btn-primary mb-5 me-3" style="margin-top: 3rem;" data-bs-toggle="modal" data-bs-target="#addProductModal">
                Add New Product
            </button>
            <button type="button" class="btn btn-success mb-5" style="margin-top: 3rem;" onclick="window.location.href='/AAD_Assingment_01_war_exploded/all-product-servlet';">
                View All Products
            </button>
        </div>

        <!-- Add Product Modal -->
        <div class="modal fade" id="addProductModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add New Product</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <form action="product-servlet" method="post" enctype="multipart/form-data">
                            <div class="mb-3">
                                <label for="name" class="form-label">Product Name</label>
                                <input type="text" class="form-control" name="name" id="name" required>
                            </div>
                            <div class="mb-3">
                                <label for="description" class="form-label">Description</label>
                                <input type="text" class="form-control" name="description" id="description" required>
                            </div>
                            <div class="mb-3">
                                <label for="price" class="form-label">Price</label>
                                <input type="number" class="form-control" name="price" id="price" required>
                            </div>
                            <div class="mb-3">
                                <label for="qty" class="form-label">Quantity</label>
                                <input type="number" class="form-control" name="qty" id="qty" required>
                            </div>
                            <div class="mb-3">
                                <label for="CategoryID" class="form-label">Category ID</label>
                                <input type="number" class="form-control" name="CategoryID" id="CategoryID" required>
                            </div>
                            <div class="mb-3">
                                <label for="ImageUrl" class="form-label">Product Image</label>
                                <input type="file" class="form-control" name="ImageUrl" id="ImageUrl" required>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">Add Product</button>
                                <button type="reset" class="btn btn-secondary">Clear</button>
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
            <% for (ProductDTO product : productList) { %>
            <tr>
                <td><%= product.getProductID() %></td>
                <td><%= product.getName() %></td>
                <td><%= product.getDescription() %></td>
                <td><%= product.getPrice() %></td>
                <td><%= product.getQuantity() %></td>
                <td><%= product.getCategoryID() %></td>
                <td>
                    <button class="btn btn-warning btn-sm me-2" onclick="editProduct('<%= product.getProductID() %>', '<%= product.getName() %>', '<%= product.getPrice() %>', '<%= product.getQuantity() %>', '<%= product.getDescription() %>', '<%= product.getCategoryID() %>')">Edit</button>
                    <button class="btn btn-danger btn-sm" onclick="deleteProduct('<%= product.getProductID() %>')">Delete</button>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script>
    const editProduct = (id, name, price, quantity, description, category) => {
        // Populate and show edit modal logic
    };
    const deleteProduct = (id) => {
        if (confirm('Are you sure you want to delete this product?')) {
            fetch('/AAD_Assingment_01_war_exploded/product-delete-servlet', {
                method: 'POST',
                body: new URLSearchParams({ productID: id }),
                headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
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
