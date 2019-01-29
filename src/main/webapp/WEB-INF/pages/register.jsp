<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="../static/js/jquery-3.3.1.js"></script>
<html>
<head>
    <title>注册界面</title>
</head>
<body>

<form id="register_form">
    <div class="input_box">
        <input id="user_account" name="userAccount" placeholder="请输入登录账号"><br>
    </div>
    <div class="input_box">
        <input id="user_password" name="userPassword" placeholder="请输入登录密码"><br>
    </div>
    <div class="input_box">
        <input id="again_password" name="userPassword" placeholder="再次确认登录密码"><br>
    </div>
    <div>
        <a href="javascript:void(0);" id="doSure"
           tabindex="8" onclick="doRegister()">确&nbsp;&nbsp;定</a>
        <a href="javascript:void(0);" id="doregister"
           tabindex="8">取&nbsp;&nbsp;消</a>
    </div>

</form>

<script type="text/javascript">

//注册
function doRegister() {


                }



</script>
    </body>
    </html>