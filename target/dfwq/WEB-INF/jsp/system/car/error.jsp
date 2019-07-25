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
	text-align: right;
}

.col-sm-9 {
	width: 85%;
	float: left;
	text-align: left;
}

label[class^="btn btn-default"] {
	margin-top: -4px;
}

#myTab {
	margin: 10px 0 0 20px;
}

.row {
	margin-left: 13px;
}

label {
	width: 100x;
	display: inline-block;
}

.col {
	padding: 0px;
}

#guarantee input {
	width: 65%;
}

#runinformation input {
	width: 65%;
}

#guarantee label, #runinformation label {
	width: 60px;
	display: inline-block;
	padding: 0px;
}

.panel--padding {
	padding: 30px;
}
.tab-content .container-fluid label {
text-align:left;
display:block;
}
.form-horizontal .form-group {
margin-left:8px;
}
.row {
margin-right:20px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/car/errorEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body container-fluid panel--padding">
		<input type="hidden" class="form-control checkacc" value="${car.id} "
						name="carErrorFormMap.cid" id="cid">
						<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
									<label class=" control-label">车牌照号：</label>
							</div>
							<div class="row">
								<input type="text" readonly="readonly" class="form-control checkacc" value="${car.cplateid} "
						placeholder="请输入车牌照号" name="carErrorFormMap.cplateid" id="cplateid">
							</div>	
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
									<label class=" control-label">问题时间：</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入问题时间" 
						name="carErrorFormMap.ceerrortime" id="ceerrortime">
							</div>
						</div>
					</div>
		
		
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="row" style="">
						<div class="form-group row">
							<div class="row">
									<label class=" control-label">问题原因：</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
						placeholder="请输入问题原因" name="carErrorFormMap.cereason" id="cereason">
							</div>	
						</div>
					</div>
			<div class="line line-dashed line-lg pull-in"></div>			

		</div>
		<footer class="panel-footer text-right bg-light lter" style="margin-top:-35px;">
			<button type="submit" class="btn btn-success btn-s-xs">变为问题车辆</button>
		</footer> 
		</section>
	</form>
</body>
</html>