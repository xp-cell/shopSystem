<%--
  Created by IntelliJ IDEA.
  User: free
  Date: 2022/6/30
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>商品</title>
    <link rel="stylesheet" type="text/css" href="../css/headerFoot.css" />
    <script src="../js/jquery-1.11.1/jquery.js"></script>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        .search button {
            width: 58px;
            height: 40px;
            margin: 0 -58px;
            outline: none;
            border-radius: 4px;
            border: 1px solid #00FF00;
            background-color: #00FF00;
        }

        .main {
            width: 70%;
            margin: 10px auto;
            border: 1px solid #e8e8e8;
            position: relative;
        }

        #magnifying {
            width: 400px;
            height: 400px;
            position: relative;
            margin: 12px 12px;
        }

        #leftmagnifying {
            width: 400px;
            height: 400px;
            position: relative;
        }

        #leftmagnifying img {
            width: 100%;
            height: 100%;
            display: block;
            border: none;
        }

        #ball {
            width: 150px;
            height: 150px;
            position: absolute;
            top: 0;
            left: 0;
            background-color: red;
            opacity: .3;
            filter: alpha(opacity=30);
            display: none;
        }

        #mask {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
        }

        #rightmagnifying {
            width: 400px;
            height: 400px;
            position: absolute;
            top: 0;
            left: 410px;
            overflow: hidden;
            display: none;
            z-index: 29;
        }

        #rightmagnifying img {
            width: 1060px;
            height: 1060px;
            display: block;
            border: none;
            position: absolute;
        }

        .details {
            position: absolute;
            top: 12px;
            left: 424px;
            font-family: "微软雅黑";
            font-size: 14px;
        }

        .details p:first-child {
            font-size: 16px;
            font-weight: 1;
            display: block;
        }

        .details p {
            display: inline-block;
            margin: 12px 2px;
        }

        .details>span {
            color: #6d6d6d;
            font-size: 14px;
            display: inline-block;
            margin: 12px auto;
        }

        .price {
            background-color: #dbffe4;
            height: 76px;
            margin: 12px auto;
        }

        .price em {
            display: inline-block;
            text-decoration: line-through;
        }

        .price span {
            line-height: 37px;
            margin: auto 2px;
            color: #6d6d6d;
            font-size: 14px;
        }

        .price span:last-child {
            color: red;
            font-size: 20px;
            font-weight: 600;
            text-decoration: none;
        }

        .size {
            background-color: #fff;
            width: 24px;
            height: 28px;
            margin: 0 2px;
            border: 1px solid #cccccc;
        }

        .size:hover {
            border: 1px solid red;
        }

        .color {
            display: inline-block;
            width: 36px;
            height: 36px;
            margin: 12px 2px;
        }

        .color img {
            opacity: 0.4;
            width: 100%;
            height: 100%;
        }

        .number-button {
            border: 1px solid #cccccc;
            width: 27px;
            height: 28px;
            margin: auto 2px;
            border-radius: 0;
            background-color: #dedede;
        }

        .number-button:hover {
            background-color: #bdbdbd;
        }

        .number-button1:hover {
            background-color: #bdbdbd;
        }

        .number-input {
            width: 50px;
            height: 28px;
            border: 1px solid #cccccc;
            margin: auto -7px;
            border-radius: 0;
            text-align: center;
            position: relative;
            top: 1px;
            text-indent: 1px;
        }

        .number-button1 {
            border: 1px solid #cccccc;
            width: 27px;
            height: 28px;
            margin: auto 0px;
            border-radius: 0;
            background-color: #dedede;
        }

        .number-p {
            color: #6d6d6d;
            font-size: 14px;
        }

        .buy {
            width: 136px;
            height: 40px;
            background-color: #FFE4D0;
            border: 1px solid #ecd8a7;
            margin-top: 12px;
            margin-left: 2px;
            margin-right: 2px;
            cursor: pointer;
            border-radius: 2px;
        }

        .buy:hover {
            background-color: #dfd888;
        }

        .join {
            width: 182px;
            height: 40px;
            background-color: #FF4400;
            border: 1px solid #FF4400;
            margin-top: 12px;
            margin-left: 2px;
            margin-right: 2px;
            cursor: pointer;
            border-radius: 2px;
        }

        .join:hover {
            background-color: #df0b04;
        }

        .main1 {
            width: 70%;
            height: 1830px;
            margin: 10px auto;
            border: 1px solid #e8e8e8;
        }

        .main1-nav {
            width: 100%;
            height: 50px;
            border: 1px solid #e8e8e8;
            border-left-color: transparent;
            border-top-color: transparent;
            border-right-color: transparent;
        }

        .main1-nav a {
            display: inline-block;
            line-height: 50px;
            height: 50px;
            padding: 0 16px;
            border: 1px solid #e8e8e8;
            border-left-color: transparent;
            border-top-color: transparent;
            border-bottom-color: transparent;
        }

        .iframe {
            width: 100%;
            height: 100%;
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
				<input id="search-input" type="text" placeholder="请输入关键字"/><button id="search-button"><a
            href="javascript:void(0)">搜本店</a></button>
			</span>
</div>
<div class="mui-nav">
    <ul>
        <li><a href="../index.jsp">首页</a></li>
        <li><a href="./snak.jsp">休闲零食</a></li>
        <li><a href="./biscuit.jsp">饼干糕点</a></li>
        <li><a href="./fruit.jsp">干果蜜饯</a></li>
        <li><a href="./drink.jsp">乳品冲饮</a></li>
    </ul>
</div>
<div class="main">
    <div id="magnifying">
        <div id="leftmagnifying">
            <img id="leftmagnifying-imgs" src="">
            <div id="ball"></div>
            <div id="mask"></div>
        </div>
        <div id="rightmagnifying">
            <img src="" id="pic">
        </div>
    </div>
    <div class="details">
        <p id="details-title"></p>
        <div class="price">
            <span>原价 &nbsp &nbsp &nbsp</span>
            <em id="originalprice"> &nbsp &nbsp &nbsp</em>
            <br />
            <span>现价 &nbsp &nbsp &nbsp</span>
            <span id="nowprice"></span>
        </div>
        <span>配送 &nbsp &nbsp &nbsp &nbsp </span>
        <p>甘肃政法大学 &nbsp 付款后4小时内发货</p>
        <br />
        <span id="color-title">食品细节 &nbsp </span>
        <a href="javascript:void(0)" class="color"><img class="imgColor" id="imgs-color1" src=""></a>
        <a href="javascript:void(0)" class="color"><img class="imgColor" id="imgs-color2" src=""></a>
        <a href="javascript:void(0)" class="color"><img class="imgColor" id="imgs-color3" src=""></a>
        <br />
        <span>数量 &nbsp &nbsp &nbsp &nbsp </span>
        <button type="button" class="number-button" id="subtraction">-</button>
        <input type="text" value="1" class="number-input" id="number" />
        <button type="button" class="number-button1" id="add">+</button>
        <p class="number-p" id="number-p"></p>
        <br />
        <span>承诺 &nbsp &nbsp &nbsp &nbsp</span>
        <p>24小时退货 运费险 新品</p>
        <br />
        <span id="join">
			<button type="button" class="buy">加入购物车</button>
		</span>
        <span id="buy">
			<button type="button" class="join">立即购买</button>
		</span>


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
<script src="../js/search.js"></script>
<script src="../js/heand.js"></script>
<script>
    //放大镜
    var leftmagnifying = document.getElementById("leftmagnifying");
    var ball = document.getElementById("ball");
    var rightmagnifying = document.getElementById("rightmagnifying");
    var rightimg = document.getElementById("pic");
    var magnifying = document.getElementById("magnifying");
    leftmagnifying.onmousemove = function(event) {
        var e = event || window.event;
        ball.style.display = "block";
        rightmagnifying.style.display = "block"
        var x = (e.offsetX || e.layerX) - ball.offsetWidth / 2;
        var y = (e.offsetY || e.layerY) - ball.offsetHeight / 2;
        if (x <= 0) {
            x = 0
        } else if (x >= magnifying.clientWidth - ball.offsetWidth) {
            x = magnifying.clientWidth - ball.offsetWidth;
        }
        if (y <= 0) {
            y = 0
        } else if (y >= magnifying.clientHeight - ball.clientHeight) {
            y = magnifying.clientHeight - ball.clientHeight;
        }
        ball.style.left = x + "px";
        ball.style.top = y + "px";
        rightimg.style.left = x * -2.65 + "px";
        rightimg.style.top = y * -2.65 + "px";
        this.onmouseout = function() {
            ball.style.display = "none";
            rightmagnifying.style.display = "none"
        }
    }
    $(document).ready(function() {
        $(".goods-details").click(function(e) {
            e.preventDefault();
            $("#iframeMain").attr("src", $(this).attr("href"))
        })
    })
    //获取数据库中的商品信息并填入
    var gid = getCookie("gid");
    $.ajax({
        type: "POST",
        data:{
            gid: gid
        },
        url: "/goodsServlet?action=goods",
        success: function (res) {
            var goods = JSON.parse(res)[0]
            $("#details-title").html(goods.commodit_name + "&nbsp" + goods.commodit_them)
            $("#originalprice").html("￥"+goods.commodit_price)
            $("#nowprice").html("￥"+goods.commodit_vipprice)
            $("#imgs-color1").attr('src',"../img/"+goods.commodit_img)
            $("#imgs-color2").attr('src',"../img/"+goods.commodit_img1)
            $("#imgs-color3").attr('src',"../img/"+goods.commodit_img2)
            var c= $("#imgs-color1").attr('src')
            $("#imgs-color1").css('opacity',1)
            $("#leftmagnifying-imgs").attr('src',c)
            $("#rightmagnifying img").attr('src',c)
            $(".imgColor").click(function() {
                $(".imgColor").css('opacity',0.4)
                $(this).css('opacity',1)
                $("#leftmagnifying-imgs").attr('src',$(this).attr('src'))
                $("#rightmagnifying img").attr('src',$(this).attr('src'))
            })
            $("#number-p").html(" 件（库存"+goods.commodit_banknumber+"件）")
             //商品数量加减
            var number = $("#number");
            $("#add").bind("click", function() {
                var x = parseInt(number.val())
                if(x<goods.commodit_banknumber){
                    number.val(x + 1)
                }else{
                    alert("商品库存不足")
                    number.val(x)
                }
            })
            $("#subtraction").bind("click", function() {
                var x = parseInt(number.val())
                if (x > 0) {
                    number.val(x - 1)
                } else {
                    alert("数量不能为负数")
                    number.val(x)
                }
            })
            //购买的跳转
            $("#buy").bind("click", function() {
                if(isLogin == false){
                    if (confirm("请登录后再执行该操作！") == true){
                        window.location.href = "./login.jsp"
                    }
                }else {
                    window.location.href = "./pay.jsp"
                }
            })

            //购物车跳转
            $("#join").bind("click", function() {
                if(isLogin == false){
                    if (confirm("请登录后再执行该操作！") == true){
                        window.location.href = "./login.jsp"
                    }else {
                    }
                }
            })
        }
    })
</script>
</body>
</html

