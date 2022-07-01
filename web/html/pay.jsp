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
    <link rel="stylesheet" type="text/css" href="../css/headerFoot.css" />
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <link rel="stylesheet" type="text/css" href="../css/reset.css" />
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
<div class="goodsBuy">
    <h3 class="common_title">确认收货地址</h3>

    <div class="common_list_con clearfix">
        <dl>
            <dt>寄送到：</dt>
            <dd><input type="radio" name="" checked="">北京市 海淀区 东北旺西路8号中关村软件园 （李思 收） 182****7528</dd>
        </dl>
        <a href="./user_center_site.jsp" class="edit_site">编辑收货地址</a>

    </div>

    <h3 class="common_title">支付方式</h3>
    <div class="common_list_con clearfix">
        <div class="pay_style_con clearfix">
            <input type="radio" name="pay_style" checked>
            <label class="cash">货到付款</label>
            <input type="radio" name="pay_style">
            <label class="weixin">微信支付</label>
            <input type="radio" name="pay_style">
            <label class="zhifubao"></label>
            <input type="radio" name="pay_style">
            <label class="bank">银行卡支付</label>
        </div>
    </div>

    <h3 class="common_title">商品列表</h3>

    <div class="common_list_con clearfix">
        <ul class="goods_list_th clearfix">
            <li class="col01">商品名称</li>
            <li class="col02">商品单位</li>
            <li class="col03">商品价格</li>
            <li class="col04">数量</li>
            <li class="col05">小计</li>
        </ul>
        <ul class="goods_list_td clearfix">
            <li class="col01">1</li>
            <li class="col02"><img src="images/goods/goods012.jpg"></li>
            <li class="col03">奇异果</li>
            <li class="col04">500g</li>
            <li class="col05">25.80元</li>
            <li class="col06">1</li>
            <li class="col07">25.80元</li>
        </ul>
        <ul class="goods_list_td clearfix">
            <li class="col01">2</li>
            <li class="col02"><img src="images/goods/goods003.jpg"></li>
            <li class="col03">大兴大棚草莓</li>
            <li class="col04">500g</li>
            <li class="col05">16.80元</li>
            <li class="col06">1</li>
            <li class="col07">16.80元</li>
        </ul>
    </div>

    <h3 class="common_title">总金额结算</h3>

    <div class="common_list_con clearfix">
        <div class="settle_con">
            <div class="total_goods_count">共<em>2</em>件商品，总金额<b>42.60元</b></div>
            <div class="transit">运费：<b>10元</b></div>
            <div class="total_pay">实付款：<b>52.60元</b></div>
        </div>
    </div>

    <div class="order_submit clearfix">
        <a href="javascript:;" id="order_btn">提交订单</a>
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
<div class="popup_con">
    <div class="popup">
        <p>订单提交成功！</p>
    </div>

    <div class="mask"></div>
</div>
<script src="../js/jquery-1.11.1/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/heand.js"></script>
<script src="../js/search.js"></script>
<script type="text/javascript">
    $('#order_btn').click(function() {
        localStorage.setItem('order_finish',2);

        $('.popup_con').fadeIn('fast', function() {

            setTimeout(function(){
                $('.popup_con').fadeOut('fast',function(){
                    window.location.href = 'index.jsp';
                });
            },3000)

        });
    });
</script>
</body>
</html>

