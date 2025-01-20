<%--
  Created by IntelliJ IDEA.
  User: CHANUKA
  Date: 1/20/2025
  Time: 6:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<header class="header" data-header>
  <div class="header-top">
    <div class="container">

      <a href="#" class="logo">
        <img src="./assets/images/logo.svg" width="138" height="28" alt="booken home">
      </a>

      <div class="input-wrapper">
        <input type="search" name="search" placeholder="Search our store" class="input-field">

        <button class="btn btn-primary">Search</button>
      </div>

      <div class="header-action">

        <button class="header-action-btn" aria-label="cart" title="Cart">
          <span class="span">0</span>

          <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
        </button>

        <button class="nav-open-btn" aria-label="open menu" title="Open Menu" data-nav-toggler>
          <ion-icon name="menu-outline" aria-hidden="true"></ion-icon>
        </button>

        <%--                <button class="header-action-btn" aria-label="user" title="User">--%>
        <%--                    <ion-icon name="person-outline" aria-hidden="true"></ion-icon>--%>
        <%--                </button>--%>

        <a href="./login.jsp">
          <button type="button" class="btn btn-outline-primary" style="border-radius: 5px; padding: 13px 30px;" >Login</button>
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
            <a href="#" class="navbar-link">Home</a>
          </li>

          <li>
            <a href="#" class="navbar-link">Blog</a>
          </li>

          <li>
            <a href="#" class="navbar-link">Shop</a>
          </li>

          <li>
            <a href="#" class="navbar-link">About Us</a>
          </li>

          <li>
            <a href="#" class="navbar-link">Contact</a>
          </li>

        </ul>

      </nav>

      <a href="tel:+01-234-56789" class="header-contact-link">
        <ion-icon name="headset-outline" aria-hidden="true"></ion-icon>

        <span class="span">(+01)-234-56789</span>
      </a>

    </div>
  </div>

  <div class="overlay" data-overlay data-nav-toggler></div>
</header>
</body>
</html>
