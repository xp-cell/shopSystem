<%--
  Created by IntelliJ IDEA.
  User: free
  Date: 2022/6/23
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>账号注册</title>
    <link rel="stylesheet" href="../css/registered.css"/>
    <link rel="stylesheet" href="../css/headerFoot.css"/>
</head>
<body>
<div class="register-box">
    <img src="../img/login/login.jpg" style="width: 100%; height: 635px;">

    <div class="register">
        <form action="#" method="post" class="name">
            <div class="form-group">
                <h2>清秋小铺账号注册</h2>
                <label class="ti">
                    <span>昵 &nbsp &nbsp &nbsp 称：</span>
                    <input name="nickname" type="text" placeholder="请输入您的账户昵称" id="nickname">
                    <span class="info"></span>
                </label>
                <label class="ti">
                    <span>账 &nbsp &nbsp &nbsp 号：</span>
                    <input type="text" placeholder="请输入您的手机号" id="name" name="name">
                    <span class="info"></span>
                </label>
                <label class="ti">
                    <span>密 &nbsp &nbsp &nbsp 码：</span>
                    <input type="password" placeholder="请输入您的登录密码" id="password" name="password">
                    <span class="info"></span>
                </label>
                <label class="ti">
                    <span>确认密码：</span>
                    <input type="password" placeholder="请再次输入登录密码" id="topassword" name="topassword">
                    <span class="info"></span>
                </label>
                <input id="sendBtn" type="button" value="注册" class="btn"/>
            </div>
        </form>
    </div>
</div>
<foot class="foot">
    <div class="mui-foot">
        <ul class="mui-foot-ul1">
            <li><a href="#">关于商铺</a></li>
            <li><a href="#">帮助中心</a></li>
            <li><a href="#">开放平台</a></li>
            <li><a href="#">诚聘英才</a></li>
            <li><a href="#">联系我们</a></li>
            <li><a href="#">网站合作</a></li>
            <li><a href="#">法律声明</a></li>
            <li><a href="#">隐私权政策</a></li>
            <li><a href="#">知识产权</a></li>
            <li><a href="#">廉政举报</a></li>
        </ul>
        <ul class="mui-foot-ul">
            <li>增值电信业务经营许可证： 政法大学xx-20233333456</li>
            <li>市场名称登记证：政法大学字332456644号</li>
            <li>出版物网络交易平台服务经营备案证：政法大学备字第044号</li>
        </ul>
        <ul class="mui-foot-ul">
            <li>互联网违法和不良信息举报电话：1111-1008611 zf@wlaqxy.com</li>
            <li>互联网药品信息服务资质证书编号：政法大学-（学习性）-234-00543</li>
            <li> X公网安备 330322111130号</li>
        </ul>
    </div>
</foot>

<script src="../js/jquery-1.11.1/jquery.js"></script>
<script>
    //聚焦时移除提示
    $("#nickname").focus(function () {
        $(".info").html("")
    })
    $("#name").focus(function () {
        $(".info").html("")
    })
    $("#password").focus(function () {
        $(".info").html("")
    })
    $("#topassword").focus(function () {
        $(".info").html("")
    })

    $("#sendBtn").bind("click", function () {
        var name = $("#name").val();
        var password = $("#password").val();
        var nickname = $("#nickname").val();
        var topassword = $("#topassword").val();
        if (name != "" && password != "" && nickname != "") {
            if (password == topassword) {
                $.ajax({
                    type: "POST",
                    url: "/loginServlet?action=reg",
                    data: {
                        userName: name,
                        password: password,
                        nickName: nickname
                    },
                    success: function (res) {
                        if (res == "successful") {
                            window.location.href = "login.jsp";
                        } else if (res == "userExist") {
                            $(".info").eq(3).html("该账号已注册")
                        } else {
                            $(".info").eq(3).html(res)
                        }


                    }
                })
            } else {
                $(".info").eq(3).html("两次输入的密码不一致！");
            }

        } else {
            if (nickname == "") {
                $(".info").eq(0).html("昵称不能为空！");
            }
            if (name == "") {
                $(".info").eq(1).html("账号不能为空！")
            }
            if (password == "") {
                $(".info").eq(2).html("密码不能为空！")
            }
        }
    })
</script>
</body>
</html>
