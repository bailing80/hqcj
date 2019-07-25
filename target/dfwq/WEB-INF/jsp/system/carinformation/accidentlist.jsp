<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/accident/edit.js">
	
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

label[class^="btn btn-default"] {
	margin-top: -4px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/accident/editEntity.shtml">
		<input type="hidden" class="form-control checkacc"
			value="${accident.id}" name="accidentFormMap.id" id="id">
		<section class="panel panel-default">
		<div class="panel-body">
		<div class="form-group">
				<label class="col-sm-3 control-label">车主</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						value="${accident.acower}" readonly="readonly"
						name="accidentFormMap.acower" id="acower">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">车牌照号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						value="${accident.cplateid}" readonly="readonly"
						name="accidentFormMap.cplateid" id="cplateid">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label">事故时间</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly" 
						value="${accident.actime}"
						<fmt:formatDate value="${accident.actime}"
					 type="both" pattern="yyyy-MM-dd HH:mm:ss"/>
						name="accidentFormMap.actime" id="actime">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">事故地点</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly" 
						value="${accident.acaddress}" name="accidentFormMap.acaddress"
						id="acaddress">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">登记人</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly" 
						value="${accident.aclogin}" name="accidentFormMap.aclogin"
						id="aclogin">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">登记时间</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						value="${accident.aclogintime}" name="accidentFormMap.aclogintime"
						id="aclogintime">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">事故情况</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly" 
						value="${accident.acsituation}" name="accidentFormMap.acsituation"
						id="acsituation">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">事故责任</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly" 
						value="${accident.acliability}" name="accidentFormMap.acliability"
						id="acliability">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">理赔金额</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						value="${accident.acclaimmoney}"
						name="accidentFormMap.acclaimmoney" id="acclaimmoney">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否和解</label>
				<div class="col-sm-9" class="form-control">
					<input type="radio" name="accidentFormMap.aciscompromise" value="1" readonly="readonly"
						<c:if test="${accident.aciscompromise eq 1 }">checked="checked"</c:if> />是
					<input type="radio" name="accidentFormMap.aciscompromise" value="0" readonly="readonly"
						<c:if test="${accident.aciscompromise eq 0 }">checked="checked"</c:if>  style="margin-left:20px;" />否
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">法院</label>
				<div class="col-sm-9" class="form-control">
				<input type="text" class="form-control" readonly="readonly" 
						name="accidentFormMap.court" value="${accident.court}" id="court">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否起诉</label>
				<div class="col-sm-9" class="form-control">
					<input type="radio" name="accidentFormMap.aciscourt" value="1"
						<c:if test="${accident.aciscourt eq 1 }">checked="checked"</c:if> />是
					<input type="radio" name="accidentFormMap.aciscourt" value="0"
						<c:if test="${accident.aciscourt eq 0 }">checked="checked"</c:if>  style="margin-left:20px;" />否
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">原告人</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						value="${accident.acaccuser}" name="accidentFormMap.acaccuser"
						id="acaccuser">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">判决金额</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" readonly="readonly"
						value="${accident.acacourtmonry}"
						name="accidentFormMap.acacourtmonry" id="acacourtmonry">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class=""
				style="float: left; margin-left: 55px; margin-right: 15px;">
				<label class="control-label">备注</label>
			</div>
			<div class="" style="float: left; margin-left:18px;">
				<textarea class="form-control checkacc" readonly="readonly"
					 name="accidentFormMap.acremark"
					id="acremark" style="width: 532px; resize:none">${accident.acremark}
							</textarea>
			</div>
		</div>
		</section>
	</form>
</body>
</html>

