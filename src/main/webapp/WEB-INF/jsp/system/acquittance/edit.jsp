<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/acquittance/edit.js"></script>
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
		action="${ctx}/acquittance/editEntity.shtml">
		<input type="hidden" class="form-control checkacc" value="${acquittance.id}"
			name="acquittanceFormMap.id" id="id">
		<section class="panel panel-default">
			<div class="panel-body">
				<div class="form-group">
					<label class="col-sm-3 control-label">单据号</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkacquittance"
							placeholder="请输入单据号" readonly="readonly" name="acquittanceFormMap.acnumbers" id="acnumbers" value="${acquittance.acnumbers}"/>
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">收款日期</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkacc"
							placeholder="请输入收款日期" name="acquittanceFormMap.actime" id="actime" value=${acquittance.actime}>
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">名称</label>
					<div class="col-sm-9">
						<textarea type="text" class="form-control" placeholder="请输入名称"
							name="acquittanceFormMap.acname" id="acname" value="">${acquittance.acname }</textarea>
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">上款系</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" placeholder="请输入上款系"
							name="acquittanceFormMap.acup" id="acup" value="${acquittance.acup }">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">金额</label>
					<div class="col-sm-9">
						<input type="text" class="form-control acmoney" placeholder="请输入金额"
							name="acquittanceFormMap.acmoney" id="acmoney" value="${acquittance.acmoney }">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label">收款单位</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" placeholder="请输入收款单位"
							name="acquittanceFormMap.accompany" id="accompany" value="${acquittance.accompany }">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">收款人</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入收款人"
						name="acquittanceFormMap.acpayee" id="acpayee" value="${acquittance.acpayee }">
				</div>
			</div>
			</div>
			<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> 
	</section>
	</form>
	<script type='text/javascript'>
		/* $(function(){
			$("from input[name='enable'][value='${acquittance.enable}']").attr("checked","checked");
			alert("input[name='enable'][value='${acquittance.enable}']");
		}); */
	</script>
</body>
</html>