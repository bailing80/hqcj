<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en"	class="app js no-touch no-android chrome no-firefox no-iemobile no-ie no-ie10 no-ie11 no-ios no-ios7 ipad">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
<meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1">
<link href="/favicon.ico" type="image/x-icon" rel=icon>
<link href="/favicon.ico" type="image/x-icon" rel="shortcut icon">
<meta name="renderer" content="webkit">
<title>登录－寰旗科技出租车管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"	href="${pageContext.servletContext.contextPath }/admin_files/min.css">
<link rel="stylesheet"	href="${pageContext.servletContext.contextPath }/admin_files/login.css">
<link	href="${pageContext.servletContext.contextPath }/admin_files/css.css"	rel="stylesheet" type="text/css">
<!--[if lt IE 9]> 
	<script src="${ctx}/js/jquery/ie/html5shiv.js"></script> 
	<script src="${ctx}/js/jquery/ie/respond.min.js"></script>
<![endif]-->
</head>
<body onload="javascript:to_top()" 
	style="background-image: url('${pageContext.servletContext.contextPath }/admin_files/8.jpg');margin-top:0px;background-repeat:no-repeat;background-size: 100% auto;">
	<div id="loginbox" style="padding-top: 10%;">
		<form id="loginform" name="loginform" class="form-vertical"
			style="background-color: rgba(0, 0, 0, 0.5) !important; background: #000; filter: alpha(opacity = 50); *background: #000; *filter: alpha(opacity = 50); /*黑色透明背景结束*/ color: #FFF; bottom: 0px; right: 0px; "
			action="${pageContext.servletContext.contextPath }/login.shtml"
			method="post">
			<div class="control-group normal_text">
				<section class="form-top" style="margin:50px auto;">
				寰旗科技出租车管理系统
				</section>

			</div>
			<div class="control-group">
				<div class="controls">
					<div class="main_input_box fl" style="background-color:#fff; opacity:0.6; border-radius:3px;margin-right:20px;" >
						<img src="${pageContext.servletContext.contextPath }/admin_files/user.png" style="height:27px;width:27px;z-index: 4;padding-left:5px;"/>	
						<input type="text" placeholder="username" name="username" value="admin" class="userinput"
							style="height: 45px; width:270px; opacity:0.6 ;outline:0;border:0;margin-bottom:0px;"/>
					</div>
					<div class="main_input_box fl" style="background-color:#fff;opacity:0.6;border-radius:3px;margin-right:20px;">
					<img src="${pageContext.servletContext.contextPath }/admin_files/password.png" style="height:30px;width:30px; z-index: 4;padding-left:1px;"/>
						<input type="password" placeholder="password" name="password" value="123456"
							style="height: 45px; width:270px;opacity:0.6;outline:0;border:0;margin-bottom:0px;"/>
					</div>
					<div class="form-actions fl"  >
				   <!--  
				   <span class="pull-left" style="width: 33%">
				        <a href="#" class="flip-link btn btn-info" id="to-recover">忘记密码？</a>
				    </span>
					<span class="pull-left" style="width: 33%">
					    <a href="install.shtml" class="flip-link btn btn-danger" id="to-recover">一键初始化系统</a>
					</span>
					-->
					<!--  
					<span class="pull-right">
					   <a type="submit" 	href="#" class="btn btn-success">取&nbsp;&nbsp;消</a>
					</span>
					-->
					<span class="pull-right">
					   <a type="submit" href="javascript:checkUserForm()" class="btn btn-success" style="height:45px;width:65px;padding:0px;border:none;line-height:45px; border-radius:3px;font-size:16px;">登&nbsp;&nbsp;录</a>
					</span>
					</div>
					
				</div>
			</div>
					</form>
	</div>
	<script type="text/javascript">
		if ("${error}" != "") {
			alert("${error}");
		};
		function checkUserForm() {
			document.loginform.submit();
		}
		function to_top(){
			if(window != top){
		        top.location.href=location.href;
		    }
		}
	</script>
</body>
</html>