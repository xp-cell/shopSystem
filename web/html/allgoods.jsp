<%--
  Created by IntelliJ IDEA.
  User: free
  Date: 2022/6/30
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>全部商品</title>
    <link rel="stylesheet" type="text/css" href="../css/headerFoot.css" />
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        .main {
            width: 70%;
            margin: 12px auto;
            border: 1px solid #000000;
        }

        .drinks{
            margin-left: 36px;
        }

        .drinks>span {
            width: 139px;
            margin: 8px auto;
            display: block;
            font-size: 24px;
            font-weight: 600;
        }

        .fruit>span {
            width: 139px;
            margin: 8px auto;
            display: block;
            font-size: 24px;
            font-weight: 600;
        }

        .snacks>span {
            width: 139px;
            margin: 8px auto;
            display: block;
            font-size: 24px;
            font-weight: 600;
        }

        .content-goods {
            width: 21%;
            height: 295px;
            border: 0.5px solid #ececec;
            display: inline-block;
            margin: 12px 12px;
        }

        .content-goods:hover {
            border: 1px solid red;
        }

        .goods {
            width: 100%;
            height: 359px;
            text-decoration: none;
            color: #000000;
        }

        .goods img {
            width: 100%;
            height: 190px;
        }

        .goods span {
            font-size: 12px;
        }

        .goods p {
            color: red;
            font-size: 16px;
            margin: 10px 12px;
        }

        .shoptitle {
            display: block;
            color: #000000;
            margin: 10px 12px;
        }

        .sales {
            margin-left: 10px;
            color: #747474;
        }

        .shopnick {
            color: #747474;
            margin: 10px 12px;
        }
    </style>
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
		<input id="search-input" type="text" placeholder="请输入关键字"/>
        <button id="search-button">
            <a href="javascript:void(0)">搜本店</a>
        </button>
	</span>
</div>
<div class="mui-nav">
    <ul>
        <li><a style="color: #0000FF;" href="javascript:void(0)">全部商品</a></li>
        <li><a href="../index.jsp">首页</a></li>
        <li><a href="./snak.jsp">休闲零食</a></li>
        <li><a href="./biscuit.jsp">饼干糕点</a></li>
        <li><a href="./fruit.jsp">干果蜜饯</a></li>
        <li><a href="./drink.jsp">乳品冲饮</a></li>
    </ul>
</div>
<div class="main">
    <div class="drinks">
        <span id="goodsType"></span>

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
<script src="../js/jquery-1.11.1/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/heand.js"></script>
<script src="../js/search.js"></script>
<script>
    //获取全部商品
    //从cookie获取商品类型
    var typeId = getCookie("goodsType");
    $.ajax({
        type: "POST",
        data:{
            typeId: typeId,
            selling:"flase"
        },
        url: "/goodsServlet?action=goodsType",
        success: function (res) {
            if (typeId == 0){
                $("#goodsType").html("休闲零食区")
            }else if (typeId == 1){
                $("#goodsType").html("饼干糕点区")
            }else if (typeId == 2){
                $("#goodsType").html("干果蜜饯区")
            }else if (typeId == 3){
                $("#goodsType").html("乳品冲饮区")
            }
            var allGoods = JSON.parse(res)
            //创建商品块
            for (var i = 0; i < allGoods.length; i++) {
                var $div = $(
                    "<div class='content-goods' accesskey=''><a class='goods' href='./goods.jsp'>	<img class='goods-imgs' src=''><p class='price'></p><span class='shoptitle'></span><span class='shopnick'></span><span class='sales'></span></a></div>"
                );
                $div.insertAfter($("#goodsType"))
            }
            //添加数据
            for (var i = 0; i < allGoods.length; i++) {
                // console.log(data)
                $(".content-goods").eq(i).attr("accesskey", allGoods[i].gid)
                $(".goods-imgs").eq(i).attr("src",  "../img/" + allGoods[i].commodit_img)
                $(".price").eq(i).html("￥" + allGoods[i].commodit_price + "元")
                $(".shoptitle").eq(i).html(allGoods[i].commodit_them)
                $(".shopnick").eq(i).html(allGoods[i].commodit_name)
                $(".sales").eq(i).html(allGoods[i].commodit_salenumber + "人已付款")
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

