<%--
  Created by IntelliJ IDEA.
  User: lemon
  Date: 2021/2/12
  Time: 1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NIdle | 登陆</title>
    <link rel="stylesheet" href="css/SignIn.css"/>
    <link href="img/icon.ico" type="image/x-icon" rel="shortcut icon" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
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
    <!-- 右侧登陆栏-->
    <div id="SU">
      <span>
        <label>会员登录</label>
      </span>
      <span>
        <form id="forgetpasswordform" name="ForgetPasswordForm" action="ForgetPassword.jsp" method="post">
        <input type="submit" name="forgetpwd" class="forgetpwd" value="忘记密码">
        </form>
      </span>
        <br>
        <br>
        <br>
        <form id="SignInform" name="SigInForm" action="index.html" method="post">
            <!--表单主体内容 -->
            <div id="SignInform_table">
                <table>
                    <tr><!--昵称-->
                        <td>
                            <input type="text" name="mailbox" placeholder="邮箱">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="password" placeholder="密码">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <!--立即登录-->
            <div>
                <input type="submit" name="signin" class="signin" value="立即登录">
            </div>
        </form>
    </div>
</div>
</body>
</html>
