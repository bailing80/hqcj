<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf" %>
<!-- 引入默认当前时间插件 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<script type="text/javascript" src="${ctx}/js/system/equipment/add.js">
</script>
<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
	text-align:right;
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
		action="${ctx}/equipment/addEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label">设备编号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" readonly="readonly"
						placeholder="请输入设备编号" name="equipmentFormMap.eqdeviceid" id="eqdeviceid">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">入库编号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" readonly="readonly"
						placeholder="请输入入库编号" name="equipmentinFormMap.einumbers" id="einumbers">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">入库人</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc" 
						placeholder="请输入入库人" name="equipmentinFormMap.eioutpeiple" id="eioutpeiple">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label">入库时间</label>
						<div class="col-sm-9">
							<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="yyyy-MM-dd" var="currentdate" />
							<input type="text" class="form-control" value="${currentdate}" placeholder="请输入入库时间"
								name="equipmentinFormMap.eiouttime" id="eiouttime">
							
						</div>
					</div>
					<div class="line line-dashed line-lg pull-in"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label">部门</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入部门"
								name="equipmentinFormMap.eidepartment" id="eidepartment">
						</div>
					</div>
			
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">设备型号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入设备型号" name="equipmentFormMap.eqequipmenttype" id="eqequipmenttype">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">名称</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入名称"
						name="equipmentFormMap.eqname" id="eqname">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">类型</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入设备类型"
						name="equipmentFormMap.eqtype" id="eqtype">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">设备厂家</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入设备厂家"
						name="equipmentFormMap.eqfactory" id="eqfactory">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">设备状态</label>
				<div class="col-sm-9">
					<select id="type" name="equipmentFormMap.sbstatus" class="form-control m-b"
							tabindex="-1" onchange="but(this)">
							<option selected="selected" value="1">------  正常   ------</option>
							<!-- <option value="2">------  出库   ------</option>
							<option value="3">------  维修   ------</option>
							<option value="3">------  废止   ------</option> -->
						</select>
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
		</div>
		<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> 
		</section>
	</form>
</body>
</html>