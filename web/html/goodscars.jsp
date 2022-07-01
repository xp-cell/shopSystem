<%--
  Created by IntelliJ IDEA.
  User: free
  Date: 2022/6/30
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>购物车</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <link rel="stylesheet" type="text/css" href="../css/reset.css" />
    <link rel="stylesheet" type="text/css" href="../css/headerFoot.css" />
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
    <span class="logo"><a href="../index.jsp"><img src="../img/index/logo.png"></a></span>
    <span class="search">
		<input id="search-input" type="text" placeholder="请输入关键字"/>
        <button id="search-button">
            <a href="javascript:void(0)">搜本店</a>
        </button>
	</span>
</div>
<div class="goodsCar">
    <div class="total_count">全部商品<em>2</em>件</div>
    <ul class="cart_list_th clearfix">
        <li class="col01">商品名称</li>
        <li class="col02">商品单位</li>
        <li class="col03">商品价格</li>
        <li class="col04">数量</li>
        <li class="col05">小计</li>
        <li class="col06">操作</li>
    </ul>
    <ul class="cart_list_td clearfix">
        <li class="col01"><input type="checkbox" name="" checked></li>
        <li class="col02"><img src="images/goods/goods012.jpg"></li>
        <li class="col03">奇异果<br><em>25.80元/500g</em></li>
        <li class="col04">500g</li>
        <li class="col05">25.80元</li>
        <li class="col06">
            <div class="num_add">
                <a href="javascript:;" class="add fl">+</a>
                <input type="text" class="num_show fl" value="1">
                <a href="javascript:;" class="minus fl">-</a>
            </div>
        </li>
        <li class="col07">25.80元</li>
        <li class="col08"><a href="javascript:;">删除</a></li>
    </ul>

    <ul class="cart_list_td clearfix">
        <li class="col01"><input type="checkbox" name="" checked></li>
        <li class="col02"><img src="images/goods/goods003.jpg"></li>
        <li class="col03">大兴大棚草莓<br><em>16.80元/500g</em></li>
        <li class="col04">500g</li>
        <li class="col05">16.80元</li>
        <li class="col06">
            <div class="num_add">
                <a href="javascript:;" class="add fl">+</a>
                <input type="text" class="num_show fl" value="1">
                <a href="javascript:;" class="minus fl">-</a>
            </div>
        </li>
        <li class="col07">16.80元</li>
        <li class="col08"><a href="javascript:;">删除</a></li>
    </ul>

    <ul class="settlements">
        <li class="col01"><input type="checkbox" name="" checked=""></li>
        <li class="col02">全选</li>
        <li class="col03">合计(不含运费)：<span>¥</span><em>42.60</em><br>共计<b>2</b>件商品</li>
        <li class="col04"><a href="place_order.html">去结算</a></li>
    </ul>
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
</script>
</body>
</html>
