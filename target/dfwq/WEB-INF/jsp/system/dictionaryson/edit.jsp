<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/dictionaryson/edit.js"></script>

<style type="text/css">
.col-sm-3 {
	width: 16%;
	float: left;
	text-align: right;
}

.col-sm-9 {
	width: 84%;
	float: left;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/dictionaryson/editEntity.shtml">
		<input type="hidden" class="form-control checkacc"
			value="${dictionaryson.id}" name="dictionarysonFormMap.id" id="id">
		<section class="panel panel-default">
		<div class="form-group">
				<label class="col-sm-3 control-label">字典类型</label>
				<div class="col-sm-9">
					<input type="text" readonly="readonly" class="form-control" placeholder="请输入字典类型" value="${dictionaryson.dtypename}"
					name="dictionarysonFormMap.dtypename" id="dtypename">
				</div>
		</div>
		 <div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">字典值</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入字典值" value="${dictionaryson.dstypename}"
						name="dictionarysonFormMap.dstypename" id="dstypename">
				</div>
		</div>
		<div class="line line-dashed line-lg pull-in"></div>
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label">序号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="请输入序号名" value="${dictionaryson.dsorder}"
						name="dictionarysonFormMap.dsorder" id="dsorder">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">备注</label>
				<div class="col-sm-9">
					<textarea type="text" class="form-control" placeholder="请输入备注"
						value="" name="dictionarysonFormMap.dsremark" id="dsremark">${dictionaryson.dsremark}</textarea>
				</div>
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