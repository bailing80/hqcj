<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/sim/edit.js"></script>

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
		action="${ctx}/sim/editEntity.shtml">
		<input type="hidden" class="form-control checkacc"
			value="${sim.id}" name="simFormMap.id" id="id">
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label">sim编号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						placeholder="请输入sim编号" value="${sim.simsimid}"
						name="simFormMap.simsimid" id="simsimid">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">运&ensp;营&ensp;商</label>
				<div class="col-sm-9">
				
					<select name="simFormMap.simoperator" id="simoperator" class="form-control m-b"
							tabindex="-1" onchange="but(this)">
							<option value="1" <c:if test="${sim.simoperator eq 1 }">selected="selected"</c:if>>中国移动</option>
							<option value="2" <c:if test="${sim.simoperator eq 2 }">selected="selected"</c:if>>中国电信</option>
							<option value="3" <c:if test="${sim.simoperator eq 3 }">selected="selected"</c:if>>中国联通</option>
					</select>
				
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">卡&ensp;&ensp;&ensp;&ensp;号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入卡号" value="${sim.simcardid}"
						name="simFormMap.simcardid" id="simcardid">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">类&ensp;&ensp;&ensp;&ensp;型</label>
				<div class="col-sm-9">
				
					<select name="simFormMap.simtype" id="simtype" class="form-control m-b"
							tabindex="-1" onchange="but(this)">
							<option value="1" <c:if test="${sim.simtype eq 1 }">selected="selected"</c:if>>2G</option>
							<option value="2" <c:if test="${sim.simtype eq 2 }">selected="selected"</c:if>>3G</option>
							<option value="3" <c:if test="${sim.simtype eq 3 }">selected="selected"</c:if>>4G</option>
							<option value="4" <c:if test="${sim.simtype eq 4 }">selected="selected"</c:if>>5G</option>
					</select>
				
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">状&ensp;&ensp;&ensp;&ensp;态</label>
				<div class="col-sm-9">
				
					<select name="simFormMap.sbstatus" id="sbstatus" class="form-control m-b"
							tabindex="-1" onchange="but(this)">
							<option value="1" <c:if test="${sim.sbstatus eq 1 }">selected="selected"</c:if>>正常</option>
							<option value="2" <c:if test="${sim.sbstatus eq 2 }">selected="selected"</c:if>>出库</option>
							<option value="3" <c:if test="${sim.sbstatus eq 3 }">selected="selected"</c:if>>维修</option>
							<option value="4" <c:if test="${sim.sbstatus eq 4 }">selected="selected"</c:if>>废止</option>
					</select>
				
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