<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf" %>
<!-- 引入默认当前时间插件 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<script type="text/javascript" src="${ctx}/js/system/equipment/addEquipmentIn.js">
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
		action="${ctx}/equipment/inAddEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body">
				<input type="hidden" class="form-control checkacc"
							value="${equipment.id}" name="equipmentFormMap.id" id="id">
				<div class="form-group">
					<label class="col-sm-3 control-label">设备编号</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkRole" readonly="readonly"
							name="equipmentFormMap.eqdeviceid" id="eqdeviceid" value="${equipment.eqdeviceid}"/>
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label">入库编号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc" readonly="readonly"
								name="equipmentinFormMap.einumbers" id="einumbers">
						</div>
					</div>
					<div class="line line-dashed line-lg pull-in"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label">入库人</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入入库人"
								name="equipmentinFormMap.eioutpeiple" id="eioutpeiple">
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
				
				
					<!-- <label class="col-sm-3 control-label">设备型号：</label> -->
					
						<input type="hidden" class="form-control checkacc" readonly="readonly"
							 name="equipmentFormMap.eqequipmenttype" id="eqequipmenttype" value="${equipment.eqequipmenttype}">
				
				
					<!-- <label class="col-sm-3 control-label">名&nbsp;&nbsp;&nbsp;&nbsp;称：</label> -->
					
						<input type="hidden" class="form-control" readonly="readonly"
							name="equipmentFormMap.eqname" id="eqname" value="${equipment.eqname }">
				
				
					<!-- <label class="col-sm-3 control-label">类&nbsp;&nbsp;&nbsp;&nbsp;型：</label> -->
					
						<input type="hidden" class="form-control" 
							name="equipmentFormMap.eqtype" id="eqtype" value="${equipment.eqtype }">
					
				
					<!-- <label class="col-sm-3 control-label">厂&nbsp;&nbsp;&nbsp;&nbsp;家：</label> -->
					
						<input type="hidden" class="form-control" readonly="readonly"
							name="equipmentFormMap.eqfactory" id="eqfactory" value="${equipment.eqfactory }">
				
				
	<%-- 		<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">设备状态</label>
					<div class="col-sm-9">
						<select name="equipmentFormMap.sbstatus" id="sbstatus" class="form-control m-b"
							tabindex="-1" onchange="but(this)">
							<option value="1" <c:if test="${equipment.sbstatus eq 1 }">selected="selected"</c:if>>正常</option>
							<option value="2" <c:if test="${equipment.sbstatus eq 2 }">selected="selected"</c:if>>出库</option>
							<option value="3" <c:if test="${equipment.sbstatus eq 3 }">selected="selected"</c:if>>维修</option>
							<option value="4" <c:if test="${equipment.sbstatus eq 4 }">selected="selected"</c:if>>废止</option>
					</select>
					</div>
				</div> --%>
				<div class="line line-dashed line-lg pull-in"></div>
			</div>
		<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> 
		</section>
	</form>
</body>
</html>