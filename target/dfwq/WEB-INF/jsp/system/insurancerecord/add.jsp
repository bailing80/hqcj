<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf" %>
<script type="text/javascript" src="${ctx}/js/system/insurance/add.js">
</script>
<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
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
		action="${ctx}/insurance/addEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label">车牌照号</label>
				<div class="col-sm-9">
				<input type="text" id="cplateid" name='insuranceFormMap.cplateid' onkeyup="carAutocomplete()"
				  onblur="cplateToCid(this)" class="form-control checkacc"/>
					<!-- <select id="cplateid" name="insuranceFormMap.cplateid" class="form-control checkacc"></select> -->
					<input type="hidden" id = "cid" name="insuranceFormMap.cid" class="form-control checkacc"  />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">保险编号</label>
				<div class="col-sm-9">
					<!-- <select id="cplateid" name="insuranceFormMap.cplateid" class="form-control checkacc"></select> -->
					<input type="text" class="form-control checkacc"
						placeholder="请输入保险编号" name="insuranceFormMap.iinsurancenumber" id="iinsurancenumber">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">交强险单号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入交强险单号" name="insuranceFormMap.iStronginsuranceid" id="iStronginsuranceid">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">商业险单号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入商业险单号"
						name="insuranceFormMap.iCommercialinsuranceid" id="iCommercialinsuranceid">
				</div>
			</div>
			
						<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">承运人险单号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入承运人险单号"
						name="insuranceFormMap.iCarrierinsuranceid" id="iCarrierinsuranceid">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">保险公司</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入保险公司"
						name="insuranceFormMap.iinsurancecompany" id="iinsurancecompany">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">保险类型</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入保险类型"
						name="insuranceFormMap.iinsurancetype" id="iinsurancetype">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">投保金额</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入投保金额"
						name="insuranceFormMap.iinsurancesum" id="iinsurancesum">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">开始时间</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入开始时间"
						name="insuranceFormMap.iinsurancestarttime" id="iinsurancestarttime">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">截止时间</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入截止时间"
						name="insuranceFormMap.iinsuranceendtime" id="iinsuranceendtime">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">保险方案</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入保险方案"
						name="insuranceFormMap.iInsurancescheme" id="iInsurancescheme">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">备注</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入备注"
						name="insuranceFormMap.iremark" id="iremark">
				</div>
			</div>
			
		</div>
		<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> 
		</section>
	</form>
</body>
</html>