<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/balance/addWeekly.js">
</script>
<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
	text-align:right;
}

.col-sm-9 {
	width: 80%;
	float: left;
}

label[class^="btn btn-default"] {
	margin-top: -4px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<div class="form-horizontal" style="height:544px;">
		<section class="panel panel-default">
		<div class="panel-body">
		<h4 style="text-align:center;">此车辆未收款</h4>
			<div class="form-group">
				<label class="col-sm-3 control-label">单据号</label>
				<div class="col-sm-9">
				
					<input type="text" readonly="readonly"
						class="form-control checkacc" placeholder=""
						name="receiptFormMap.reredocumentid" id="reredocumentid">
						<!-- 应收金额 -->		
				<input type="hidden" readonly="readonly"
						class="form-control checkacc" value="${rsablemoney}" placeholder=""
						name="receiptFormMap.reredocumentid" id="oldrsablemoney">
						<!-- 收款区间 -->		
						<input type="hidden" readonly="readonly"
						class="form-control checkacc" value="${resummary}" placeholder=""
						name="receiptFormMap.reredocumentid" id="resummary">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">车牌照号</label>
				<div class="col-sm-9">
				<input type="text" value="${cplateid}" id="cplateid" name='receiptFormMap.cplateid' onkeyup="carAutocomplete()"
				  onblur="" class="form-control checkacc"/>
					<!-- <select id="cplateid" name="receiptFormMap.cplateid"
						class="form-control checkacc"></select> --> <input type="hidden"
						name="receiptFormMap.cid" value="${cid}" id="cid" class="form-control checkacc" />
				</div>
			</div>

			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">车主姓名</label>
				<div class="col-sm-9">
					<input type="text" value="${coname}"  readonly="readonly" class="form-control"
						placeholder="车主姓名" name="receiptFormMap.coname" id="coname">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">收款人</label>
				<div class="col-sm-9">
					<input type="text" value="${userName }" readonly="readonly"  class="form-control" placeholder="收款人"
						name="receiptFormMap.rechamberlain" id="rechamberlain">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">收款日期</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入收款日期"
						name="receiptFormMap.retimeofreceipt" id="retimeofreceipt">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			</div>
			
			<!-- 按钮 -->
				<div style="width:100%;min-height:35px;">
				
				<button type="button" id="addAll" class="btn btn-success btn-s-xs" style="float:right;margin-right:54px;">提交</button>
				<button id="buttonone" class="form-control" style="width:100px; margin-right:30px;float:right;">收费项</button>
				<!-- <input type="button" value="添加收费项" id="buttonone" onclick="Ctable(1,7)"
				class="form-control" style="width:95px;height:35px;float:right;"/> -->
				
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
		
				<!-- form-control -->
				<table id="Mytable" class="" style="margin:5px 0 0 62px;">
				
					<!-- <tr>
						<td><label>费用名称</label> <select id="rsname">
								<option value="请选择费用项">请选择费用项</option>
						</select></td>
						<td><label>支付方式</label> <input type='text'
							name='receiptSonFormMap.rsablemoney' value='' id='chpaytype' /></td>
						<td>
						<td><label>应收金额</label> <input type="text"
							name="receiptSonFormMap.rsablemoney" value="" id="rsablemoney" />
						</td>
						<td><label>实收金额</label> <input type="text"
							name="receiptSonFormMap.rsfundsmoney" value="" id="rsfundsmoney" />
						</td>
						<td><label>欠款</label> <input type="text"
							name="receiptSonFormMap.rrsowemoney" value="" id="rsowemoney" />
						</td>
						<td><button id='delete0'>删除</button></td>
					</tr> -->
				</table>
	
			
		</div>
		</section>

</body>
</html>