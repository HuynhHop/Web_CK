<!--
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf_8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
        email address below.</p>
    <form action="login" method="post">
        <input type="hidden" name="action" value="add">
        <label class="pad_top">User ID:</label>
        <input type="text" name="userId" required><br>
        <label class="pad_top">User Name:</label>
        <input type="text" name="username" required><br>
        <label class="pad_top">Password:</label>
        <input type="text" name="password" required><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstname" required><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastname" required><br>
        <label class="pad_top">Phone:</label>
        <input type="text" name="phonenumber" required><br>
        <label class="pad_top">Address:</label>
        <input type="text" name="address" required><br>
        <label style="margin-right: 10px"> </label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>
</body>
</html>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>

<h1>LOG IN</h1>
<p>Enter your username and password below.</p>
<form action="login" method="post">
    <input type="hidden" name="action" value="add">
     
    <label class="pad_top">User ID:</label>
    <input type="text" name="userId" required><br>
    
    <label class="pad_top">User Name:</label>
    <input type="text" name="username" required><br>
    <label class="pad_top">Password:</label>
    <input type="text" name="password" required><br>
     
    <label style="margin-right: 10px"> </label>
    

    <input type="submit" value="Join Now" class="margin_left">
</form>


 Your other HTML content goes here 

</body>
</html>-->
    
<%-- 
    Document   : contact
    Created on : Nov 15, 2023, 10:14:56 AM
    Author     : Huynh Hop
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Web bán đồ ăn gia súc</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>

 header section starts 
<header>
<a href="index.jsp" class="logo"><img src="image/logo.png" alt=""></a> 

<div id="menu-bar" class="fas fa-bars"></div>

<nav class="navbar">
    <a href="index.jsp">Trang Chủ</a>
    <a href="#Danhmuc">Danh mục</a>
    <a href="shop.jsp">Sản phẩm</a>
    <a href="#Banchay">Bán chạy</a>
    <a href="contact.jsp">Liên hệ</a>
    <a href="login">Đăng nhập</a>
</nav>

</header>

 home section starts 
<!--<section class="home" id="Trangchu">
  <div class="content">
    <h3>Đăng ký </h3>
    <p>Năm nay không vô địch thì khi nào vô địch nữa!</p>
    <a href="#" class="btn">order now</a>
        <form action="emailList" method="post">
             <input type="hidden" name="action" value="add">
            <label>Tài khoản</label>
            <input type="text" placeholder=" Username" name="username" ><br>
            <label>Mật khẩu</label>
            <input type="text" placeholder=" Password" name="password"><br>
            <label>Họ</label>
            <input type="text" placeholder=" Họ" name="firstname" ><br>
            <label>Tên</label>
            <input type="text" placeholder=" Tên" name="lastname" ><br>
            <label>Số điện thoại</label>
            <input type="text" placeholder=" SĐT" name="phonenumber" ><br>
            <label>Địa chỉ</label>
            <input type="text" placeholder=" Địa chỉ" name="address" ><br>
            
            
        <input type="submit" value="Đăng ký" class="margin_left">
        </form>
  </div>

  <div class="image">
    <img src="image/t1.png" alt="">
  </div>

</section>-->
  <section class="home" id="Trangchu">
  <div class="content">
    <h3>Đăng nhập </h3>
    <p>Năm nay không vô địch thì khi nào vô địch nữa!</p>
    <form action="login" method="post" class="registration-form">
      <input type="hidden" name="action" value="add">
      
      <div class="form-group">
        <label for="username">Tài khoản</label>
        <input type="text" id="username" placeholder="Username" name="username"><br>
      </div>
      
      <div class="form-group">
        <label for="password">Mật khẩu</label>
        <input type="password" id="password" placeholder="Password" name="password"><br>
      </div>
      
      <div class="form-group">
        <a href="login.jsp">Đăng ký</a>
      </div>
      
      
            <%
                String mess = (String) request.getAttribute("mess");
                if (mess != null && !mess.isEmpty()) {
            %>
                <p><%= mess %></p>
            <%
                }
            %>
      <div class="form-group">
        <input type="submit" value="Đăng nhập" class="margin_left">
      </div>
    </form>
  </div>

  <div class="image">
    <img src="image/t1.png" alt="">
  </div>
</section>          

 home section ends 

 footer starts 
<footer class="section-p1">
    <div class="col">
      <h4>Contact</h4>
      <p><strong>Address: </strong> 01 Võ Văn Ngân, P. Linh Chiểu, Q. Thủ Đức, TP. Hồ Chí Minh</p>
      <p><strong>Phone: </strong> +84 0123456789/ +84 0987654321</p>
      <p><strong>Hours: </strong> 9:00 A.M - 6:00 P.M, Mon - Sat</p>
      <div class="follow">
        <h4>Follow us:</h4>
        <div class="icon">
          <i class="fab fa-facebook-f"></i>
          <i class="fab fa-twitter"></i>
          <i class="fab fa-instagram"></i>
          <i class="fab fa-pinterest-p"></i>
          <i class="fab fa-youtube"></i>
        </div>
      </div>
    </div>

    <div class="col">
      <h4>About</h4>
      <a href="#">About us</a>
      <a href="#">Delivery Information</a>
      <a href="#">Privacy Policy</a>
      <a href="#">Contact us</a>
    </div>

    <div class="col">
      <h4>Account</h4>
      <a href="#">Sign In</a>
      <a href="#">View Cart</a>
      <a href="#">Track My order</a>
      <a href="#">Help</a>
    </div>

    <div class="col-paythod">
      <h4>Secured Payment Gateways</h4>
      <img src="image/momo.png" alt="">
      <img src="image/zalopay.png" alt="">
    </div>

    <div class="copyright">
      <p>@ 2023, Final Project, Lập trình Web</p>
    </div>
</footer>
<!--
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập & Đăng ký Web</title>
    <link rel="stylesheet" type="text/css" href="css/loginstyle.css">
</head>
<body>
    <div class="container">
        <span></span>
        <span></span>
        <span></span>
    
        <form id="signinForm">
            <h2>Login</h2>
            <div class="inputBox">
                <input type="text" placeholder="Username">
            </div>
            <div class="inputBox">
                <input type="password" placeholder="Password">
            </div>
            <div class="inputBox group">
                <a href="#">Forget Password?</a>
                <a href="#" id="signup">Signup</a>               
                <a href="register.jsp" >Signup</a>
            </div>
            <div class="inputBox">
                <input type="submit" value="Sign in">
            </div>
        </form>

        <form id="signupForm">
            <form action="emailList" method="post">
                <input type="hidden" name="action" value="add">
                <h2>Registration</h2>
                <div class="inputBox">
                    <input type="text" placeholder="Username" name="username" required>
                </div>
                <div class="inputBox">
                    <input type="email" placeholder="Email Address">
                </div>
                <div class="inputBox">
                    <input type="password" placeholder="Create Password" name="password" required>
                </div>
                <div class="inputBox">
                    <input type="text" placeholder="First Name" name="firstname" required>
                </div>
                <div class="inputBox">
                    <input type="text" placeholder="Last Name" name="lastname" required>
                </div>
                <div class="inputBox">
                    <input type="text" placeholder="Phone Number" name="phonenumber" required>
                </div>
                <div class="inputBox">
                    <input type="text" placeholder="Address" name="address" required>
                </div>
                <div class="inputBox">
                    <input type="submit" value="Register Account">
                </div>
                <div class="inputBox group">
                    <a href="#">Already Have an Account? <b id="signin">Login</b></a>
                </div>
            </form>
        </form>
    </div>
    <script>
        let signup = document.querySelector('#signup');
        let signin = document.querySelector('#signin');
        let body = document.querySelector('body');
        signup.onclick = function(){
            body.classList.add('signup');}
        signin.onclick = function(){
            body.classList.remove('signup');}
    </script>
</body>
</html>-->