<%--
  Created by IntelliJ IDEA.
  User: free
  Date: 2022/6/23
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎你，请先登陆！</title>
    <link rel="stylesheet" type="text/css" href="../css/login.css"/>
    <link rel="stylesheet" type="text/css" href="../css/headerFoot.css"/>
</head>
<body>
<div class="box" id="login-box">
    <img src="../img/login/login.jpg" style="width: 100%; height: 635px;">
    <div class="login">
        <form id="form">
            <h2>欢迎登录清秋小铺</h2>
            <label class="ti">
                <span>用 户 名：</span>
                <input type="text" placeholder="你的账户名或登录名" id="name" name="userName">
                <span class="info"></span>
            </label>
            <label class="ti">
                <span>密 &nbsp &nbsp 码：</span>
                <input type="password" placeholder="输入你的登录密码" id="pas" name="password">
                <span class="info"></span>
            </label>
            <label class="ti">
                <a href="javascript:void(0)" id="jump"><input type="button" id="button" value="登录" class="btn"/></a>
            </label>
            <div class="register">
                <a href="/html/registered.jsp" target="_parent"><span>免费注册</span></a>
                <a href="#"><span>忘记密码</span></a>
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
    $("#name").focus(function () {
        $(".info").html("")
    })
    $("#password").focus(function () {
        $(".info").html("")
    })
    $("#button").bind("click", function () {
        var name = $("#name").val();
        var password = $("#pas").val();
        if (name != "" && password != "") {
            $.ajax({
                type: "POST",
                url: "/loginServlet?action=login",
                data: {
                    userName: name,
                    password: password
                },
                success: function (res) {
                    if (res == "successful") {
                        window.location.replace("../index.jsp");
                    } else {
                        $(".info").eq(1).html(res)
                    }

                }
            })

        } else {
            if (name == "") {
                $(".info").eq(0).html("账号不能为空！")
            }
            if (password == "") {
                $(".info").eq(1).html("密码不能为空！")
            }
        }
    })
</script>
</body>
</html>

