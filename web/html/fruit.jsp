<%--
  Created by IntelliJ IDEA.
  User: free
  Date: 2022/6/30
  Time: 3:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>干果蜜饯</title>
    <link rel="stylesheet" type="text/css" href="../css/headerFoot.css"/>
    <link rel="stylesheet" type="text/css" href="../css/goodsType.css"/>
    <script src="../js/jquery-1.11.1/jquery.js"></script>
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
                <span class="mui-bar-imghidden"><img src="../img/index/wx.jpg"></span>
            </li>
            <li id="collection"><a href="javascript:void(0)">收藏夹</a></li>
            <li id="shopping-Cart"><a href="./goodscars.jsp">购物车</a></li>
            <li id="small-house"><a href="./personal.jsp">个人中心</a></li>
        </ul>
    </div>
</header>
<div class="title">
    <span class="logo"><img src="../img/index/logo.png"></span>
    <span class="search">
				<input id="search-input" type="text" placeholder="请输入关键字"/><button id="search-button"><a
            href="javascript:void(0)">搜本店</a></button>
			</span>
</div>
<div class="mui-nav">
    <ul>
        <li><a href="../index.jsp">首页</a></li>
        <li><a href="./snak.jsp">休闲零食</a></li>
        <li><a href="./biscuit.jsp">饼干糕点</a></li>
        <li><a style="color: #0000FF;" href="javascript:void(0)">干果蜜饯</a></li>
        <li><a href="./drink.jsp">乳品冲饮</a></li>
    </ul>
</div>
<div class="main">
    <div class="img">
        <img src="../img/fruit/fruit3-3.jpg">
    </div>
    <div class="img">
        <img src="../img/fruit/fruit9-3.jpg">
    </div>
    <div class="img">
        <img src="../img/snake/snake10-3.jpeg">
    </div>
    <div class="img">
        <img src="../img/fruit/fruit17-1.jpg">
    </div>
    <div class="food-title" id="fruit">
        <h1>怦然心动的味道！</h1>
    </div>
    <div id="moreGoods" style="width: 7%;margin: 10px 91%;">
        <a href="./allgoods.jsp" style="text-decoration: none;"> 更多 > > </a>
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
    <script src="../js/search.js"></script>
    <script src="../js/heand.js"></script>
    <script>
        $("#moreGoods").bind("click", function () {
            setCookie("goodsType",2,1,"path","html")
        })
        //获取分页商品
        $.ajax({
            type: "POST",
            data:{
                typeId:"2",
                selling:"selling"
            },
            url: "/goodsServlet?action=goodsType",
            success: function (res) {
                var snakeSelling = JSON.parse(res)
                //创建今日热卖商品块
                for (var i = 0; i < snakeSelling.length; i++) {
                    var $div = $(
                        "<div class='content-goods' accesskey=''><a class='goods' href='./goods.jsp'>	<img class='goods-imgs' src=''><p class='price'></p><span class='shoptitle'></span><span class='shopnick'></span><span class='sales'></span></a></div>"
                    );
                    $div.insertAfter($("#fruit"))
                }
                //添加数据
                for (var i = 0; i < snakeSelling.length; i++) {
                    // console.log(data)
                    $(".content-goods").eq(i).attr("accesskey", snakeSelling[i].gid)
                    $(".goods-imgs").eq(i).attr("src",  "../img/" + snakeSelling[i].commodit_img)
                    $(".price").eq(i).html("￥" + snakeSelling[i].commodit_price + "元")
                    $(".shoptitle").eq(i).html(snakeSelling[i].commodit_them)
                    $(".shopnick").eq(i).html(snakeSelling[i].commodit_name)
                    $(".sales").eq(i).html(snakeSelling[i].commodit_salenumber + "人已付款")
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
