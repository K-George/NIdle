<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<!DOCTYPE>
<html>
<head>
  <!-- 引入样式表-->
  <link rel="stylesheet" href="css/SignUp.css"/>
  <link href="img/icon.ico" type="image/x-icon" rel="shortcut icon" />
  <title>NIdle | 注册</title>
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
      <span>
        <label>NIdle | 注册</label>
      </span>
      <span>
        <form id="SignInform" name="SignInForm" action="SignIn.jsp" method="post">
        <input type="submit" name="signin" class="signin" value="直接登录">
        </form>
      </span>
      <br>
      <br>
      <br>
      <br>
      <form id="SignUpform" name="SignUpForm" action="index.html" method="post">
        <!--表单主体内容 -->
         <div id="SignUpform_table">
          <table>
            <tr><!--昵称-->
              <td>
                <input type="text" name="mailbox" placeholder="邮箱">
              </td>
            </tr>
            <tr>
              <td>
                <input type="text" name="verificationcode" placeholder="验证码">
              </td>
            </tr>
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
            <tr>
              <td>

                <select name="provincename" id="provincenameid">
                  <option value="0" selected="selected">请选择省</option>
                </select>省
                <select name="cityname" id="citynameid">
                  <option value="0" selected="selected">请选择市</option>
                </select>市
                <select>
                  <option value="univerisityname" id="univerisity">请选择学校</option>
                </select>学校
              </td>
            </tr>
          </table>
         </div>
        <br>
        <!--立即注册 -->
        <div>
          <input type="submit" name="signup" class="signup" value="立即注册">
        </div>
      </form>
    </div>
  </div>
</body>
</html>