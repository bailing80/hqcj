<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/rents/add.js">
</script>
	<%-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
 	<link rel="stylesheet" href="/resources/demos/style.css">
	<script type="text/javascript" src="${ctx}/js/system/lib/Autocomplete.js"></script>
	<script type="text/javascript" src="${ctx}/js/system/lib/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${ctx}/js/system/lib/jquery-ui.js"></script> --%>
<style type="text/css">
.col-sm-3 {
	width: 18%;
	float: left;
	text-align: right;
}

.col-sm-9 {
	width: 82%;
	float: left;
	text-align: left;
}

label[class^="btn btn-default"] {
	margin-top: -4px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/rents/addEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">车牌照号</label>
				</div>
				<div class="col-sm-9">
				<input type="text" id="cplateid" name='rentsFormMap.cplateid' onkeyup="carAutocomplete()"
				onblur="cplateToCid(this)"	class="form-control checkacc"/>
					<!-- <select id="cplateid" class="form-control checkacc" name="rentsFormMap.cplateid"></select> -->
					<input type="hidden" id = "cid" name="rentsFormMap.cid" class="form-control checkacc"  />
				</div>
			</div>
		
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">首付款</label>
				<div class="col-sm-9">
					<input type="text" class="form-control firstmoney checkacc"
						placeholder="请输入首付款" name="rentsFormMap.firstmoney" id="firstmoney">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">日租金总额</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入日租金总额" name="rentsFormMap.daycount" id="daycount">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">日交款数</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入日交款数" name="rentsFormMap.daymoney" id="daymoney">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
		
			<div class="" style="float: left; margin-left: 60px; margin-right: 15px;">
				<label class="control-label">备注</label>
			</div>
			<div class="" style="float: left;margin-left:15px;">
				<textarea class="form-control checkacc" placeholder="请输入备注"
					name="rentsFormMap.remark" id="remark" style="width: 460px; resize:none;">
					</textarea>
			</div>
		</div>
		<footer class="panel-footer text-right bg-light lter">
		<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> </section>
	</form>
	<script type="text/javascript">
	onloadurl();
	</script>
	<script type="text/javascript"
		src="${ctx}/notebook/notebook_files/bootstrap-filestyle.min.js"></script>
</body>
</html>