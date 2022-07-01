<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="css/Shuffling-figure.css"/>
    <link rel="stylesheet" type="text/css" href="./css/headerFoot.css">
    <link rel="stylesheet" type="text/css" href="./css/index.css"/>
    <script src="./js/jquery-1.11.1/jquery.js"></script>
    <script src="./js/Shuffling-figure.js"></script>
    <script src="./js/search.js"></script>
</head>
<body>
<header class="header">
    <div class="mui-bar">
        <ul class="mui-bar-left">
            <li id="welcome-li"><a href="javascript:void(0);" id="welcome"></a></li>
            <li id="integral-li"><a href="javascript:void(0);" id="integral"></a></li>
            <li id="exit-li"><a href="javascript:void(0);" id="exit"></a></li>
        </ul>
        <ul class="mui-bar-right">
            <li>
                <a href="javascript:void(0)">手机版</a>
                <span class="mui-bar-imghidden"><img src="img/index/wx.jpg"></span>
            </li>
            <li id="collection"><a href="javascript:void(0)">收藏夹</a></li>
            <li id="shopping-Cart"><a href="./html/goodscars.jsp">购物车</a></li>
            <li id="small-house"><a href="./html/personal.jsp">个人中心</a></li>
        </ul>
    </div>
</header>
<div class="title">
    <span class="logo"><img src="./img/index/logo.png"></span>
    <span class="search">
		<input id="search-input" type="text" placeholder="请输入关键字"/>
        <button id="search-button">
            <a href="javascript:void(0)">搜本店</a>
        </button>
	</span>
</div>
<div class="mui-nav">
    <ul>
        <li><a style="color: #0000FF;" href="javascript:void(0)">首页</a></li>
        <li><a href="./html/snak.jsp">休闲零食</a></li>
        <li><a href="./html/biscuit.jsp">饼干糕点</a></li>
        <li><a href="./html/fruit.jsp">干果蜜饯</a></li>
        <li><a href="./html/drink.jsp">乳品冲饮</a></li>
    </ul>
</div>
<div class="main">
    <div id="scrollPice">
        <ul class="slider">
            <li><img src="./img/index/7.jpg"/></li>
            <li><img src="./img/index/20.jpg"/></li>
            <li><img src="./img/index/17.jpg"/></li>
            <li><img src="./img/index/23.jpg"/></li>
        </ul>
        <ul class="num"></ul>
    </div>
    <div class="content" style="margin-left: 53px;">
        <span id="selling">今日热卖</span>
        <span id="discount">折扣商品</span>
        <span>猜你喜欢</span>
        <div id="banner">
            <div class="tic">
                <ul>
                    <li class="l1"><img src="./img/index/1.png"/></li>
                    <li class="l2"><img src="./img/index/2.png"/></li>
                    <li class="l3"><img src="./img/index/8.jpg"/></li>
                    <li><img src="./img/index/14.png"/></li>
                    <li><img src="./img/index/15.jpg"/></li>
                    <li><img src="./img/index/19.jpg"/></li>
                    <li><img src="img/index/20.jpg"/></li>
                    <li class="l9"><img src="./img/index/22.jpg"/></li>
                    <li class="l0"><img src="./img/index/8.jpg"/></li>
                </ul>
            </div>
            <div class="btn">
                <div class="left">
                    <
                </div>
                <div class="right">>
                </div>
            </div>
        </div>
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
<script>
    //获取头部数据及编写未登录时的状态
    if ($("#exit").html() == "") {//未登录时头部数据及链接
        $("#welcome").html("Hi，欢迎来到清秋小铺");
        $("#integral").html("亲，请登录");
        $("#exit").html("免费注册");
        $("#integral").attr("href", "./html/login.jsp")
        $("#exit").attr("href", "./html/registered.jsp")
    }
    //获取到登录信息时
    $.ajax({
        type: "GET",
        url: "/loginServlet?action=userData",
        success: function (res) {
            var data = JSON.parse(res)[0]
            if (data != "" || data != null) {
                $("#integral").attr("href", "javascript:void(0);")
                $("#exit").attr("href", "javascript:void(0);")
                $("#welcome").html("Hi，" + data.user_name);
                $("#integral").html("积分：" + data.user_integral);
                $("#exit").html("退出");
                $("#exit").bind("click", function () {//点击事件重定义
                    $("#welcome").html("Hi，欢迎来到清秋小铺");
                    $("#integral").html("亲，请登录");
                    $("#exit").html("免费注册");
                    $("#exit").attr("href", "/loginServlet?action=exit")
                    $("#exit").bind("click", function () {
                        $("#exit").attr("href", "./html/registered.jsp")
                    })
                    $("#integral").bind("click", function () {
                        $("#integral").attr("href", "./html/login.jsp")
                    })
                })
            }
        }
    })
    //创建商品块
    //今日热卖商品块数量
    var sellingNum;
    //折扣商品块数量
    var discountNum;
    $.ajax({
        type: "GET",
        url: "/goodsServlet?action=selling",
        success: function (res) {
            // console.log(res)
            var sellingDataJson = res.substring(0, res.indexOf("]") + 1)
            var discountDataJson = res.replace(sellingDataJson, "")
            var sellingData = JSON.parse(sellingDataJson)
            var discountData = JSON.parse(discountDataJson)
            sellingNum = sellingData.length;
            discountNum = discountData.length;
            //创建今日热卖商品块
            for (var i = 0; i < sellingData.length; i++) {
                var $div = $(
                    "<div class='content-goods' accesskey=''><a class='goods' href='./html/goods.jsp'>	<img class='goods-imgs' src=''><p class='price'></p><span class='shoptitle'></span><span class='shopnick'></span><span class='sales'></span></a></div>"
                );
                $div.insertAfter($("#selling"))
            }
            //添加数据
            for (var i = 0; i < sellingData.length; i++) {
                // console.log(data)
                $(".content-goods").eq(i).attr("accesskey", sellingData[i].gid)
                $(".goods-imgs").eq(i).attr("src",  "./img/" + sellingData[i].commodit_img)
                $(".price").eq(i).html("￥" + sellingData[i].commodit_price + "元")
                $(".shoptitle").eq(i).html(sellingData[i].commodit_them)
                $(".shopnick").eq(i).html(sellingData[i].commodit_name)
                $(".sales").eq(i).html(sellingData[i].commodit_salenumber + "人已付款")
            }
            //创建折扣商品块
            for (var i = 0; i < discountData.length; i++) {
                var $div = $(
                    "<div class='content-goods' accesskey=''><a class='goods' href='./html/goods.jsp'>	<img class='goods-imgs' src='./img/index/clothes22.jpg'><p class='price'>￥12元</p><span class='shoptitle'>这是一个好看的裙子</span><span class='shopnick'>碎花裙</span><span class='sales'>80人已付款</span></a></div>"
                );
                $div.insertAfter($("#discount"))
            }
            //添加数据
            for (var i = 0; i < discountData.length; i++) {
                // console.log(discountData[i])
                $(".content-goods").eq(i + sellingNum).attr("accesskey", discountData[i].gid)
                $(".goods-imgs").eq(i + sellingNum).attr("src", "./img/" + discountData[i].commodit_img)
                $(".price").eq(i + sellingNum).html("￥" + discountData[i].commodit_price + "元")
                $(".shoptitle").eq(i + sellingNum).html(discountData[i].commodit_them)
                $(".shopnick").eq(i + sellingNum).html(discountData[i].commodit_name)
                $(".sales").eq(i + sellingNum).html(discountData[i].commodit_salenumber + "人已付款")
            }
            //存储商品ID
            $(".content-goods").bind("click", function () {
                var id = $(this).attr("accessKey");
                setCookie("gid",id,1,"path","html")
            })
        }
    })

</script>

</body>
</html>
