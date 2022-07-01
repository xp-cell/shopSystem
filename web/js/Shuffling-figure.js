$(function() {
	var slider = $("#scrollPice .slider");
	var imgCon = $("#scrollPice .slider li");
	//除了第一张其余的隐藏
	imgCon.not(imgCon.eq(0)).hide();
	var num = $("#scrollPice .num");
	var len = slider.find("li").length;
	var html_page = "";
	var index = 0;
	//添加页码
	for (var i = 0; i < len; i++) {
		if (i === 0) {
			html_page += "<li class=on>" + (i + 1) + "</li>"
		} else {
			html_page += "<li>" + (i + 1) + "</li>"
		}
	}
	num.html(html_page)

	//显示索引对应的图片
	function showPic(index) {
		imgCon.eq(index).show().siblings("li").hide();
		num.find("li").eq(index).addClass("on").siblings("li").removeClass("on")
	}

	//页码按钮
	$(".num li").click(function() {
		index = $(this).index();
		showPic(index)
	})
	//自动轮播(第一个鼠标悬停 停止轮播 第二个鼠标移开继续轮播)
	window.timer = setInterval(function() {
		showPic(index);
		index++
		if (index === len) {
			index = 0;
		}
	}, 2000)
})
//点击轮播
$(function() {
	//获取初始的时间
	var Time = new Date();
	//点击按钮
	$("div.btn div").click(function() {
		//获取点击的时候的时间判断与初始时间是否有时间差
		if (new Date() - Time > 800) {
			//把现在的时候赋值给初始时间
			Time = new Date();
			//获取点击的是哪个按钮 通过下标
			var dec = $(this).index();
			console.log(dec)
			move(dec)
		}
	})

	function move(dec) {
		var arrW = [],
			arrH = [],
			arrT = [],
			arrL = [],
			arrZ = [],
			arrO = [];
		//先获取每一个li标签的属性
		$("div .tic ul li").each(function(i) {
			arrW[i] = $(this).width();
			arrH[i] = $(this).height();
			arrT[i] = $(this).css("top");
			arrL[i] = $(this).css("left");
			arrZ[i] = $(this).css("z-index");
			arrO[i] = $(this).find("img").css("opacity");
		})
		$("div .tic ul li").each(function(i) {
			//判断li标签是否是最后一个/第一个标签
			if (dec == 1) {
				var index = i - 1;
				if (index < 0) index = 8;
			} else {
				var index = i + 1;
				if (index > 8) index = 0;
			}
			//给每一个li标签设置属性
			$(this).find("img").animate({
				opacity: arrO[index]
			}, 800)
			$(this).css("zIndex", arrZ[index]).animate({
				width: arrW[index],
				height: arrH[index],
				top: arrT[index],
				left: arrL[index],
			}, 800)
		});
	}
})
