<%--
  Created by IntelliJ IDEA.
  User: 向慧祺
  Date: 2021/2/15
  Time: 16:01
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
    <link href="css/Mystyle.css" rel="stylesheet">
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>

<body>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <img src="img/img_user_center/home.png" class="home-pic">
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

    </div>
    <div class="second">
        <div class="round-icon" >
            <img src="img/img_user_center/1.jpg" class="round_icon"  alt="">
        </div>
        <form id="AddForm" action="" method="post">
            <label for="school-show">您的学校：
                <input name="school-name" type="text" class="form-control" style="width: 180px;display: inline-block" value="" id="school-show" onclick="display('school')">
            </label>
            <br />
            <div class="school" style="display: none;">
                <!--省份选择-->
                <select id="prov" class="form-control" style="width: 120px;display: inline-block" onchange="showCity(this)">
                    <option value="">请选择省份</option>
                </select>

                <!--城市选择-->
                <select id="city" class="form-control" style="width: 120px;display: inline-block" onchange="showSchool(this)">
                    <option value="">请选择城市</option>
                </select>

                <!--学校选择-->
                <select id="school" class="form-control" style="width: 200px;display: inline-block" onchange="selecSchool(this)">
                    <option value="">请选择学校</option>
                </select>

                <%--<button type="button" id="school-submit" class="btn met1" onClick="showAddr();hide('school')">确定</button>--%>
            </div>
        </form>

        <div class="form-group">
            <label>性别：</label>
            <select name="sex" id="sex" class="form-control" style="width: 80px">
                <option value="男" selected>男</option>
                <option value="女">女</option>
            </select>

        </div>
    </div>

    <div class="third">
        <div class="form-group">
            <label for="password">更改密码：</label>
            <input type="text" class="form-control" value="${user.age}" id="password"  name="password" placeholder="请输入新密码" style="width: 250px"/>
        </div>
        <div class="form-group">
            <label for="mail">更改邮箱：</label>
            <input type="text" class="form-control" value="${user.age}" id="mail"  name="mail" placeholder="请输入新邮箱" style="width: 250px"/>
        </div>
        <div class="form-group" style="padding-left:200px">
            <input class="btn btn-primary" type="submit" value="提交" />
            <input class="btn btn-default" type="reset" value="重置" />
            <input class="btn btn-default" type="button" value="返回"/>
        </div>
    </div>
</div>
<script src="js/school.js"></script>
<script src="js/school_select_method.js"></script>
</body>
<script type="text/javascript">
    function display(id) {
        var target = document.getElementsByClassName(id)[0];
        target.style.display = "block"
    }
    function hide(id) {
        var target = document.getElementsByClassName(id)[0];
        target.style.display = "none"
    }
</script>
<script src="js/school.js"></script>
<script src="js/school_select_method.js"></script>
</html>
