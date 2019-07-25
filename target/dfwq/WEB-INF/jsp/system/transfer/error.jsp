<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf" %>
<script type="text/javascript" src="${ctx}/js/system/car/error.js">
</script>
<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
}

.col-sm-9 {
	width: 85%;
	float: left;
}
label[class^="btn btn-default"]{
	margin-top: -4px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/car/errorEntity.shtml">
		<section class="panel panel-default">
		<input type="hidden" class="form-control checkacc" value="${car.id} "
						name="carErrorFormMap.cid" id="cid">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label">车牌照号：</label>
				<div class="col-sm-9">
					<input type="text" readonly="readonly" class="form-control checkacc" value="${car.cplateid} "
						placeholder="请输入车牌照号" name="carErrorFormMap.cplateid" id="cplateid">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">问题原因：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入问题原因" name="carErrorFormMap.cereason" id="cereason">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">问题时间：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入问题时间" 
						name="carErrorFormMap.ceerrortime" id="ceerrortime">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
		</div>
		<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">变为问题车辆</button>
		</footer> 
		</section>
	</form>
</body>
</html>