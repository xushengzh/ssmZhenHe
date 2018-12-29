<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.codecoord.com" %>
<script type="text/javascript" src="static/js/jquery-3.3.1.js"></script>
<html>
<head>
    <title>登录</title>
</head>
<body>
<div id="login_div" style="text-align: center">
    <form id="login_form">
        <div class="input_box">
            <input id="user_account" name="user_account" placeholder="请输入登录账号"><br>
        </div>
        <div class="input_box">
            <input id="user_password" name="user_password" placeholder="请输入登录密码"><br>
        </div>
        <div>
            <a href="" target="_blank">忘记密码?</a>
        </div>
        <div>
            <a href="javascript:void(0);" id="dologin"
               tabindex="8" onclick="dofun()">登&nbsp;&nbsp;录</a>
            <a href="javascript:void(0);" id="doregister"
               tabindex="8" onclick="doregister()">注&nbsp;&nbsp;册</a>
        </div>

    </form>
</div>
<script type="text/javascript">

    function dofun() {
        $("#dologin").click(function () {
            alert("登录操作呀")
        });
    }
    // 登录操作
    function doLogin() {
        $.ajax({
            url : "<c:url value="/user/register"/>",
            data: {},
            type: "post",
            dataType: "json",
            async: false,
            timeout: 50000,
            success: function (result) {
                if (result.info == '0') {
                    alert("注册成功！")
                } else {
                    alert("注册失败，请重新注册！")
                }
            }
        });
    }


    //跳转注册页面
    function doregister() {
        var url = "${pageContext.request.contextPath}/user/registerPage";
        window.location.href = url;
    }
</script>
</body>
</html>
