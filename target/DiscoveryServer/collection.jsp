<%--
  Created by IntelliJ IDEA.
  User: 向慧祺
  Date: 2021/2/10
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.min.css" />
  <link rel="stylesheet" type="text/css" href="css/style_user_center.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/Mystyle.css" rel="stylesheet">
  <script src="js/jquery-2.1.1.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <img src="img/home.png" class="home-pic">
      <a class="navbar-brand" href="index.html">首页</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li><a href="register.jsp">注册</a></li>
        <li><a href="collection.jsp">我的收藏</a></li>
        <li><a href="#">客户服务</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="header" >
  <div class="header" >
    <div class="header-info">
      <img class="header-img" src="img/img_user_center/logo-white.png"/>
    </div>
    <div class="header-info">
      <a class="info" >我的收藏</a>
    </div>

  </div>
</div>
<div class="demo">
  <div class="head-border">
    <div id="borderbottom1" class="border-bottom" style="border-color: red"></div>
    <div id="borderbottom2" class="border-bottom"></div>
    <div id="borderbottom3" class="border-bottom"></div>
    <div id="borderbottom4" class="border-bottom"></div>
    <div id="borderbottom5" class="border-bottom"></div>
    <div id="borderbottom6" class="border-bottom"></div>
    <div id="borderbottom7" class="border-bottom"></div>
    <div id="borderbottom8" class="border-bottom"></div>
    <div id="borderbottom9" class="border-bottom"></div>
    <div id="borderbottom10" class="border-bottom"></div>

  </div>
  <div class="container">
    <div id="first-page" class="container inside">

      <div id="first-row" class="row">

      </div>



    </div>
    <div id="second-page" class="container inside" style="display: none">

      <div class="row">
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-1.jpg">
                <img class="pic-2" src="img/img_user_center/img-2.jpg">
              </a>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Blouse</a></h3>
              <div class="price">$25.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-3.jpg">
                <img class="pic-2" src="img/img_user_center/img-4.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Men's Shirt</a></h3>
              <div class="price"><span>$35.00</span> $28.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="third-page" class="container inside" style="display: none">

      <div class="row">
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-1.jpg">
                <img class="pic-2" src="img/img_user_center/img-2.jpg">
              </a>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Blouse</a></h3>
              <div class="price">$25.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-3.jpg">
                <img class="pic-2" src="img/img_user_center/img-4.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Men's Shirt</a></h3>
              <div class="price"><span>$35.00</span> $28.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="fourth-page" class="container inside" style="display: none">

      <div class="row">
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-1.jpg">
                <img class="pic-2" src="img/img_user_center/img-2.jpg">
              </a>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Blouse</a></h3>
              <div class="price">$25.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-3.jpg">
                <img class="pic-2" src="img/img_user_center/img-4.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Men's Shirt</a></h3>
              <div class="price"><span>$35.00</span> $28.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="fifth-page" class="container inside" style="display: none">

      <div class="row">
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-1.jpg">
                <img class="pic-2" src="img/img_user_center/img-2.jpg">
              </a>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Blouse</a></h3>
              <div class="price">$25.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-3.jpg">
                <img class="pic-2" src="img/img_user_center/img-4.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Men's Shirt</a></h3>
              <div class="price"><span>$35.00</span> $28.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-sm-4">
          <div class="product-grid">
            <div class="product-image">
              <a href="#" class="image">
                <img class="pic-1" src="img/img_user_center/img-5.jpg">
                <img class="pic-2" src="img/img_user_center/img-6.jpg">
              </a>
              <span class="product-sale-label">Sale</span>
              <div class="product-button-group">
                <a href="#" class="add-to-wishlist">Add to wishlist</a>
                <a href="#" class="quick-view">Quick view</a>
              </div>
            </div>
            <div class="product-content">
              <h3 class="title"><a href="#">Women's Shirt</a></h3>
              <div class="price"><span>$27.00</span> $20.00</div>
              <a href="#" class="add-to-cart">Add to Cart</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="btn page">
      <input class="btn btn-default pre" disabled="true" type="button" value="上一页" onclick="precolor()"/>
      <input class="btn btn-default next" type="button" value="下一页" onclick="nextcolor()"/>
    </div>
  </div>

</div>

</body>
</html>
<script type="text/javascript">
  window.load();
  var borderArray=['borderbottom1','borderbottom2','borderbottom3','borderbottom4',
    'borderbottom5','borderbottom6','borderbottom7','borderbottom8',
    'borderbottom9','borderbottom10']
  var pageArray=['first-page','second-page','third-page','fourth-page','fifth-page']
  var i=0;
  var a=document.getElementById(borderArray[i]);
  var page=document.getElementById(pageArray[i]);

  var btn=document.getElementsByClassName('pre')[0];

  function nextcolor() {
    if(i==0){
      btn.disabled=false;
    }
    var target = a.nextElementSibling;
    a.style.borderColor='#8080801c'
    target.style.borderColor='red'
    page.style.display='none'
    document.getElementById(pageArray[i+1]).style.display='block'
    i++;
    a=document.getElementById(borderArray[i]);
    page=document.getElementById(pageArray[i]);

  }
  function precolor() {
    var target = a.previousElementSibling;
    a.style.borderColor='#8080801c'
    target.style.borderColor='red'
    page.style.display='none'
    document.getElementById(pageArray[i-1]).style.display='block'
    i--;
    a=document.getElementById(borderArray[i]);
    page=document.getElementById(pageArray[i]);
    //alert(i)
  }
  function getJsonLength(jsonData){
    var jsonLength = 0;
    for(var item in jsonData){
      jsonLength++;
    }
    return jsonLength;
  }
function load(){
  var pageArray=["#first-page","#second-page","#third-page","#fourth-page","#fifth-page"]
  var pageNum=0;

  $.ajax({
    type : "post",
    async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
    url : "TestServlet?method=getdataToTree",    //请求发送到Page处
    data : {},
    dataType : "json",
    success:function(data){
      //console.log(data);
      //console.log(data[0]);
      //console.log(data[0].url);
      //alert(JSON.stringify(data))
      for(var i=0;i<getJsonLength(data);i++){
      var col=$('<div></div>');
      var grid=$('<div></div>');
      var image=$('<div></div>');
      var a=$('<a></a>');
      var img=$('<img>');
      var content=$('<div></div>');
      var titleh3=$('<h3></h3>');
      var pricediv=$('<div></div>');
      var pricespan=$('<span></span>');
      var titlea=$('<a></a>');
      col.appendTo(pageArray[pageNum]);
      grid.appendTo(col);
      image.appendTo(grid);
      a.appendTo(image);
      img.appendTo(a);
      content.appendTo(grid);
      titleh3.appendTo(content);
      titlea.appendTo(titleh3);
      pricediv.appendTo(content);
      pricespan.appendTo(pricediv);

      col.addClass('col-md-2 col-sm-4');
      grid.addClass('product-grid');
      image.addClass('product-image');
      a.addClass('image');
      img.addClass('pic-1');
      content.addClass('product-content');
      pricediv.addClass('price');
      titleh3.addClass('title');
      console.log(getJsonLength(data));

    console.log(data[i].url);
    img.attr('src',data[i].url);
    titlea.text(data[i].name);
    pricediv.text(data[i].price);
}

    },
    error:function(data){
      //console.log(data);//在前端控制台打印请求的状态
      alert("error")
    }
  })

}
</script>