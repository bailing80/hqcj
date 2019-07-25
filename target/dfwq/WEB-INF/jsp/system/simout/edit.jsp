<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/simout/edit.js"></script>

<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
}

.col-sm-9 {
	width: 85%;
	float: left;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/simout/editEntity.shtml">
		<input type="hidden" class="form-control checkacc"
			value="${simout.id}" name="simOutFormMap.id" id="id">
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<div class="col-sm-3">
					<label class="control-label">出库单号</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control" value="${simout.sonumbers}"
						placeholder="请输入出库单号" name="simOutFormMap.sonumbers" id="sonumbers">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">sim编号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" value="${simout.simsimid}"
						placeholder="请输入sim编号" name="simOutFormMap.simsimid" id="simsimid">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">出库人</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" value="${simout.sooutpsople}"
						placeholder="请输入出库人" name="simOutFormMap.sooutpsople" id="sooutpsople">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">出库时间</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" value="${simout.soouttime}"
						placeholder="请输入出库时间" name="simOutFormMap.soouttime" id="soouttime">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">部门</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" value="${simout.sodepartment}"
						placeholder="请输入部门" name="simOutFormMap.sodepartment" id="sodepartment">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">数量</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" value="${simout.soaccount}"
						placeholder="请输入数量" name="simOutFormMap.soaccount" id="soaccount">
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