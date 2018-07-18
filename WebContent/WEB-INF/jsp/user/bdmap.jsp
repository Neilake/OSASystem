<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="utf-8" />
<title></title>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script
	src="http://api.map.baidu.com/api?v=2.0&ak=A1LU7iHS0avqQwPLAxbhKn0UYSQCuRVH"></script>
<script src="${pageContext.request.contextPath }/js/jquery.baiduMap.min.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
}

ul {
	list-style: none;
}

body,html {
	height: 100%;
	font-family: "微软雅黑";
}

.box {
	width: 100%;
	height: 600px;
	margin: 40px 0;
}

#container1,#container2 {
	width: 100%;
	height: 100%;
}

#container3 {
	width: 80%;
	height: 100%;
}

.list {
	width: 20%;
	height: 100%;
	background: #eee;
}

.list li {
	height: 34px;
	line-height: 34px;
	padding-left: 20px;
}

.list li.active a {
	color: red;
}

.title {
	font-size: 14px;
	font-weight: bold;
	color: #cc5522;
}

.content {
	font-size: 13px;
	color: #333;
	margin-top: 6px;
}

.fl {
	float: left;
}
</style>
</head>

<body>
	<!-- <div class="box">
          <div id="container3" class="container fl"></div>
          <ul class="list fl">
    <li> <a href="javascript:void(0)">重庆邮电大学移通学院</a> </li>
    <li> <a href="javascript:void(0)">双体系卓越人才教育基地</a> </li>
    <li> <a href="javascript:void(0)">移通学院寝室A13</a> </li>
    <li> <a href="javascript:void(0)">重庆邮电大学移通学院-图书馆</a> </li>
    <li> <a href="javascript:void(0)">移通运动场</a> </li>
  </ul>
        </div> -->
	<div class="box">
		<div id="container1"></div>
	</div>
	<div class="box">
		<div id="container2"></div>
	</div>
	<script type="text/javascript">
		var points = [ {
			id : 1,
			lng : 106.247352,
			lat : 30.004405,
			title : "重庆邮电大学移通学院",
			content : [ "地址：假日大道1号", "电话：9090910" ]
		}, {
			id : 2,
			lng : 106.246633,
			lat : 30.003911,
			title : "双体系卓越人才教育基地",
			content : [ "地址：移通学院第二教学楼", "电话：023-58168855" ]
		}, {
			id : 3,
			lng : 106.245012,
			lat : 30.008012,
			title : "移通学院寝室A13",
			content : [ "地址：假日大道1号", "电话：9090910" ]
		}, {
			id : 4,
			lng : 106.245069,
			lat : 30.004373,
			title : "重庆邮电大学移通学院-图书馆",
			content : [ "地址：假日大道1号", "电话：9090910" ]
		}, {
			id : 5,
			lng : 106.246223,
			lat : 30.006867,
			title : "移通运动场",
			content : [ "地址：假日大道1号", "电话：9090910" ]
		} ];

		new BaiduMap({
			id : "container1",
			level : 16,
			titleClass : "title",
			contentClass : "content",
			centerPoint : { // 地图中心点经纬度
				lng : 106.247352,
				lat : 30.004300
			},
			index : -1,
			points : points,
			showLabel : true
		});

		new BaiduMap({
			id : "container2",
			level : 16,
			type : [ "地图", "卫星" ],
			width : 320,
			height : 70,
			titleClass : "title",
			contentClass : "content",
			showMarkPanorama : true,
			mapStyle : "light",
			icon : {
				url : "img/marker.png",
				width : 25,
				height : 96
			},
			centerPoint : { // 地图中心点经纬度
				lng : 106.247352,
				lat : 30.004405
			},
			index : 0,
			points : points
		});

		var map = new BaiduMap({
			id : "container3",
			level : 16, //  选填--地图级别--(默认15)
			zoom : true, // 选填--是否启用鼠标滚轮缩放功能--(默认false)
			type : [ "地图", "卫星", "三维" ], // 选填--显示地图类型--(默认不显示)
			width : 320, // 选填--信息窗口width--(默认自动调整)
			height : 70, // 选填--信息窗口height--(默认自动调整)
			titleClass : "title",
			contentClass : "content",
			showPanorama : true, // 是否显示全景控件(默认false)
			showMarkPanorama : true, // 是否显示标注点全景图(默认false)
			showLabel : false, // 是否显示文本标注(默认false)
			mapStyle : "normal", // 默认normal,可选dark,light
			icon : { // 选填--自定义icon图标
				url : "img/marker2.png",
				width : 34,
				height : 94
			},
			centerPoint : { // 中心点经纬度
				lng : 118.106586,
				lat : 24.467207
			},
			index : 3, // 开启对应的信息窗口，默认-1不开启
			animate : true, // 是否开启坠落动画，默认false
			points : points, // 标注点--id(唯一标识)
			callback : function(id) {
				$(".list").find("li").eq(id - 1).addClass("active").siblings()
						.removeClass("active");
			}
		});

		var data = map.getPosition();
		var $li = $(".list").find("li");

		$li.each(function(i) {
			$(this).data("id", i + 1);
		}).on("click", function() {
			map.openInfoWindow($(this).data("id"));
			$(this).addClass("active").siblings().removeClass("active");
		}).eq(data.id - 1).addClass("active");
	</script>
</body>
</html>