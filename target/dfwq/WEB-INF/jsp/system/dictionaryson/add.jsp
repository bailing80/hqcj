<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf"%>
<script type="text/javascript"
	src="${ctx}/js/system/dictionaryson/add.js">
	
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
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/dictionaryson/addEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body">

			
			<div class="form-group">
				<label class="col-sm-3 control-label">字典类型</label>
				<div class="col-sm-9">
					<select id="idone" class="form-control checkacc"
						name="dictionarysonFormMap.dtypename"></select>
					<input type="hidden" name="dictionarysonFormMap.did" id="idtwo"
						class="form-control checkacc" />
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">名称</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" placeholder="请输入名称"
						name="dictionarysonFormMap.dstypename" id="dstypename">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">序号</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入序号"
						name="dictionarysonFormMap.dsorder" id="dsorder">
				</div>
			</div>
			<!-- <input type="hidden" id="hide_did" name="dictionarysonFormMap.did" value="1">
		<input type="hidden" id="hide_typename" name="dictionarysonFormMap.dtypename" value="保险"> -->

			

			<div class="line line-dashed line-lg pull-in"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label">备注</label>
				<div class="col-sm-9">
					<textarea type="text" class="form-control" placeholder="请输入字典备注"
						name="dictionarysonFormMap.dsremark" id="dsremark"></textarea>
				</div>
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