<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/equipment/edit.js"></script>
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
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/equipment/editEntity.shtml">
		<input type="hidden" class="form-control checkacc" value="${equipment.id}"
			name="equipmentFormMap.id" id="id">
		<section class="panel panel-default">
			<div class="panel-body">
				<div class="form-group">
					<label class="col-sm-3 control-label">设备编号</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkRole" readonly="readonly"
							name="equipmentFormMap.eqdeviceid" id="eqdeviceid" value="${equipment.eqdeviceid}"/>
					</div>
				</div>
				
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">设备型号</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkacc"
							 name="equipmentFormMap.eqequipmenttype" id="eqequipmenttype" value="${equipment.eqequipmenttype}">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">名称</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" 
							name="equipmentFormMap.eqname" id="eqname" value="${equipment.eqname }">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">类型</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" 
							name="equipmentFormMap.eqtype" id="eqtype" value="${equipment.eqtype }">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">厂家</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" 
							name="equipmentFormMap.eqfactory" id="eqfactory" value="${equipment.eqfactory }">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
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
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
			</div>
			<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> 
	</section>
	</form>
	<script type='text/javascript'>
		/* $(function(){
			$("from input[name='enable'][value='${role.enable}']").attr("checked","checked");
			alert("input[name='enable'][value='${role.enable}']");
		}); */
	</script>
</body>
</html>