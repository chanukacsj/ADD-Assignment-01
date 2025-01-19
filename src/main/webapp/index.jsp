<%--
  Created by IntelliJ IDEA.
  User: CHANUKA
  Date: 1/14/2025
  Time: 12:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--
      - primary meta tags
    -->
    <title>Booken - Get Your New Book Collections</title>
    <meta name="title" content="Booken - Get Your New Book Collections">
    <meta name="description" content="This is a Book eCommerce html template made by codewithsadee">

    <!--
      - favicon
    -->
    <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">

    <!--
      - custom css link
    -->
    <link rel="stylesheet" href="./assets/css/style.css">

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

                <button class="header-action-btn" aria-label="user" title="User">
                    <ion-icon name="person-outline" aria-hidden="true"></ion-icon>
                </button>

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





<main>
    <article>

        <!--
          - #HERO
        -->

        <section class="section hero has-bg-image" aria-label="home"
                 style="background-image: url('/assets/images/hero-bg.jpg')">
            <div class="container">

                <div class="hero-content">

                    <h1 class="h1 hero-title has-after">
                        Get Your New <br>
                        Book Collections
                    </h1>

                    <p class="hero-text">
                        There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
                        in some formr.
                    </p>

                    <div class="btn-wrapper">

                        <a href="#" class="btn">
                            <span class="span">Explore More</span>

                            <ion-icon name="cart" aria-hidden="true"></ion-icon>
                        </a>

                        <button class="play-btn" aria-label="play video">
                            <ion-icon name="play-outline" aria-hidden="true"></ion-icon>
                        </button>

                    </div>

                </div>

                <figure class="hero-banner">
                    <img src="./assets/images/hero-banner.png" width="475" height="600" alt="hero banner" class="w-100">
                </figure>

            </div>
        </section>





        <!--
          - #FEATURE
        -->

        <section class="section feature" aria-label="feature">
            <div class="container">

                <div class="grid-list">

                    <li>
                        <div class="feature-card">

                            <div class="card-icon">
                                <img src="./assets/images/feature-1.png" width="100" height="100" loading="lazy" alt="feature icon"
                                     class="w-100">
                            </div>

                            <div>
                                <h3 class="h3 card-title">Free Shipping</h3>

                                <p class="card-text">Order over $100</p>
                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="feature-card">

                            <div class="card-icon">
                                <img src="./assets/images/feature-2.png" width="100" height="100" loading="lazy" alt="feature icon"
                                     class="w-100">
                            </div>

                            <div>
                                <h3 class="h3 card-title">Secure Payment</h3>

                                <p class="card-text">100% Secure Payment</p>
                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="feature-card">

                            <div class="card-icon">
                                <img src="./assets/images/feature-3.png" width="100" height="100" loading="lazy" alt="feature icon"
                                     class="w-100">
                            </div>

                            <div>
                                <h3 class="h3 card-title">Best Price</h3>

                                <p class="card-text">Guaranteed Low Cost</p>
                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="feature-card">

                            <div class="card-icon">
                                <img src="./assets/images/feature-4.png" width="100" height="100" loading="lazy" alt="feature icon"
                                     class="w-100">
                            </div>

                            <div>
                                <h3 class="h3 card-title">Easy Return</h3>

                                <p class="card-text">Within 30 Days returns</p>
                            </div>

                        </div>
                    </li>

                </div>

            </div>
        </section>






        <!--
          - #FEATURED COLLECTION
        -->

        <section class="section featured" aria-label="featured collection">
            <div class="container">

                <h2 class="h2 section-title">Featured Collections</h2>

                <p class="section-text">
                    Contrary to popular belief, Lorem Ipsum is not simply random.
                </p>

                <ul class="grid-list">

                    <li>
                        <div class="product-card">

                            <span class="card-badge">New</span>

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-1.png" width="384" height="480" loading="lazy" alt="Black Night"
                                     class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Black Night</a>
                                </h3>

                                <data class="card-price" value="80">$80.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-2.png" width="384" height="480" loading="lazy"
                                     alt="About The First Night" class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">About The First Night</a>
                                </h3>

                                <data class="card-price" value="19">$19.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-3.png" width="384" height="480" loading="lazy" alt="Open The Sky"
                                     class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Open The Sky</a>
                                </h3>

                                <data class="card-price" value="80">$80.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-4.png" width="384" height="480" loading="lazy" alt="Book Hard Cover"
                                     class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Book Hard Cover</a>
                                </h3>

                                <data class="card-price" value="55">$55.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-5.png" width="384" height="480" loading="lazy"
                                     alt="The Big Book Of Science" class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">The Big Book Of Science</a>
                                </h3>

                                <data class="card-price" value="100">$100.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-6.png" width="384" height="480" loading="lazy" alt="By The Air"
                                     class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">By The Air</a>
                                </h3>

                                <data class="card-price" value="89">$89.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-7.png" width="384" height="480" loading="lazy"
                                     alt="Murdering Last Year" class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Murdering Last Year</a>
                                </h3>

                                <data class="card-price" value="34">$34.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li>
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-8.png" width="384" height="480" loading="lazy" alt="Stay Healthy"
                                     class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Stay Healthy</a>
                                </h3>

                                <data class="card-price" value="67">$67.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                </ul>

            </div>
        </section>





        <!--
          - #OFFER
        -->

        <section class="section offer has-bg-image" aria-label="special offer"
                 style="background-image: url('./assets/images/section-bg.jpg')">
            <div class="container">

                <p class="section-subtitle">Special Offers</p>

                <h2 class="h2 section-title">All books are 50% off now! Don't miss such a deal!</h2>

                <p class="section-text">
                    You will learn how to animate shapes like circles, lines, and polygons. You'll also learn how to animate CSS
                    properties
                    like color and size.
                </p>

                <ul class="countdown-list">

                    <li>
                        <p class="countdown-time">15</p>

                        <p class="countdown-label">Days</p>
                    </li>

                    <li>
                        <p class="countdown-time">21</p>

                        <p class="countdown-label">Hour</p>
                    </li>

                    <li>
                        <p class="countdown-time">18</p>

                        <p class="countdown-label">Min</p>
                    </li>

                    <li>
                        <p class="countdown-time">14</p>

                        <p class="countdown-label">Sec</p>
                    </li>

                </ul>

                <a href="#" class="btn">Explore More</a>

            </div>
        </section>





        <!--
          - #POPULAR
        -->

        <section class="section popular" aria-label="popular collection">
            <div class="container">

                <h2 class="h2 section-title">Popular Collections</h2>

                <p class="section-text">
                    Contrary to popular belief, Lorem Ipsum is not simply random.
                </p>

                <ul class="filter-list">

                    <li>
                        <button class="filter-btn" data-filter-btn="featured">Featured Products</button>
                    </li>

                    <li>
                        <button class="filter-btn" data-filter-btn="new">New Products</button>
                    </li>

                    <li>
                        <button class="filter-btn" data-filter-btn="sell">Upsell Prodcuts</button>
                    </li>

                </ul>

                <ul class="product-list has-scrollbar">

                    <li class="scrollbar-item" data-filter="sell">
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-9.png" width="384" height="480" loading="lazy" alt="Self Care"
                                     class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Self Care</a>
                                </h3>

                                <data class="card-price" value="34">$34.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li class="scrollbar-item" data-filter="new">
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-10.png" width="384" height="480" loading="lazy" alt="Welcome to Space"
                                     class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Welcome to Space</a>
                                </h3>

                                <data class="card-price" value="150">$150.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li class="scrollbar-item" data-filter="sell">
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-11.png" width="384" height="480" loading="lazy" alt="Monsoon"
                                     class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Monsoon</a>
                                </h3>

                                <data class="card-price" value="23">$23.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li class="scrollbar-item" data-filter="featured">
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-12.png" width="384" height="480" loading="lazy"
                                     alt="Every Thing You Ever" class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Every Thing You Ever</a>
                                </h3>

                                <data class="card-price" value="57">$57.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li class="scrollbar-item" data-filter="new">
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-13.png" width="384" height="480" loading="lazy"
                                     alt="Graphic Design School" class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Graphic Design School</a>
                                </h3>

                                <data class="card-price" value="100">$100.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li class="scrollbar-item" data-filter="sell">
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-14.png" width="384" height="480" loading="lazy" alt="Food Poison"
                                     class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Food Poison</a>
                                </h3>

                                <data class="card-price" value="76">$76.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li class="scrollbar-item" data-filter="featured">
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-15.png" width="384" height="480" loading="lazy" alt="Design"
                                     class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Design</a>
                                </h3>

                                <data class="card-price">Free</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                    <li class="scrollbar-item" data-filter="new">
                        <div class="product-card">

                            <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                                <img src="./assets/images/book-16.png" width="384" height="480" loading="lazy" alt="World News"
                                     class="img-cover">

                                <div class="card-action">

                                    <button class="action-btn" aria-label="quick view" title="Quick View">
                                        <ion-icon name="eye-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to wishlist" title="Add to Wishlist">
                                        <ion-icon name="heart-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="compare" title="Compare">
                                        <ion-icon name="repeat-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                    <button class="action-btn" aria-label="add to cart" title="Add to Cart">
                                        <ion-icon name="bag-handle-outline" aria-hidden="true"></ion-icon>
                                    </button>

                                </div>
                            </div>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">World News</a>
                                </h3>

                                <data class="card-price" value="20">$20.00</data>

                                <div class="rating-wrapper">
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                    <ion-icon name="star-outline" aria-hidden="true"></ion-icon>
                                </div>

                            </div>

                        </div>
                    </li>

                </ul>

            </div>
        </section>





        <!--
          - #BLOG
        -->

        <section class="section blog" aria-label="blog">
            <div class="container">

                <h2 class="h2 section-title">Latest Blog</h2>

                <p class="section-text">
                    Contrary to popular belief, Lorem Ipsum is not simply random.
                </p>

                <ul class="has-scrollbar">

                    <li class="scrollbar-item">
                        <div class="blog-card">

                            <figure class="card-banner img-holder" style="--width: 600; --height: 400;">
                                <img src="./assets/images/blog-1.jpg" width="600" height="400" loading="lazy"
                                     alt="Significant reading has info" class="img-cover">
                            </figure>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Significant reading has info</a>
                                </h3>

                                <ul class="card-meta-list">

                                    <li class="meta-item">
                                        <time class="meta-link" datetime="2022-03-04">04 March, 2022</time>
                                    </li>

                                    <li class="meta-item">
                                        <a href="#" class="meta-link">1 comment</a>
                                    </li>

                                </ul>

                                <p class="card-text">
                                    The summer holidays are wonderful. Dressing for them can be significantly less so: Packing light...
                                </p>

                                <a href="#" class="btn card-btn">Read More...</a>

                            </div>

                        </div>
                    </li>

                    <li class="scrollbar-item">
                        <div class="blog-card">

                            <figure class="card-banner img-holder" style="--width: 600; --height: 400;">
                                <img src="./assets/images/blog-2.jpg" width="600" height="400" loading="lazy"
                                     alt="Activities Book International" class="img-cover">
                            </figure>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">Activities Book International</a>
                                </h3>

                                <ul class="card-meta-list">

                                    <li class="meta-item">
                                        <time class="meta-link" datetime="2022-03-04">04 March, 2022</time>
                                    </li>

                                    <li class="meta-item">
                                        <a href="#" class="meta-link">1 comment</a>
                                    </li>

                                </ul>

                                <p class="card-text">
                                    The summer holidays are wonderful. Dressing for them can be significantly less so: Packing light...
                                </p>

                                <a href="#" class="btn card-btn">Read More...</a>

                            </div>

                        </div>
                    </li>

                    <li class="scrollbar-item">
                        <div class="blog-card">

                            <figure class="card-banner img-holder" style="--width: 600; --height: 400;">
                                <img src="./assets/images/blog-3.jpg" width="600" height="400" loading="lazy"
                                     alt="International activities of the book" class="img-cover">
                            </figure>

                            <div class="card-content">

                                <h3 class="h3">
                                    <a href="#" class="card-title">International activities of the book</a>
                                </h3>

                                <ul class="card-meta-list">

                                    <li class="meta-item">
                                        <time class="meta-link" datetime="2022-03-04">04 March, 2022</time>
                                    </li>

                                    <li class="meta-item">
                                        <a href="#" class="meta-link">1 comment</a>
                                    </li>

                                </ul>

                                <p class="card-text">
                                    The summer holidays are wonderful. Dressing for them can be significantly less so: Packing light...
                                </p>

                                <a href="#" class="btn card-btn">Read More...</a>

                            </div>

                        </div>
                    </li>

                </ul>

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
                    <img src="./assets/images/logo.svg" width="138" height="28" alt="booken home">
                </a>

                <p class="footer-text">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor inci ut labore et dolore
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
                Copyright 2022 | Made With Love by codewithsadee.
            </p>

            <img src="./assets/images/payment-mehtod.png" width="311" height="30" loading="lazy" alt="Payment method"
                 class="w-100">

        </div>
    </div>

</footer>





<!--
  - #BACK TO TOP
-->

<a href="#top" class="back-top-btn" aria-label="back to top" data-back-top-btn>
    <ion-icon name="chevron-up" aria-hidden="true"></ion-icon>
</a>





<!--
  - custom js link
-->
<script src="./assets/js/script.js" defer></script>

<!--
  - ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

</html>
