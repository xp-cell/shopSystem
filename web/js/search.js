//存cookie值
function setCookie(cname,cvalue,exdays,path,pat) {
    var d = new Date();
    d.setTime(d.getTime()+(exdays*24*60*60*1000));
    var expires = "expires="+d.toGMTString();
    document.cookie = cname + "=" + cvalue + "; " + expires + "; " + path + "= /"  + pat;
}
//获取cookie值
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++)  {
        var c = ca[i].trim();
        if (c.indexOf(name)==0) {
            results = c.substring(name.length,c.length);
            return results;
        }
    }
    return "";
}
//搜索功能
$("#search-button").bind("click", function() {
	var x = $("#search-input").val()
	if (x === "食物" | x === "零食" | x === "饮料" | x === "水果") {
		window.location.href = "http://192.168.6.12/mall/html/allfood.html"
	} else if (x == "衣服" | x === "男装" | x === "女装" | x === "鞋子") {
		window.location.href = "http://192.168.6.12/mall/html/alldress.html"
	} else if (x == "书籍" | x === "诗词" | x === "名著" | x === "学习工具") {
		window.location.href = "http://192.168.6.12/mall/html/allbooks.html"
	} else if (x == "化妆品" | x === "防晒" | x === "美妆" | x === "护肤") {
		window.location.href = "http://192.168.6.12/mall/html/allmakeup.html"
	} else {
		alert("你可以尝试输入这些关键词：食物，零食，饮料，水果，衣服，男装，女装，鞋子，书籍，诗词，名著，学习工具，化妆品，防晒，美妆，护肤")
	}
})
