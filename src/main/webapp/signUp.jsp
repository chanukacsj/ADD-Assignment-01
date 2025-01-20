<%--
  Created by IntelliJ IDEA.
  User: CHANUKA
  Date: 1/19/2025
  Time: 5:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script> -->
    <link
            href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="./assets/css/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            height: 100vh;
            background-size:cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-color: var(--xiketic);
            color: white; /* Use contrasting text color */

        }
        img{
            width: 100%;
            height: 100%;
        }
        .container{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        :root {
            --xiketic: hsl(240, 100%, 6%);
        }


    </style>
</head>
<body>
<div class="container">
    <!-- <div class="card border-success mb-3" style="max-width: 18rem;">
        <div class="card-header h1">Login</div>
        <div class="card-body text-success">
        <h5 class="card-title">Success card title</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
    </div> -->
    <div class="forms-container">
        <div class="signin-signup">
            <form action="#" class="sign-in-form">
                <h2 class="title">Sign Up</h2>
                <div class="input-field mt-4">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Email" />
                </div>
                <div class="input-field mt-4">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" />
                </div>
                <P class="text mt-2">Already have an account? <a href="login.jsp">Login</a></P>
                <!-- <input type="submit" value="Login"  class="btn solid" /> -->
                <a href="/index.jsp"
                   class="button btn-outline-primary" style="font-size: 13px;">Sign Up</a>

            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
