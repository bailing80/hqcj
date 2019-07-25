<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/sim/add.js">
	
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
		action="${ctx}/sim/addEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body">
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
				<div class="col-sm-3">
					<label class="control-label">sim编号</label>
				</div>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						placeholder="请输入sim编号" name="simFormMap.simsimid" id="simsimid">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">卡号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入卡号" name="simFormMap.simcardid" id="simcardid">
				</div>
			</div>
						<div class="line line-dashed line-lg pull-in"></div>
					
			<div class="form-group" style="height:34px;">
				<label class="col-sm-3 control-label">类型</label>
				<div class="col-sm-9">
					<select name="simFormMap.simtype" id="simtype" class="form-control m-b"
							tabindex="-1" onchange="but(this)">
							<option value="1">2G</option>
							<option value="2">3G</option>
							<option value="3" selected="selected">4G</option>
							<option value="4">5G</option>
					</select>
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">运营商</label>
				<div class="col-sm-9">
					<select id="simoperator" name="simFormMap.simoperator" class="form-control m-b"
							tabindex="-1" onchange="but(this)">
							<option value="1">中国移动</option>
							<option value="2" selected="selected">中国电信</option>
							<option value="3">中国联通</option>
					</select>
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
						<label class="col-sm-3 control-label">入库时间</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入入库时间"
								name="siminFormMap.siouttime" id="siouttime">
						</div>
					</div>
		
<!-- 			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">状&ensp;&ensp;&ensp;&ensp;态</label>
				<div class="col-sm-9">
					<select name="simFormMap.sbstatus" id="sbstatus" class="form-control m-b"
							tabindex="-1" onchange="but(this)">
							<option value="1" selected="selected">正常</option>
							<option value="2">出库</option>
							<option value="3">维修</option>
							<option value="4">废止</option>
					</select>
				</div>
			</div> -->
			
			
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