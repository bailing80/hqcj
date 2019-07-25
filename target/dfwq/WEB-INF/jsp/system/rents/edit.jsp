<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/rents/edit.js"></script>

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
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/rents/editEntity.shtml">
		<input type="hidden" class="form-control checkacc"
			value="${rents.id}" name="rentsFormMap.id" id="id">
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">车牌照号</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" value="${rents.cplateid}" readonly="readonly"
						placeholder="请输入日租金额" name="rentsFormMap.cplateid" id="cplateid">
				</div>
			</div>
		
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">首付款</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" value="${rents.firstmoney}"
						placeholder="请输入首付款" name="rentsFormMap.firstmoney" id="firstmoney">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">日租金总额</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" value="${rents.daycount}"
						placeholder="请输入日租金总额" name="rentsFormMap.daycount" id="daycount">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">日交金额</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" value="${rents.daymoney}"
						 name="rentsFormMap.daymoney" id="daymoney">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
		
			<div class="" style="float: left; margin-left:60px; margin-right: 15px;">
				<label class="control-label">备注</label>
			</div>
			<div class="" style="float: left;margin-left:15px;">
				<textarea class="form-control checkacc" placeholder="请输入备注"
					name="rentsFormMap.remark" id="remark" style="width: 460px; resize:none;">
					${rents.remark}</textarea>
			</div>
		</div>
		<footer class="panel-footer text-right bg-light lter">
		<button type="submit" class="btn btn-success btn-s-xs">保存</button>
		</footer> </section>
	</form>
	<script type="text/javascript">
	onloadurl();
</script>
</body>
</html>