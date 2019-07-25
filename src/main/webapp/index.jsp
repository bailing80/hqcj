<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en"
	class="app">
<head>
    
<%@include file="/common/common.jspf"%>
<script type="text/javascript">
	$(function() {
    //修改时间2015年10月13日14:32:57
    //修改在手机上点击菜单后菜单不关闭问题
    //修改人赵雷
    var winwidth = $("body").width();
    if(winwidth<770){
      $("#nav ul.lt li").click(function(){
        $("#nav").removeClass("nav-off-screen");
     });
    }
    //---------修改人赵雷完毕----------
		var tb = $("#loadhtml");
		tb.html(CommnUtil.loadingImg());
		tb.load(rootPath+"/welcome.jsp");
		$("[nav-n]").each(function () {
				$(this).bind("click",function(){
						var nav = $(this).attr("nav-n");
						var sn = nav.split(",");
						var html = '<li><i class="fa fa-home"></i>';
						html+='<a href="index.shtml">Home</a></li>';
						for(var i=0;i<2;i++){
							html+='<li><a href="javascript:void(0)">'+sn[i]+'</a></li>';
						}
						$("#topli").html(html);
						var tb = $("#loadhtml");
						tb.html(CommnUtil.loadingImg());
						tb.load(rootPath+sn[2]);
				});
			});
		});
</script>
<style>
.main-top {
background:url(images/img/baner.png) no-repeat;
background-size:cover;
}
.main-top-div {
height:70px;
width:220px;
background:url(images/img/logo.png) no-repeat;
background-size:cover;
}
.bg-dark .nav>li>a {
color:#36405b;
}
#topli li a {
text-decoration: none;
}

</style>
</head>
<body class="" style="">
	<section class="vbox">
		<header class="bg-dark dk header navbar navbar-fixed-top-xs" style="background-color:white;">
			<ul class="nav navbar-nav navbar-right m-n hidden-xs nav-user">
				<li class="hidden-xs">
				<a href="#" onclick="javascript:updatePasswordLayer();" style="padding:5px;">
				<img alt="修改密码" src="images/img/person.png" height="16px" width="16px">
				<span style="font-size:10px;">修改密码</span>
				</a>
				</li>
				<li class="hidden-xs">
				<a href="soft/用户使用手册V1.0.pdf" download="用户使用手册V1.0.pdf" class="" style="padding:5px;">
				<img alt="帮助中心" src="images/img/help.png" height="16px" width="16px">
				<span style="font-size:10px;">帮助中心</span>
				</a>
				</li>
				<li class="hidden-xs">
				<a href="soft/printsoft.exe" download="printsoft.exe" id="down" class="" style="padding:5px;">
				<img alt="下载插件" src="images/img/down.png" height="16px" width="16px">
				<span style="font-size:10px;">下载插件</span>
				</a>
				</li>
				<li class="hidden-xs">
				<a href="logout.shtml" style="padding:5px;">
				<img alt="个人中心" src="images/img/quit.png" height="16px" width="16px">
				<span style="font-size:10px; margin-right:20px;">退出登录</span>
				</a>
				</li>
				
			</ul>
		</header>
		<section style="height:70px;width:100%;background-color:#555;top:30px" class="main-top">
			<div class="main-top-div">	
			</div>
		</section>
		<section style="top:100px;">
			<section class="hbox stretch">
				<!-- .aside -->
				<aside class="bg-dark lter aside-md hidden-print hidden-xs" id="nav" style="background-color:#d7e5f9;">
					<section class="vbox">
						<!-- <header class="header bg-primary lter text-center clearfix">
							<div class="btn-group">
							系统菜单
							</div>
						</header> -->
						<section class="w-f scrollable">
							<div class="slim-scroll" data-height="auto"
								data-disable-fade-out="true" data-distance="0" data-size="5px"
								data-color="#333333">
								<!-- nav -->
								<nav class="nav-primary hidden-xs">
									<ul class="nav">
										<c:forEach var="key" items="${list}" varStatus="s">
											<!-- <li class="active"> 某一项展开-->
											<li <c:if test="${s.index==0}">class="active"</c:if>><a
												href="javascript:void(0)"
												<c:if test="${s.index==0}">class="active"</c:if>> <c:if
														test="${s.index==0}">
														<i class="fa fa-dashboard icon"> <b class="bg-danger"></b>
														</i>
													</c:if> <c:if test="${s.index==1}">
														<i class="fa fa-pencil-square icon"> <b
															class="bg-warning"></b>
														</i>
													</c:if> <c:if test="${s.index==2}">
														<i class="fa fa-columns icon"> <b class="bg-primary"></b>
														</i>
													</c:if> <c:if test="${s.index==3}">
														<i class="fa fa-book icon"> <b class="bg-info"></b>
														</i>
													</c:if> <c:if test="${s.index==4}">
														<i class="fa fa-th-list icon"> <b class="bg-success"></b>
														</i>
													</c:if>	<c:if test="${s.index==5}">
														<i class="fa fa-cloud icon"> <b class="bg-select"></b>
														</i>
														
													</c:if> 
													<c:if test="${s.index==6}">
														<i class="fa fa-cogs icon"> <b class="bg-system"></b>
														</i>
														
													</c:if> 
													
													
													 <span class="pull-right"> <i
														class="fa fa-angle-down text"></i> <i
														class="fa fa-angle-up text-active"></i>
												</span> <span>${key.name}</span>
											</a>

												<ul class="nav lt">
													<c:forEach var="kc" items="${key.children}">
														<li class="active"><a
															href="javascript:void(0)"
															class="active" nav-n="${key.name},${kc.name},${kc.resUrl}?id=${kc.id}"> <i class="fa fa-angle-right"></i> <span>${kc.name}</span>
														</a></li>
													</c:forEach>
												</ul></li>
										</c:forEach>
									</ul>
								</nav>
								<!-- / nav -->
							</div>
						</section>
						<footer class="footer lt hidden-xs b-t b-dark">
							<div id="chat" class="dropup">
								<section class="dropdown-menu on aside-md m-l-n">
									<section class="panel bg-white">
										<header class="panel-heading b-b b-light">Active
											chats</header>
										<div class="panel-body animated fadeInRight">
											<p class="text-sm">No active chats.</p>
											<p>
												<a href="#" class="btn btn-sm btn-default">Start a chat</a>
											</p>
										</div>
									</section>
								</section>
							</div>
							<div id="invite" class="dropup">
								<section class="dropdown-menu on aside-md m-l-n">
									<section class="panel bg-white">
										<header class="panel-heading b-b b-light">
											John <i class="fa fa-circle text-success"></i>
										</header>
										<div class="panel-body animated fadeInRight">
											<p class="text-sm">No contacts in your lists.</p>
											<p>
												<a href="#" class="btn btn-sm btn-facebook"><i
													class="fa fa-fw fa-facebook"></i> Invite from Facebook</a>
											</p>
										</div>
									</section>
								</section>
							</div>
							<a href="#nav" data-toggle="class:nav-xs"
								class="pull-right btn btn-sm btn-dark btn-icon"> <i
								class="fa fa-angle-left text"></i> <i
								class="fa fa-angle-right text-active"></i>
							</a>
							<div class="btn-group hidden-nav-xs">
								<!-- <button type="button" title="Chats"
									class="btn btn-icon btn-sm btn-dark" data-toggle="dropdown"
									data-target="#chat" style="margin-right: 10px;">
									<i class="fa fa-comment-o"></i>
								</button>
								<button type="button" title="Contacts"
									class="btn btn-icon btn-sm btn-dark" data-toggle="dropdown"
									data-target="#invite">
									<i class="fa fa-facebook"></i>
								</button> -->
							</div>
						</footer>
					</section>
				</aside>
				<!-- /.aside -->
				<section id="content">
					<section id="id_vbox" class="vbox">
						<ul class="breadcrumb no-border no-radius b-b b-light" id="topli">
						</ul>
						<section class="scrollable" style="margin-top: 35px;">
						<div id="loadhtml"></div>
						</section>
					</section>
				</section>
				<aside class="bg-light lter b-l aside-md hide" id="notes">
					<div class="wrapper">Notification</div>
				</aside>
			</section>
		</section>
	</section>
	<!-- Bootstrap -->
	<!--  
	<div id="flotTip" style="display: block; position: absolute;"></div>
	-->
</body>
</html>