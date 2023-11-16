<%-- 
    Document   : contact
    Created on : Nov 15, 2023, 10:14:56 AM
    Author     : Huynh Hop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

<!-- header section starts -->
<header>
<a href="index.jsp" class="logo"><img src="image/logo.png" alt=""></a> 

<div id="menu-bar" class="fas fa-bars"></div>

<nav class="navbar">
    <a href="index.jsp">Trang Chủ</a>
    <a href="index.jsp#Danhmuc">Danh mục</a>
    <a href="shop.jsp">Sản phẩm</a>
    <a href="index.jsp#Banchay">Bán chạy</a>
    <a href="contact.jsp">Liên hệ</a>
    <a href="login.jsp">Đăng nhập</a>
</nav>

</header>

<!-- home section starts -->
<section class="home" id="Trangchu">
  <div class="content">
    <h3>Đăng nhập </h3>
    <p>Năm nay không vô địch thì khi nào vô địch nữa!</p>
<!--    <a href="#" class="btn">order now</a>-->
    <div class="login">
        <form action="emailList" method="post">
             <input type="hidden" name="action" value="add">
            <label>Mã định danh</label>
            <input type="text" placeholder="" name="maId" value="${user.userid}"><br>
            <label>Tài khoản</label>
            <input type="text" placeholder=" username" name="userName" value="${user.username}"><br>
            <label>Mật khẩu</label>
            <input type="text" placeholder=" password" name="passWord" value="${user.password}"><br>
            <label>Họ</label>
            <input type="text" placeholder=" Họ" name="firstName" value="${user.firstname}"><br>
            <label>Tên</label>
            <input type="text" placeholder=" Tên" name="lastName" value="${user.lastname}"><br>
            <label>Số điện thoại</label>
            <input type="text" placeholder=" SĐT" name="phone" value="${user.phonenumber}"><br>
            <label>Địa chỉ</label>
            <input type="text" placeholder=" Địa chỉ" name="address" value="${user.address}"><br>
            
<!--            <label>Email</label>
            <input type="email" name="email" value="${user.email}"><br>-->
        <input type="submit" value="Đăng nhập" class="margin_left">
        </form>
    </div>
  </div>

  <div class="image">
    <img src="image/t1.png" alt="">
  </div>

</section>
<!-- home section ends -->

<!-- footer starts -->
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