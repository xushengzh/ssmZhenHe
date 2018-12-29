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

                var account = $("#user_account").val();
                var password = $("#user_password").val();
                var againPass = $("#again_password").val();

                if (account == ''){
                alert("请输入注册账号");
                return;
                }
                if (password == ''){
                alert("请输入注册密码");
                return;
                }
                if (againPass == ''){
                alert("请输入确认密码");
                return;
                }
                if (password != againPass){
                alert("两次输入密码不一致！");
                return;
                }
         $.ajax({
            url:"<c:url value="/user/register"/>",
                data:{'userAccount':account,'userPassword':password},
                type:"post",
                dataType:"json",
                async:false,
                timeout:50000,
                success:function(result) {
                if (result.info == '0'){
                alert("注册成功！")
                }else {
                alert("注册失败，请重新注册！")
                }
                }
                });
                }



</script>
    </body>
    </html>