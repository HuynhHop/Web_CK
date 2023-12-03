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
<!-- header section ends -->

<!-- header-page section starts -->
<section id="shoppage-header">
    <h2>#SanPham</h2>

    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsa a magnam aut deserunt quae ullam dolores quam sit, porro esse possimus provident nam, tenetur architecto quod molestiae itaque iusto magni.</p>

</section>

<!-- product section starts-->
<section class="products">
    <h1 class="heading"> Our <span>Products</span></h1>
        <div class="box-container">
            <div class="box" onclick="window.location.href='product.jsp';">
                <span class="price">400.000~500.000 đồng</span>
                <!--<img src="image/pd1.jpg" alt="">-->
                <input type="tel" id="phonenumber" value="${product.images}"><br>
                <h3>Thức ăn cho gà T2500</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <a href="#" class="btn">Add cart</a>
            </div>

            <div class="box">
              <span class="price">400.000~500.000 đồng</span>
              <img src="image/pd2.jpg" alt="">
              <h3>Thức ăn cho cá TD03</h3>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="far fa-star"></i>
              </div>
              <a href="#" class="btn">Add cart</a>
            </div>

            <div class="box">
              <span class="price">400.000~500.000 đồng</span>
              <img src="image/pd3.jpg" alt="">
              <h3>Thức ăn cho cá FS5</h3>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="far fa-star"></i>
              </div>
              <a href="#" class="btn">Add cart</a>
            </div>

            <div class="box">
              <span class="price">400.000~500.000 đồng</span>
              <img src="image/pd4.jpg" alt="">
              <h3>Thức ăn cho heo HIMART A75</h3>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="far fa-star"></i>
              </div>
              <a href="#" class="btn">Add cart</a>
            </div>

            <div class="box">
              <span class="price">400.000~500.000 đồng</span>
              <img src="image/pd5.jpg" alt="">
              <h3>Thức ăn cho heo HIMART 222</h3>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="far fa-star"></i>
              </div>
              <a href="#" class="btn">Add cart</a>
            </div>

            <div class="box">
              <span class="price">400.000~500.000 đồng</span>
              <img src="image/pd6.jpg" alt="">
              <h3>Thức ăn cho vịt, ngan 370</h3>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="far fa-star"></i>
              </div>
              <a href="#" class="btn">Add cart</a>
            </div>

            <div class="box">
              <span class="price">400.000~500.000 đồng</span>
              <img src="image/pd1.jpg" alt="">
              <h3>Thức ăn cho gà T2500</h3>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="far fa-star"></i>
              </div>
              <a href="#" class="btn">Add cart</a>
          </div>

          <div class="box">
            <span class="price">400.000~500.000 đồng</span>
            <img src="image/pd2.jpg" alt="">
            <h3>Thức ăn cho cá TD03</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
            </div>
            <a href="#" class="btn">Add cart</a>
          </div>

          <div class="box">
            <span class="price">400.000~500.000 đồng</span>
            <img src="image/pd3.jpg" alt="">
            <h3>Thức ăn cho cá FS5</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
            </div>
            <a href="#" class="btn">Add cart</a>
          </div>

          <div class="box">
            <span class="price">400.000~500.000 đồng</span>
            <img src="image/pd4.jpg" alt="">
            <h3>Thức ăn cho heo HIMART A75</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
            </div>
            <a href="#" class="btn">Add cart</a>
          </div>

          <div class="box">
            <span class="price">400.000~500.000 đồng</span>
            <img src="image/pd5.jpg" alt="">
            <h3>Thức ăn cho heo HIMART 222</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
            </div>
            <a href="#" class="btn">Add cart</a>
          </div>

          <div class="box">
            <span class="price">400.000~500.000 đồng</span>
            <img src="image/pd6.jpg" alt="">
            <h3>Thức ăn cho vịt, ngan 370</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
            </div>
            <a href="#" class="btn">Add cart</a>
          </div>

        </div>
</section>
<!-- product section end-->

<!-- pagination section starts-->
<section id="pagination">
    <a href="#">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#"><i class="fas fa-long-arrow-alt-right"></i></a>
</section>
<!-- pagination section starts-->

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
<!-- footer ends -->





<!--custom js file link -->
<script src="js/script.js"></script>
</body>
</html>