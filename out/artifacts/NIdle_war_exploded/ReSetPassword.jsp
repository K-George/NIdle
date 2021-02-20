<%--
  Created by IntelliJ IDEA.
  User: K.George
  Date: 2021/2/20
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<!DOCTYPE>
<html>
<head>
    <!-- 引入样式表-->
    <link rel="stylesheet" href="css/SignIn.css"/>
    <link href="img/icon.ico" type="image/x-icon" rel="shortcut icon" />
    <title>NIdle | 重置密码</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<!--logo头部-->
<div id="header">
    <span id="header_img">
      <img src="img/image/logo.png" width="115px" height="84px"/>
    </span>
    <span id="header_logo">
      Nidle
    </span>
</div>

<!--主体-->
<div id="middle">
    <!-- 右侧注册栏-->
    <div id="SU">
        <label>NIdle | 重置密码</label>
        <form id="SignInform" name="SignInForm" action="index.html" method="post">
            <!--表单主体内容 -->
            <div id="SignInform_table">
                <table>
                    <tr>
                        <td>
                            <input type="text" name="password" placeholder="密码">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="password_OK" placeholder="确认密码">
                        </td>
                    </tr>
                </table>
            </div>
            <!--立即重置密码 -->
            <div>
                <input type="submit" name="signin" class="signin" value="确认重置">
            </div>
        </form>
    </div>
</div>
</body>
</html>
