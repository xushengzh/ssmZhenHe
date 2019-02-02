<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.codecoord.com" %>
<script type="text/javascript" src="static/js/jquery-3.3.1.js"></script>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="static/js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="static/js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<html>
<head>
    <title>登录</title>
    <style>
        #login_div{
            width: 350px;
            height: 350px;
            /*margin: 0 auto;*/ /*水平居中*/
            float: right;
            margin-right: 150px;
            position: relative;
            top: 45%; /*偏移*/
            transform: translateY(-50%);
            box-shadow: 0 2px 4px 0 rgba(0,0,0,0.05);
        }
        #register_div{
            width: 350px;
            height: 350px;
            /*margin: 0 auto;*/ /*水平居中*/
            float: right;
            margin-right: 150px;
            position: relative;
            top: 45%; /*偏移*/
            transform: translateY(-50%);
            box-shadow: 0 2px 4px 0 rgba(0,0,0,0.05);
        }
        .login_span{
            font-family: 宋体;
            font-size: 14px;
            font-weight: bold;
            margin-left: 45px;
            float: left;
        }
        .m-header{
            height: 60px;
            position: relative;
            text-align: center;
            padding-top: 16px;
            background: #0A870B;
        }
        .u-loginbtn{
            position: absolute;
            bottom: 20px;
            width: 100px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            color: #fff;
            border: 1px solid transparent;
            font-size: 16px;
            border-radius: 4px;
            letter-spacing: 5px;
            background: #0A8745;
            margin-left: -110px;
        }

        .u-regbtn{
            position: absolute;
            right: 60px;
            bottom: 20px;
            width: 100px;
            height: 30px;
            text-align: center;
            font-size: 16px;
            line-height: 30px;
            color: #0a8745;
            border: 1px solid #a7d4bd;
            border-radius: 4px;
            background: #e6f3ec;
            letter-spacing: 5px;
            text-indent: 6px;
            margin-left: 50px;
        }
        a{
            text-decoration: none;
        }

        .forgetpwd{
            color: #006630;
            position: relative;
            margin-left: 172px;
            font-size: 14px;
        }
    </style>
</head>
<body background="static/images/09.jpg">
<div id="login_div">
    <div class="m-header">
        <span style="font-weight: bold;color: #ffffff;font-size: 25px;font-family: 楷体">旭日东升在线教育平台</span>
    </div>
    <div class="login_form_div" style="margin-top: 25px">
    <form id="login_form" style="text-align: center" action="${pageContext.request.contextPath}/user/loginPage">
        <div class="form-group">
            <span class="login_span"></span><br>
            <i class="fa fa-user fa-lg"></i>
            <input id="user_account" name="user_account" autofocus="autofocus" placeholder="Username" maxlength="20" style="height: 32px;width: 220px;"><br>
        </div>
        <div class="form-group">
            <span class="login_span"></span><br>
            <i class="fa fa-lock fa-lg"></i>
            <input id="user_password" name="user_password" autofocus="autofocus"  placeholder="Password" maxlength="20" style="height: 32px;width: 220px"><br>
        </div>
        <div>
            <div style="margin-top: 10px">
                <a href="" target="_blank" class="forgetpwd">忘记密码?</a>
            </div>
            <div>
               <a href="javascript:void(0);" id="dologin" class="u-loginbtn"
                 tabindex="8" onclick="doLogin()">登&nbsp;&nbsp;录</a>
                <a href="javascript:void(0);" class="u-regbtn"
                   tabindex="8" onclick="doRegisterDiv()">注&nbsp;&nbsp;册</a>
            </div>
        </div>
      </form>
    </div>
</div>

<div id="register_div" style="display: none">
    <div class="m-header">
        <span style="font-weight: bold;color: #ffffff;font-size: 25px;font-family: 楷体">旭日东升在线教育平台</span>
    </div>
    <div class="register_form_div" style="margin-top: 25px">
        <form id="register_form" style="text-align: center">
            <div class="input_box">
                <span class="login_span"></span><br>
                <i class="fa fa-user fa-lg"></i>
                <input id="reg_user_account" name="user_account1" placeholder="UserName" style="height: 30px;width: 250px;"><br>
            </div>
            <div class="input_box">
                <span class="login_span"></span><br>
                <i class="fa fa-lock fa-lg"></i>
                <input id="reg_user_password" name="user_password1" placeholder="Password" style="height: 30px;width: 250px"><br>
            </div>
            <div class="input_box">
                <span class="login_span"></span><br>
                <i class="fa fa-lock fa-lg"></i>
                <input id="reg_sure_password" name="user_password2" placeholder="SurePassword" style="height: 30px;width: 250px"><br>
            </div>
            <div>
                <div style="margin-top: 10px">

                </div>
                <div>
                    <a href="javascript:void(0);" class="u-loginbtn"
                       tabindex="8" onclick="doRegister()">确&nbsp;&nbsp;定</a>
                    <a href="javascript:void(0);" class="u-regbtn"
                       tabindex="8" onclick="backBtn()">取&nbsp;&nbsp;消</a>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">

    //注册界面
    function doRegisterDiv(){
        $('#login_div').hide();
        $('#register_div').show();
    }
    //登录界面
    function backBtn(){
        $('#register_div').hide();
        $('#login_div').show();
    }
    function doLogin() {
        var userName = $('#user_account').val();
        var password = $('#user_password').val();
        if(userName == ''){
            alert('请输入登录账号!');
            return;
        }
        if(password == ''){
            alert('请输入登录密码!');
            return;
        }
        $.ajax({
            url : "<c:url value="/user/doLogin"/>",
            data: {
                'userName':userName,
                'password':password
            },
            type: "post",
            dataType: "json",
            async: false,
            timeout: 50000,
            success: function (result) {
                if (result.info == '0') {
                    $("#login_form").submit();
                } else {
                    alert("登录失败，账号或密码错误！");
                }
            }
        });
    }

    function doRegister(){

        var account = $("#reg_user_account").val();
        var password = $("#reg_user_password").val();
        var againPass = $("#reg_sure_password").val();

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
                    alert("注册成功！");
                    backBtn();
                }else {
                    alert("注册失败，请重新注册！")
                }
            }
        });



    }
</script>
</body>
</html>
