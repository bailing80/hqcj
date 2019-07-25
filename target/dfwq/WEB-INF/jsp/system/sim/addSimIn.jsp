<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf" %>
<script type="text/javascript" src="${ctx}/js/system/sim/addSimIn.js">
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
	text-align:right;
}
label[class^="btn btn-default"]{
	margin-top: -4px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/sim/inAddEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body">
				<input type="hidden" class="form-control checkacc"
							value="${sim.id}" name="simFormMap.id" id="id">
				<div class="form-group">
					<label class="col-sm-3 control-label">sim编号</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkRole" readonly="readonly"
							name="simFormMap.simsimid" id="simsimid" value="${sim.simsimid}"/>
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label">入库单号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc" readonly="readonly"
								name="siminFormMap.sinumbers" id="sinumbers">
						</div>
					</div>
					<div class="line line-dashed line-lg pull-in"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label">入库人</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入出库人"
								name="siminFormMap.sioutpsiple" id="sioutpsiple">
						</div>
					</div>				
					
					
				
				<div class="line line-dashed line-lg pull-in"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label">部门</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入部门"
								name="siminFormMap.sidepartment" id="sidepartment">
						</div>
					</div>
				<div class="line line-dashed line-lg pull-in"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label">入库时间</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入入库时间"
								name="siminFormMap.siouttime" id="siouttime">
						</div>
					</div>
					<!-- <label class="col-sm-3 control-label">卡号：</label> -->
					
						<input type="hidden" class="form-control checkRole" readonly="readonly"
							name="simFormMap.simcardid" id="simcardid" value="${sim.simcardid}"/>				
					<!-- <label class="col-sm-3 control-label">类型：</label> -->
				
						<input type="hidden" class="form-control checkRole" readonly="readonly"
							name="simFormMap.simtype" id="simtype" value="${sim.simtype}"/>			
					<!-- <label class="col-sm-3 control-label">运营商：</label> -->					
						<input type="hidden" class="form-control checkRole" readonly="readonly"
							name="simFormMap.simoperator" id="simoperator" value="${sim.simoperator}"/>
				
<%-- 				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<!-- <label class="col-sm-3 control-label">设备状态</label> -->
					<div class="col-sm-9">
						<select name="simFormMap.sbstatus" id="sbstatus" class="form-control m-b"
							tabindex="-1" onchange="but(this)">
							<option value="1" <c:if test="${sim.sbstatus eq 1 }">selected="selected"</c:if>>正常</option>
							<option value="2" <c:if test="${sim.sbstatus eq 2 }">selected="selected"</c:if>>出库</option>
							<option value="3" <c:if test="${sim.sbstatus eq 3 }">selected="selected"</c:if>>维修</option>
							<option value="4" <c:if test="${sim.sbstatus eq 4 }">selected="selected"</c:if>>废止</option>
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