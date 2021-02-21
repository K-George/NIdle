<%--
  Created by IntelliJ IDEA.
  User: 向慧祺
  Date: 2021/2/15
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>修改用户</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Mystyle2.css" rel="stylesheet">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/carts.css">
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

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
            <a class="info" href="user_center.jsp">基本信息</a>
        </div>
        <div class="header-info">
            <a class="info" href="account_fix.jsp">账户修改</a>
        </div>
    </div>
</div>
<div class="container" style="width: 800px;">
    <div class="first">
        <div class="round-icon" >
            <img src="img/img_user_center/1.jpg" class="round_icon"  alt="">
        </div>
        <div class="update-btn" style="padding-right:100px">
            <input class="btn btn-primary" type="submit" value="更改"/>
        </div>
    </div>
    <section class="cartMain">
        <div class="cartMain_hd">
            <ul class="order_lists cartTop">
                <li class="list_con">商品信息</li>
                <li class="list_price">单价</li>
                <li class="list_amount">数量</li>
                <li class="list_sum">金额</li>
                <li class="list_op">操作</li>
            </ul>
        </div>

        <div class="cartBox">

            <div class="order_content">
                <ul class="order_lists">
                    <li class="list_con">
                        <div class="list_img"><a href="javascript:;"><img src="img/img_user_center/1.png" alt=""></a></div>
                        <div class="list_text"><a href="javascript:;">物品1</a></div>
                    </li>
                    <li class="list_price">
                        <p class="price">￥980</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="1" class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥980</p>
                    </li>
                    <li class="list_op">
                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                    </li>
                </ul>
                <ul class="order_lists">
                    <li class="list_con">
                        <div class="list_img"><a href="javascript:;"><img src="img/img_user_center/2.png" alt=""></a></div>
                        <div class="list_text"><a href="javascript:;">物品2</a></div>
                    </li>
                    <li class="list_price">
                        <p class="price">￥780</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="1" class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥780</p>
                    </li>
                    <li class="list_op">
                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                    </li>
                </ul>
                <ul class="order_lists">
                    <li class="list_con">
                        <div class="list_img"><a href="javascript:;"><img src="img/img_user_center/3.png" alt=""></a></div>
                        <div class="list_text"><a href="javascript:;">物品3</a></div>
                    </li>

                    <li class="list_price">
                        <p class="price">￥180</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="1" class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥180</p>
                    </li>
                    <li class="list_op">
                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                    </li>
                </ul>
            </div>
        </div>
    </section>
</div>

</body>
</html>
