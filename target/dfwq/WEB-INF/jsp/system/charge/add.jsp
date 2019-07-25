<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="/common/common.jspf"%>
	<script type="text/javascript" src="${ctx}/js/system/charge/add.js">
		
	</script>
	<style type="text/css">
	.col-sm-3 {
		width: 35%;
		float: left;
	}

	.col-sm-9 {
		width: 65%;
		float: left;
	}

	label[class^="btn btn-default"] {
		margin-top: -4px;
	}
</style>
</head>
<body style="height:390px;">
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
	action="<%-- ${ctx}/charge/addEntity.shtml --%>">
	<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<!-- <label class="col-sm-3 control-label">外键：</label> -->
				<!-- <div class="col-sm-9">
					<input type="hidden" class="form-control checkacc"
					placeholder="请输入外键" name="chargeFormMap.cid" id="cid">
				</div> -->
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group row">
				<label class="col-sm-3 control-label"style="padding:7px 0 0 150px;">车牌照号</label>
				<div class="col-sm-9"style="padding:0;">
				<input type="text" id="cplateid" name='chargeFormMap.cplateid' onkeyup="carAutocomplete()"
					style="width:300px;padding-left:15px;"
					class="form-control checkacc"/>
					<!-- <select id="cplateid" name='chargeFormMap.cplateid' class="form-control checkacc"></select>  -->
					<input type="hidden" id="cid" name="chargeFormMap.cid" class="form-control checkacc" />

				</div>
			</div>
			<!-- <div class="line line-dashed line-lg pull-in"></div> -->
			<div class="form-group" hidden>
				<label class="col-sm-3 control-label">日租金额设置：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入日租金额设置"
					name="chargeFormMap.chsetmoney" value="" id="chsetmoney">
				</div>
			</div>
			<!-- <div class="line line-dashed line-lg pull-in"></div> -->
			<div class="form-group" hidden>
				<label class="col-sm-3 control-label">首付款：</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入首付款"
					name="chargeFormMap.chfirstmoney" id="chfirstmoney">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<!-- 按钮 -->
			<div style="width:100%;min-height:35px;">
				<button type="button" id="addAll" class="btn btn-success btn-s-xs"
					style="float:right;margin-left:15px;">提交</button>
				<input type="button" value="添加收费项" id="buttonone" onclick="Ctable(1,7)"
				class="form-control" style="width:95px;height:35px;float:right;"/>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<!-- 按钮 -->
			<form>
				<table id="Mytable" class="">
					<tr>
						<td style="width:200px;">
							<label>费用名称</label> 
							<select id="idone">
								<option value="首付款">首付款</option>
							</select>
						</td>
						<td style="width:200px;">
							<label>支付方式</label> 
							<select id="">
								<option value="一次性结">一次性结</option>
							</select>
						</td>
						<td>
							<label>金额</label>
							<input type="text" value="" readonly="readonly" id="firstmoney"/>
						</td>
						<td>
							<input type="button" disabled="disabled" class='removeVar' value="删除"
								onclick="deleteFun(this)" />
						</td>
					</tr>
					<tr>
						<td>
							<label>费用名称</label> 
							<select id="idone">
								<option value="日租金">日租金</option>
							</select>
						</td>
						<td>
							<label>支付方式</label> 
							<select id="idthree">
								<option value="请选择支付方式">请选择支付方式</option>
							</select>
						</td>
						<td>
							<label>金额</label>
							<input type="text" value="" readonly="readonly" id="rents" />
						</td>
						<td>
							<input type="button" disabled="disabled" class='removeVar' value="删除"
								onclick="deleteFun(this)" />
						</td>
					</tr>
					
					
				</table>
			</form>
				</div>
				<!-- <footer class="panel-footer text-right bg-light lter">
					<button type="button" id="addAll" class="btn btn-success btn-s-xs">提交</button>
				</footer> </section> -->
			</form>
		</body>
		</html>