<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<!-- 引入默认当前时间插件 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<script type="text/javascript" src="${ctx}/js/system/equipment/addFix.js"></script>
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
		action="${ctx}/equipment/addFixEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label">设备编号：</label>
				<div class="col-sm-9">
				<%-- 	<input type="text" class="form-control checkRole" readonly="readonly"
						name="equipmentFormMap.eqdeviceid" id="eqdeviceid" value="${equipment.eqdeviceid}"/> --%>
					<select name="equipmentFormMap.eqdeviceid" id="eqdeviceid" class="form-control checkacc"></select> 
					<input type="hidden" name="equipmentFormMap.id" id="eqid" class="form-control checkacc" />
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">设备型号：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" readonly="readonly"
						 name="equipmentFormMap.eqequipmenttype" id="eqequipmenttype">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">名&nbsp;&nbsp;&nbsp;&nbsp;称：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						name="equipmentFormMap.eqname" id="eqname">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">送修人：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkRole" name="fixFormMap.name" id="name" placeholder="请输入送修人"/>
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">送修部门：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" name="fixFormMap.department" id="department" placeholder="请输入送修部门"/>
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">送修时间：</label>
				<div class="col-sm-9">
					<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="yyyy-MM-dd" var="currentdate" />
					<input type="text" class="form-control" value="${currentdate}"name="fixFormMap.fixtime" id="fixtime" placeholder="请输入送修时间"/>
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">备&nbsp;&nbsp;&nbsp;&nbsp;注：</label>
				<div class="col-sm-9">
					<textarea rows="" cols="" class="form-control" name="fixFormMap.remark" id="remark" placeholder="请输入备注"></textarea>
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