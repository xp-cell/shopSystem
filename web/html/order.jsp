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
    <title>付费界面</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <link rel="stylesheet" type="text/css" href="../css/reset.css" />
    <link rel="stylesheet" type="text/css" href="../css/headerFoot.css" />
</head>
<body>
<header class="header">
    <div class="mui-bar">
        <ul class="mui-bar-left">
            <li id="welcome-li"><a href="javascript:void(0);" id="welcome"></a></li>
            <li id="integral-li"><a href="./goodscars.jsp" id="integral"></a></li>
            <li id="exit-li"><a href="./goodscars.jsp" id="exit"></a></li>
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

<div class="main_con clearfix">
    <div class="left_menu_con clearfix">
        <h3>用户中心</h3>
        <ul>
            <li><a href="./personal.jsp">· 个人信息</a></li>
            <li><a href="javascript:void(0)" class="active">· 全部订单</a></li>
            <li><a href="./address.jsp">· 收货地址</a></li>
        </ul>
    </div>
    <div class="right_content clearfix">
        <h3 class="common_title2">全部订单</h3>
        <ul class="order_list_th w978 clearfix">
            <li class="col01">2016-8-21 17:36:24</li>
            <li class="col02">订单号：56872934</li>
            <li class="col02 stress">未支付</li>
        </ul>

        <table class="order_list_table w980">
            <tbody>
            <tr>
                <td width="55%">
                    <ul class="order_goods_list clearfix">
                        <li class="col01"><img src="images/goods02.jpg"></li>
                        <li class="col02">嘎啦苹果嘎啦苹果<em>11.80元/500g</em></li>
                        <li class="col03">1</li>
                        <li class="col04">11.80元</li>
                    </ul>
                    <ul class="order_goods_list clearfix">
                        <li class="col01"><img src="images/goods02.jpg"></li>
                        <li class="col02">嘎啦苹果嘎啦苹果<em>11.80元/500g</em></li>
                        <li class="col03">1</li>
                        <li class="col04">11.80元</li>
                    </ul>
                </td>
                <td width="15%">33.60元</td>
                <td width="15%">待付款</td>
                <td width="15%"><a href="#" class="oper_btn">去付款</a></td>
            </tr>
            </tbody>
        </table>

        <ul class="order_list_th w978 clearfix">
            <li class="col01">2016-8-21 17:36:24</li>
            <li class="col02">订单号：56872934</li>
            <li class="col02 stress">已支付</li>
        </ul>
        <table class="order_list_table w980">
            <tbody>
            <tr>
                <td width="55%">
                    <ul class="order_goods_list clearfix">
                        <li class="col01"><img src="images/goods02.jpg"></li>
                        <li class="col02">嘎啦苹果嘎啦苹果<em>11.80元/500g</em></li>
                        <li class="col03">1</li>
                        <li class="col04">11.80元</li>
                    </ul>
                    <ul class="order_goods_list clearfix">
                        <li class="col01"><img src="images/goods02.jpg"></li>
                        <li class="col02">嘎啦苹果嘎啦苹果<em>11.80元/500g</em></li>
                        <li class="col03">1</li>
                        <li class="col04">11.80元</li>
                    </ul>
                </td>
                <td width="15%">33.60元</td>
                <td width="15%">已付款</td>
                <td width="15%"><a href="#" class="oper_btn">查看物流</a></td>
            </tr>
            </tbody>
        </table>

        <div class="pagenation">
            <a href="#"><上一页</a>
            <a href="#" class="active">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">下一页></a>
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
<script src="../js/jquery-1.11.1/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/heand.js"></script>
<script src="../js/search.js"></script>
<script>
</script>
</body>
</html>

