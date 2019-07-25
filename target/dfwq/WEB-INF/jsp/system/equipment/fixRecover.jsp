<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<!-- 引入默认当前时间插件 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<script type="text/javascript" src="${ctx}/js/system/equipment/fixRecover.js"></script>
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
		action="${ctx}/equipment/fixRecoverEntity.shtml">
		<input type="hidden" class="form-control checkacc" value="${equipment.id}" name="equipmentFormMap.id" id="id">
		<input type="hidden" class="form-control checkacc" value="${recover.id}" name="recoverFormMap.id" id="id"> 
		<input type="hidden" class="form-control checkacc" value="${fix.id}" name="fixFormMap.id" id="id"> 
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label">设备编号：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkRole"
						readonly="readonly" name="equipmentFormMap.eqdeviceid"
						id="eqdeviceid" value="${equipment.eqdeviceid}" />
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">设备型号：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						readonly="readonly" name="equipmentFormMap.eqequipmenttype"
						id="eqequipmenttype" value="${equipment.eqequipmenttype}">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">名&nbsp;&nbsp;&nbsp;&nbsp;称：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						name="equipmentFormMap.eqname" id="eqname"
						value="${equipment.eqname}">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">修好时间：</label>
				<div class="col-sm-9">
					<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="yyyy-MM-dd" var="currentdate" />
					<input type="text" class="form-control" value="${currentdate}" name="fixFormMap.fixgoodtime" id="fixgoodtime"
						placeholder="请输入修好时间" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">维修费用：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="fixFormMap.money"
						id="money" placeholder="请输入维修费用" />
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">备&nbsp;&nbsp;&nbsp;&nbsp;注：</label>
				<div class="col-sm-9">
					<textarea rows="" cols="" class="form-control"
						name="fixFormMap.remark" id="remark" placeholder="请输入备注">${fix.remark}</textarea>
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
		</div>
		<footer class="panel-footer text-right bg-light lter">
		<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> </section>
	</form>
</body>
</html>