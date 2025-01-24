<%--
  Created by IntelliJ IDEA.
  User: CHANUKA
  Date: 1/20/2025
  Time: 2:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <style>
    .featured{
      margin-top: 15rem;
    }
    .dropdown{
      margin-top: 6px;
    }
    .img-children{
      width: 175px;
      height: 236px;
      margin-top: 44px;
      margin-left: 44px;
    }
  </style>
  <!--
    - primary meta tags
  -->
  <title>Booken - Get Your New Book Collections</title>
  <meta name="title" content="Booken - Get Your New Book Collections">
  <meta name="description" content="This is a Book eCommerce html template made by codewithsadee">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


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

        <a href="login.jsp">
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
            <a href="index.jsp" class="navbar-link">Home</a>
          </li>

          <li>
            <a href="#" class="navbar-link">Blog</a>
          </li>

          <li>
            <a href="index.jsp#FEATURED-COLLECTION" class="navbar-link">Shop</a>
          </li>

          <li>
            <a href="#" class="navbar-link">About Us</a>
          </li>

          <li>
            <!-- <a href="#" class="navbar-link">Categories</a> -->
            <div class="dropdown">
              <button class=" btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="font-size: 20px;">
                Categories
              </button>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="childrenBook.jsp">Children’s Books</a></li>
                <li><a class="dropdown-item" href="mystery&Thriller.jsp">Mystery & Thriller</a></li>
                <li><a class="dropdown-item" href="romance.jsp">Romance</a></li>
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


    <!--
      - #FEATURED COLLECTION
    -->

    <section class="section featured " id="FEATURED-COLLECTION" aria-label="featured collection">
      <div class="container">

        <h2 class="h2 section-title">Children’s Book Collections</h2>

        <p class="section-text">
          Contrary to popular belief, Lorem Ipsum is not simply random.
        </p>

        <ul class="grid-list">

          <li>
            <div class="product-card">

              <span class="card-badge">New</span>

              <div class="card-banner img-holder" style="--width: 384; --height: 480;">
                <img src="./assets/images/children (1).jpg" width="384" height="480" loading="lazy" alt="Black Night"
                     class="img-children">

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
                  <a href="#" class="card-title">In Your Own BackYard </a>
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
                <img src="./assets/images/children (1).png" width="384" height="480" loading="lazy"
                     alt="About The First Night" class="img-children">

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
                  <a href="#" class="card-title">The Three Naughty Kids</a>
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
                <img src="./assets/images/children (1).webp" width="384" height="480" loading="lazy" alt="Open The Sky"
                     class="img-children">


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
                  <a href="#" class="card-title">Marley</a>
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
                <img src="./assets/images/children (2).jpg" width="384" height="480" loading="lazy" alt="Book Hard Cover"
                     class="img-children">

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
                  <a href="#" class="card-title">Drogons On The Inside</a>
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
                <img src="./assets/images/children (2).png" width="384" height="480" loading="lazy"
                     alt="The Big Book Of Science" class="img-children">

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
                  <a href="#" class="card-title">The Bear & The Hare</a>
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
                <img src="./assets/images/children (2).webp" width="384" height="480" loading="lazy" alt="By The Air"
                     class="img-children">

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
                  <a href="#" class="card-title">I Hear You Forest</a>
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
                <img src="./assets/images/children (3).jpg" width="384" height="480" loading="lazy"
                     alt="Murdering Last Year" class="img-children">

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
                <img src="./assets/images/children (3).webp" width="384" height="480" loading="lazy" alt="Stay Healthy"
                     class="img-children">

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
                  <a href="#" class="card-title">Charlottes</a>
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
        Copyright 2025
      </p>

      <img src="./assets/images/payment-mehtod.png" width="311" height="30" loading="lazy" alt="Payment method"
           class="w-100">

    </div>
  </div>

</footer>

<script src="./assets/js/app.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>



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
