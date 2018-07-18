<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>UserHome</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/manage.css" />
<script language="JavaScript"
	src="${pageContext.request.contextPath }/js/manager.js"></script>

<!-- 考勤 -->
<link href="${pageContext.request.contextPath }/css/default.css"
	rel="stylesheet" type="text/css" />
<link rel="${pageContext.request.contextPath }/stylesheet"
	type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/animsition.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/drop-down.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/common.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/qk.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/xsfx.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/reset.css">
<script src="${pageContext.request.contextPath }/js/jquery.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/raphael.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/init.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/js/csfn.js"></script>

<!-- 领携信用分 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/chart.meter.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css">
<script src="${pageContext.request.contextPath }/js/jquery183.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/responsiveslides.min.js"></script>

<!-- 主页属性 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/zerogrid.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/menu.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/responsiveslides.css">
<script src="${pageContext.request.contextPath }/js/jquery183.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/responsiveslides.min.js"></script>


</head>
<!-- <body onload="getdates()"> -->

<!--头部-->
<%-- <div class="top">
			<div class="date">
				当前用户：${user.getUsername()}&nbsp; 当前日期：<span id="date"></span>
			</div>

			${user.getUsername()} 欢迎您！
			<a href="${pageContext.request.contextPath }/user/exit.do">注销</a>
		</div>
			<form action="${pageContext.request.contextPath}/user/usersin.do">
	<input  type ="submit" value="跳转">
	</form> --%>

<script type="text/javascript">
	window.onload = function() {
		Meter.setOptions({
			element : 'meter',
			centerPoint : {
				x : 180,
				y : 180
			},
			radius : 180,
			data : {
				value : 710,
				title : '借用物资信用{t}',
				subTitle : '评估时间：2018.06.29', /*获取系统的年月日*/
				area : [ {
					min : 350,
					max : 550,
					text : '较弱'
				}, {
					min : 550,
					max : 600,
					text : '一般'
				}, {
					min : 600,
					max : 650,
					text : '很强'
				}, {
					min : 650,
					max : 700,
					text : '超强'
				}, {
					min : 700,
					max : 950,
					text : '极强'
				} ]
			}
		}).init();

	}
</script>

<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
<!--[if lt IE 9]>
		<script src="js/html5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
	<![endif]-->
<!-- 获取系统时间 -->
<script language="javascript">
	function getCurDate() {
		var d = new Date();
		var week;
		switch (d.getDay()) {
		case 1:
			week = "星期一";
			break;
		case 2:
			week = "星期二";
			break;
		case 3:
			week = "星期三";
			break;
		case 4:
			week = "星期四";
			break;
		case 5:
			week = "星期五";
			break;
		case 6:
			week = "星期六";
			break;
		default:
			week = "星期天";
		}
		var years = d.getFullYear();
		var month = add_zero(d.getMonth() + 1);
		var days = add_zero(d.getDate());
		var hours = add_zero(d.getHours());
		var minutes = add_zero(d.getMinutes());
		var seconds = add_zero(d.getSeconds());
		var ndate = years + "年" + month + "月" + days + "日 " + hours + ":"
				+ minutes + ":" + seconds + " " + week;
		var divT = document.getElementById("logInfo");
		divT.innerHTML = ndate;
	}
	function add_zero(temp) {
		if (temp < 10)
			return "0" + temp;
		else
			return temp;
	}
	setInterval("getCurDate()", 100);
</script>

<script>
	// You can also use "$(window).load(function() {"
	/*轮播图按钮*/
	$(function() {
		// Slideshow 
		$("#slider").responsiveSlides({
			auto : true,
			pager : false,
			nav : true,
			speed : 500,
			namespace : "callbacks",
			before : function() {
				$('.events').append("<li>before event fired.</li>");
			},
			after : function() {
				$('.events').append("<li>after event fired.</li>");
			}
		});
	});
</script>



</head>
<body background="${pageContext.request.contextPath }/images/bg1.jpg; 
background-size: 100%;100%">
	<div class="wrap-body">

		<!--////////////////////////////////////Header-->
		<!--////////////////////////////////////Header-->
		<header>
		<div class="zerogrid">
			<div class="wrap-header">
				<div class="row">
					<div class="col-1-3">
						<div class="wrap-col">
							<div class="logo">
								<a href="#"><img
									src="${pageContext.request.contextPath }/images/logo.png" /></a>
							</div>
						</div>
					</div>
					<div class="col-1-3 offset-1-3">
						<div class="wrap-col"
							style="font-size: 20px; color: #c07abb; height: 60px; font-weight: bold; font-family: fzshuti;">
							<!-- <form method="get" action="/search" id="search" class="f-right">
						  <input name="q" type="text" size="40" placeholder="Search..." />
						</form> -->

							<span>当前用户：</span>
							<!-- 插入数据库信息 -->
							<span>${user.getUsername()}</span> &nbsp <a
								href="${pageContext.request.contextPath }/user/exit.do"><span>注销</span></a><br>
							<span>当前部门：</span>
							<!-- 插入数据库信息 -->
							<span>软件开发部</span>
							<!-- <span>当前时间：</span> -->
							<!-- 插入数据库信息 -->
							<span><p id="logInfo"></p></span>

						</div>
					</div>
				</div>
			</div>
			<nav id="menu-wrap">
			<div id="menu-trigger">Menu</div>
			<ul id="menu" style="display: none;">
				<li><a
					href="${pageContext.request.contextPath }/News/selectNews.do">首页</a></li>
				<li><a href="#">公司服务</a>
					<ul>
						<li><a
							href="${pageContext.request.contextPath }/user/bdmap.do" target="_blank">出行导航</a>
						</li>
						<li><a href="http://flights.ctrip.com/" target="_blank">订购机票</a></li>
						<li><a href="#">部门电话</a></li>
						<li><a href="#">点餐系统</a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath }/user/lxct.do"
									target="_blank">内部点餐</a></li>
								<li><a
									href="http://waimai.meituan.com/?utm_campaign=baidu&utm_source=1522"
									target="_blank">外部点餐</a></li>
							</ul></li>
						<!-- <li>
							<a href="#">Item 04</a>				
							<ul>
								<li><a href="#">Item 41</a></li>
								<li><a href="#">Item 42</a></li>
								<li><a href="#">Item 43</a></li>
								<li><a href="#">Item 44</a></li>
							</ul>	
						</li> -->
					</ul></li>
				<li><a
					href="${pageContext.request.contextPath }/News/turnAddNews.do">公告发布</a></li>
				<li><a href="#">文件管理</a>
					<ul>
						<li><a
							href="${pageContext.request.contextPath }/user/jumpFileUpload.do"
							target="_blank">文件上传</a></li>
						<li><a
							href="${pageContext.request.contextPath }/user/jumpFileDown.do"
							target="_blank">文件下载</a></li>

					</ul> <!-- <a href="${pageContext.request.contextPath }/user/jumpFile.do">文件管理</a> -->
				</li>
				<li><a href="#">物资管理</a>
					<ul>
						<li><a
							href="${pageContext.request.contextPath }/user/jumpLoan.do"
							>物资申请</a></li>
						<li><a
							href="${pageContext.request.contextPath }/osa/queryosapplication.do"
							">表单查看</a></li>
						<li><a
							href="${pageContext.request.contextPath }/#"
						">表单批审</a></li>

					</ul> <!-- <a href="${pageContext.request.contextPath }/user/jumpFile.do">文件管理</a> -->
				</li>
				<%-- <li><a
					href="${pageContext.request.contextPath }/user/usersing.do">签到</a></li> --%>
			</ul>
			</nav>
			<div class="slider">
				<!-- Slideshow -->
				<div class="callbacks_container1">
					<ul class="rslides" id="slider">
						<li><img
							src="${pageContext.request.contextPath }/images/7.jpg" alt="">
							<!-- <p class="caption">This is a caption</p> --></li>
						<li><img
							src="${pageContext.request.contextPath }/images/7.jpg" alt="">
							<!-- <p class="caption">This is another caption</p> --></li>
						<li><img
							src="${pageContext.request.contextPath }/images/7.jpg" alt="">
							<!-- <p class="caption">The third caption</p> --></li>
					</ul>
				</div>


			</div>
		</div>
		</header>


		<!-- 菜单栏 -->
		<script type="text/javascript">
			$(function() {
				if ($.browser.msie && $.browser.version.substr(0, 1) < 7) {
					$('li').has('ul').mouseover(function() {
						$(this).children('ul').css('visibility', 'visible');
					}).mouseout(function() {
						$(this).children('ul').css('visibility', 'hidden');
					})
				}

				/* Mobile */
				$("#menu-trigger").on("click", function() {
					$("#menu").slideToggle();
				});

				// iPad
				var isiPad = navigator.userAgent.match(/iPad/i) != null;
				if (isiPad)
					$('#menu ul').addClass('no-transition');
			});
		</script>

		<section id="container">
		<div class="wrap-container">
			<div class="zerogrid">
				<section class="content-box box-2"><!--Start Box-->
				<div class="row">
					<div class="col-1-3">
						<div class="wrap-col item">
							<h3 class="item-header">所获荣誉</h3>
						
								
							<p>万物静观皆自得，百尺楠藏洞府天，黄金台贮俊贤多，忠义存心老不渝，一切入门皆世界，英雄霸业夫如何？</p><br>
								 <img src="${pageContext.request.contextPath }/images/pg.jpg" />
						</div>
					</div>
					<div class="col-1-3">
						<div class="wrap-col item">
							<h3 class="item-header">物资申请</h3>

							<a href="${pageContext.request.contextPath }/user/jumpLoan.do"><span>填写物资申请单</span></a><br>
							<a
								href="${pageContext.request.contextPath }/osa/queryosapplication.do"><span>查询申请单</span></a><br>
							<a href="${pageContext.request.contextPath }/#"><span>审批申请单</span></a>
							<!-- form表单提交 
							<form action="" method = "">
								<span>物资查询</span>
								<input type="text" name="" placeholder="请输入物资的类型">
								<input type="submit" name="" value="查询">
							</form>-->
							<br>
							<br>
							<h5 class="item-header">领携信用分</h5>
							<div id="box">
								<canvas id="meter" width="370px" height="230px" style=""></canvas>
							</div>


						</div>
					</div>
					<div class="col-1-3">
						<div class="wrap-col item">
							<h3 class="item-header">
								<a href="${pageContext.request.contextPath }/News/selectNews.do">信息公告</a>
							</h3>

							<div class="news" style="font-size:15px;color:#000">

								<table border="1" align="center" cellspacing="0">
									<c:forEach items="${entity}" var="entity">

										<tr align="center">
											<td width="80px"><a
												href="${pageContext.request.contextPath }/News/selectNewscheck.do?titlee=${entity }">${entity}</a></td>
										</tr>
									</c:forEach>

								</table>

							</div>
							<!-- <span>本月出勤率</span>
							<p>His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix.</p>
							<hr style="border: 1px dashed #ccc;margin: 17px 0;">
							<span>公司奖励</span>
							<p>His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix.</p>
							<hr style="border: 1px dashed #ccc;margin: 17px 0;">
							<span>迟到早退请假</span>
							<p>His primis omittam intellegat cu, voluptua appetere mea ad, eu harum oporteat vix.</p> -->
						</div>
					</div>


				</div>
				</section>
				<hr style="background-color: #ddd;">

				<section class="content-box box-1">

				<div id="jfhu" class="data_wrap"
					style="background: #efeff5; width: 1020px; padding: 10px; overflow: hidden;">
					<div class="animsition">

						<div class="qk_wrap"
							style="margin-bottom: 10px; position: relative;">
							<div id="hdjf_tips"
								style="padding-left: 680px; height: 76px; padding-top: 14px; z-index: 999999; top: 0">
								<span id="hdjf_hdl">请假率：30%</span> <span id="hdjf_hgl">加班率：10%</span>
								<span id="hdjf_je">工资：4850元</span>
								<p id="hdjf_date">2018.6.29</p>
							</div>
							<div>
								<div id="main1" class="my_main" style="width: 1020px;"></div>
							</div>

						</div>
						<div class="qk_wrap">
							<div>
								<div id="main2" class="my_main"
									style="width: 505px; height: 300px"></div>
							</div>
							<div>
								<div id="main3" class="my_main"
									style="width: 505px; height: 300px"></div>
							</div>

						</div>


					</div>
				</div>


				<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
				<script
					src="${pageContext.request.contextPath }/js/jquery-ui.min.js"></script>
				<script
					src="${pageContext.request.contextPath }/js/select-widget-min.js"></script>
				<script
					src="${pageContext.request.contextPath }/js/jquery.animsition.min.js"></script>
				<script src="${pageContext.request.contextPath }/js/echarts.js"></script>
				<script src="${pageContext.request.contextPath }/js/macarons .js"></script>

				<script>
					$(document)
							.ready(
									function() {
										//初始化切换
										$(".animsition")
												.animsition(
														{

															inClass : 'fade-in-right',
															outClass : 'fade-out',
															inDuration : 1500,
															outDuration : 800,
															linkElement : '.animsition-link',
															// e.g. linkElement   :   'a:not([target="_blank"]):not([href^=#])'
															loading : true,
															loadingParentElement : 'body', //animsition wrapper element
															loadingClass : 'animsition-loading',
															unSupportCss : [
																	'animation-duration',
																	'-webkit-animation-duration',
																	'-o-animation-duration' ],
															//"unSupportCss" option allows you to disable the "animsition" in case the css property in the array is not supported by your browser.
															//The default setting is to disable the "animsition" in a browser that does not support "animation-duration".

															overlay : false,

															overlayClass : 'animsition-overlay-slide',
															overlayParentElement : 'body'
														});

										//虚拟数据
										var date = [ '2018/6/1', '2018/6/2',
												'2018/6/3', '2018/6/4',
												'2018/6/5', '2018/6/6',
												'2018/6/7', '2018/6/8',
												'2018/6/9', '2018/6/10',
												'2018/6/11', '2018/6/12',
												'2018/6/13', '2018/6/14',
												'2018/6/15', '2018/6/16',
												'2018/6/17', '2018/6/18',
												'2018/6/19', '2018/6/20',
												'2018/6/21', '2018/6/22',
												'2018/6/23', '2018/6/24',
												'2018/6/25', '2018/6/26',
												'2018/6/27', '2018/6/28',
												'2018/6/29', '2018/6/30' ];

										function my_data() {
											var data = [];
											for ( var i = 0; i < 30; i++) {
												data.push(Math.round(Math
														.random()
														* (50 - 10) + 60));

											}
											;
											return data;
										}
										var num = my_data();
										var bl = '30%';

										// 路径配置
										require
												.config({
													paths : {
														echarts : 'http://echarts.baidu.com/build/dist'
													}
												});

										// 使用
										require(
												[ 'echarts',
														'echarts/chart/bar',
														'echarts/chart/line',
														'echarts/chart/pie'// 使用柱状图就加载bar模块，按需加载
												],
												function(ec) {
													// 基于准备好的dom，初始化echarts图表
													var myChart = ec
															.init(
																	document
																			.getElementById('main1'),
																	'macarons');
													var myChart2 = ec
															.init(
																	document
																			.getElementById('main2'),
																	'macarons');
													var myChart3 = ec
															.init(
																	document
																			.getElementById('main3'),
																	'macarons');

													var option = {
														title : {
															text : '考勤应到总人数：1000\n考勤实到人数：500',
															y : 15,
															x : 20,
															borderColor : '#ccc',
															borderWidth : 1,
															padding : [ 8, 15 ],
															textStyle : {
																fontSize : 14
															}
														},
														backgroundColor : 'white',
														tooltip : {
															trigger : 'axis',
															formatter : function(
																	data) {
																//console.log(data[0].name)
																option2.title.subtext = data[0].name;
																option2.series[0].data = [
																		{
																			value : 900,
																			name : '前端开发'
																		},
																		{
																			value : 150,
																			name : '数据库'
																		},
																		{
																			value : 250,
																			name : '后端开发'
																		} ];
																option3.title.subtext = data[0].name;
																option3.series[0].data = [
																		{
																			value : 900,
																			name : '出勤率'
																		},
																		{
																			value : 150,
																			name : '迟到情况'
																		},
																		{
																			value : 150,
																			name : '请假情况'
																		},
																		{
																			value : 150,
																			name : '加班情况'
																		},
																		{
																			value : 150,
																			name : '公司奖励'
																		} ];
																myChart2
																		.clear();
																myChart2
																		.setOption(
																				option2,
																				true);
																myChart3
																		.clear();
																myChart3
																		.setOption(
																				option3,
																				true);
																var str = data[1].name;
																str += '</br>'
																		+ data[0].seriesName
																		+ ':'
																		+ data[0].value;
																str += '</br>'
																		+ data[1].seriesName
																		+ ':'
																		+ data[1].value;

																$('#hdjf_date')
																		.html(
																				data[1].name);
																$('#hdjf_hdl')
																		.html(
																				'请假率：10%');
																$('#hdjf_hgl')
																		.html(
																				'加班率：20%');
																$('#hdjf_je')
																		.html(
																				'金额：4560.95元');
																return str;

															}
														},
														legend : {
															selectedMode : false,
															data : [ '考勤情况',
																	'加班情况' ],
															y : '20'
														},
														grid : {
															y : '100',
														},
														toolbox : {
															show : false,
															y : '20',
															feature : {
																mark : {
																	show : false
																},
																dataView : {
																	show : true,
																	readOnly : false
																},
																magicType : {
																	show : true,
																	type : [
																			'line',
																			'bar' ]
																},
																restore : {
																	show : true
																},
																saveAsImage : {
																	show : true
																}
															}
														},
														dataZoom : {
															show : true,
															realtime : true,
															y : 320,
															height : 20,
															start : 70,
															end : 100
														},
														calculable : true,
														xAxis : [ {
															type : 'category',
															boundaryGap : true,
															data : date
														} ],
														yAxis : [ {
															//name : '积分数',
															type : 'value'
														} ],
														series : [
																{
																	name : '考勤情况',
																	type : 'bar',
																	//stack: '总量',
																	barMaxWidth : 15,
																	itemStyle : {
																		normal : {
																			borderWidth : 3
																		}
																	},
																	data : my_data()
																},
																{
																	name : '加班情况',
																	type : 'bar',
																	//stack: '总量',
																	barMaxWidth : 15,
																	itemStyle : {
																		normal : {
																			borderWidth : 3
																		}
																	},
																	data : my_data()
																} ]
													};
													var option2 = {
														title : {
															text : '项目参与度分析',
															subtext : '2018-6-29',
															textStyle : {
																fontSize : 14
															}
														},
														backgroundColor : 'white',
														tooltip : {
															trigger : 'item',
															formatter : "{a} <br/>{b} : {c} ({d}%)"
														},
														legend : {
															show : false,
															orient : 'vertical',
															x : 'left',
															data : [ '前端开发',
																	'数据库',
																	'后端开发' ]
														},
														toolbox : {
															show : false,
															feature : {
																mark : {
																	show : false
																},
																dataView : {
																	show : true,
																	readOnly : false
																},

																restore : {
																	show : true
																},
																saveAsImage : {
																	show : true
																}
															}
														},
														calculable : false,
														series : [

														{
															name : '公司人数',
															selectedMode : 'single',
															type : 'pie',
															radius : [ 65, 85 ],

															// for funnel
															x : '60%',
															width : '35%',
															funnelAlign : 'left',

															data : [ {
																value : 335,
																name : '前端开发'
															}, {
																value : 310,
																name : '数据库'
															}, {
																value : 234,
																name : '后端开发'
															} ]
														} ]
													};

													var option3 = {
														title : {
															text : '项目参与度分析',
															subtext : '2018-6-28',
															textStyle : {
																fontSize : 14
															}
														},
														backgroundColor : 'white',
														tooltip : {
															trigger : 'item',
															formatter : "{a} <br/>{b} : {c} ({d}%)"
														},
														legend : {
															show : false,
															orient : 'vertical',
															x : 'left',
															data : [ '出勤率',
																	'迟到情况',
																	'请假情况',
																	'加班情况',
																	'公司奖励' ]
														},
														toolbox : {
															show : false,
															feature : {
																mark : {
																	show : false
																},
																dataView : {
																	show : true,
																	readOnly : false
																},

																restore : {
																	show : true
																},
																saveAsImage : {
																	show : true
																}
															}
														},
														calculable : false,
														series : [

														{
															name : '级别占比',
															selectedMode : 'single',
															type : 'pie',
															radius : [ 65, 85 ],

															// for funnel
															x : '60%',
															width : '35%',
															funnelAlign : 'left',

															data : [ {
																value : 335,
																name : '出勤率'
															}, {
																value : 310,
																name : '迟到情况'
															}, {
																value : 234,
																name : '请假情况'
															}, {
																value : 234,
																name : '加班情况'
															}, {
																value : 234,
																name : '公司奖励'
															} ]
														} ]
													};

													var ecConfig = require('echarts/config');

													// 为echarts对象加载数据 
													myChart.setOption(option);
													myChart2.setOption(option2);
													myChart3.setOption(option3);

													//changge事件
													$('#jf_select')
															.on(
																	'change',
																	function() {
																		var val = $(
																				this)
																				.val();
																		$(
																				'#hdjf_date')
																				.html(
																						'2018/6/29');
																		$(
																				'#hdjf_hdl')
																				.html(
																						'请假率：10%');
																		$(
																				'#hdjf_hgl')
																				.html(
																						'加班率：20%');
																		$(
																				'#hdjf_je')
																				.html(
																						'工资：7890元');
																		option.title.text = '互动总人数：300\n互动总次数：100';
																		option.title.subtext = '2017/1/1';
																		option.series[0].data = my_data();
																		option.series[1].data = my_data();
																		option2.title.subtext = '2018/6/1';
																		option2.series[0].data = [
																				{
																					value : 900,
																					name : '前端开发'
																				},
																				{
																					value : 150,
																					name : '数据库'
																				},
																				{
																					value : 250,
																					name : '后端开发'
																				} ];
																		option3.title.subtext = '2017/1/1';
																		option3.series[0].data = [
																				{
																					value : 900,
																					name : '出勤率'
																				},
																				{
																					value : 150,
																					name : '迟到情况'
																				},
																				{
																					value : 150,
																					name : '请假情况'
																				},
																				{
																					value : 150,
																					name : '加班情况'
																				},
																				{
																					value : 150,
																					name : '公司奖励'
																				} ];
																		myChart
																				.clear();
																		myChart
																				.setOption(
																						option,
																						true);
																		myChart2
																				.clear();
																		myChart2
																				.setOption(
																						option2,
																						true);
																		myChart3
																				.clear();
																		myChart3
																				.setOption(
																						option3,
																						true);
																	})
												});
										//关闭提示
										$('.xsfx_tips  i').on('click',
												function() {
													$(this).parent().slideUp();
												})

									});
				</script> </section>


				<section class="content-box box-1">
				<div class="row">
					<!--Start Box-->
					<div class="col-1-4">
						<div class="wrap-col item">
							<h3 class="item-header">
								<a href="#">市场部</a>
							</h3>
							<div class="zoom-container">
								<img
									src="${pageContext.request.contextPath }/images/banner-img1.jpg" />
							</div>
							<div class="item-content">
								<span>市场部</span>
								<p>市场部是一个企业中营销组织架构的重要组成部分，通常包含产品市场部、市场开发部、市场宣传部和销售支持部，在企业中具有巨大的作用。
									企业的营销组织一般由市场部和销售部组成。按职能划分，市场部负责拉近产品与消费者的心理距离。</p>
								<a class="button" href="#">More</a>
							</div>
						</div>
					</div>
					<div class="col-1-4">
						<div class="wrap-col item">
							<h3 class="item-header">
								<a href="#">网络运营部</a>
							</h3>
							<div class="zoom-container">
								<img
									src="${pageContext.request.contextPath }/images/banner-img2.jpg" />
							</div>
							<div class="item-content">
								<span>网络运营部</span>
								<p>网站运营是指一切为了提升网站服务于用户的效率，而从事与网站后期运作、经营有关的行为工作；范畴通常包括网站内容更新维护、网站服务器维护、网站流程优化、数据挖掘分析、用户研究管理、网站营销策划等，网站运营常用的指标：PV、IP、</p>
								<a class="button" href="#">More</a>
							</div>
						</div>
					</div>
					<div class="col-1-4">
						<div class="wrap-col item">
							<h3 class="item-header">
								<a href="#">工程部</a>
							</h3>
							<div class="zoom-container">
								<img
									src="${pageContext.request.contextPath }/images/banner-img3.jpg" />
							</div>
							<div class="item-content">
								<span>工程部</span>
								<p>
									负责部门日常内务工作，受工程部经理直接领导。努力完成部门经理交办的各项事务，对酒店内部的通知、文件要做到及时上传下达，并做好归档管理工作。
									<br>2.参加部门工作会议，兼做会议记录，维护公司设备正常运行
								</p>
								<a class="button" href="#">More</a>
							</div>
						</div>
					</div>
					<div class="col-1-4">
						<div class="wrap-col item">
							<h3 class="item-header">
								<a href="#">软件开发部</a>
							</h3>
							<div class="zoom-container">
								<img
									src="${pageContext.request.contextPath }/images/banner-img4.jpg" />
							</div>
							<div class="item-content">
								<span>软件开发部</span>
								<p>软件开发是根据用户要求建造出软件系统或者系统中的软件部分的过程。软件开发是一项包括需求捕捉、需求分析、设计、实现和测试的系统工程。软件一般是用某种程序设计语言来实现的。通常采用软件开发工具可以进行开发。</p>
								<a class="button" href="#">More</a>
							</div>
						</div>
					</div>
				</div>
				</section>
			</div>
		</div>
		</section>
		<footer>
		<div class="zerogrid">
			<div class="wrap-footer">
				<div class="row">
					<div class="col-1-2">
						<div class="wrap-col">
							<div class="copy-right" style="text-align: center;"></div>
						</div>
					</div>
					<div class="col-1-2">
						<div class="wrap-col">
							<div class="bottom-social t-right">
								<a href="#"><img
									src="${pageContext.request.contextPath }/images/facebook.png"
									title="facebook" /></a> <a href="#"><img
									src="${pageContext.request.contextPath }/images/twitter.png"
									title="twitter" /></a> <a href="#"><img
									src="${pageContext.request.contextPath }/images/google.png"
									title="google" /></a> <a href="#"><img
									src="${pageContext.request.contextPath }/images/pinterest.png"
									title="pinterest" /></a> <a href="#"><img
									src="${pageContext.request.contextPath }/images/instagram.png"
									title="instagram" /></a>
							</div>
						</div>
					</div>
				</div>
				<div>
					<p style="text-align: center; font-size: 25px;">Copyright
						&copy; 2018来自凌霄一部worldhero组</p>
				</div>
			</div>
		</div>
		</footer>


	</div>
</body>
</html>