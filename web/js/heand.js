//用变量表示是否一登录
var isLogin;
//获取头部数据及编写未登录时的状态
if ($("#exit").html() == "") {//未登录时头部数据及链接
    isLogin = false;
    $("#welcome").html("Hi，欢迎来到清秋小铺");
    $("#integral").html("亲，请登录");
    $("#exit").html("免费注册");
    $("#integral").attr("href", "./login.jsp")
    $("#exit").attr("href", "./registered.jsp")
}
//获取到登录信息时
$.ajax({
    type: "GET",
    url: "/loginServlet?action=userData",
    success: function (res) {
        var data = JSON.parse(res)[0]
        if (data != "" || data != null) {
            isLogin = true;
            $("#integral").attr("href", "javascript:void(0);")
            $("#exit").attr("href", "javascript:void(0);")
            $("#welcome").html("Hi，" + data.user_name);
            $("#integral").html("积分：" + data.user_integral);
            $("#exit").html("退出");
            $("#exit").bind("click", function () {//点击事件重定义
                isLogin = false;
                $("#welcome").html("Hi，欢迎来到清秋小铺");
                $("#integral").html("亲，请登录");
                $("#exit").html("免费注册");
                $("#exit").attr("href", "/loginServlet?action=exit")
                $("#exit").bind("click", function () {
                    $("#exit").attr("href", "./registered.jsp")
                })
                $("#integral").bind("click", function () {
                    $("#integral").attr("href", "./login.jsp")
                })
            })
        }
    }
})