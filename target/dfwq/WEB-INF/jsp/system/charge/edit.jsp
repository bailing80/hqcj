<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/charge/edit.js"></script>
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
<body onload="selectpayname()">
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/charge/editEntity.shtml">
		<input type="hidden" class="form-control checkacc" value="${charge.id}"
			name="chargeFormMap.id" id="id">
		<section class="panel panel-default">
			<div class="panel-body">
				<div class="form-group" hidden>
					<label class="col-sm-3 control-label">车id：</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkRole" readonly="readonly"
					readonly="readonly"		 name="chargeFormMap.cid" id="cid" value="${charge.cid}"/>
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group" style="padding-left:170px;">
					<label class="col-sm-3 control-label"style="padding:7px 0 0 0px;">车牌照号</label>
					<div class="col-sm-9"style="padding:0;">
						<input type="text" readonly="readonly" class="form-control checkacc"
							style="width:300px;padding-left:15px;"
							 name="chargeFormMap.cplateid" id="cplateid" value="${charge.cplateid}">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group" style="padding-left:170px;">
					<label class="col-sm-3 control-label"style="padding:7px 0 0 0px;">日租金设置</label>
					<div class="col-sm-9"style="padding:0;">
						<input readonly="readonly" type="text" class="form-control" 
							style="width:300px;padding-left:15px;"
							name="chargeFormMap.chsetmoney" id="chsetmoney" value="${charge.chsetmoney}">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<div class="form-group" style="padding-left:170px;">
					<label class="col-sm-3 control-label"style="padding:7px 0 0 0px;">首付款</label>
					<div class="col-sm-9"style="padding:0;">
						<input type="text" readonly="readonly" class="form-control" 
							style="width:300px;padding-left:15px;"
							name="chargeFormMap.chfirstmoney" id="chfirstmoney" value="${charge.chfirstmoney}">
					</div>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<!-- 按钮 -->
				<div style="width:100%;min-height:35px;">
					<button type="button" id="saveAll" onclick="saveAlltoBase()"
					style="float:right;margin-left:15px;"
					class="btn btn-success btn-s-xs">提交</button>
					<input type="button" value="添加收费项" id="buttonone" onclick="Ctable(1,9)"
					class="form-control" style="width:95px;height:35px;float:right;"/>
				</div>
				<div class="line line-dashed line-lg pull-in"></div>
				<!-- 按钮 -->
			<table id="Mytable" class="">
			<!-- 第一行 -->
			<tr>
			<label></label> 
					<td><input type="hidden" value="${charge.cid}" id="selectchfirstmoneybycid"/></td>
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
							<input type="text" value="${charge.chfirstmoney}" readonly="readonly" id="firstmoney" name="chargeFormMap.chfirstmoney"/>
						</td>
						<td>
							<input type="button" disabled="disabled" class='removeVar' value="删除"
								onclick="deleteFun(this)" />
						</td>
					</tr>
					<!--第二行 -->
					<tr>
					<label></label> 
					<td><input type="hidden" value="${charge.cid}" id="selectpaytypebycid"/></td>
						<td>
							<label>费用名称</label> 
							<select id="idone">
								<option value="日租金">日租金</option>
							</select>
						</td>
						<td>
							<label>支付方式</label> 
							<select id="selectpaytype">
								<option value="">请选择支付方式</option>
							</select>
						</td>
						<td>
							<label>金额</label>
							<input type="text" value="${charge.chsetmoney}" readonly="readonly" id="rents" />
						</td>
						<td>
							<input type="button" disabled="disabled" class='removeVar' value="删除"
								onclick="deleteFun(this)" />
						</td>
					</tr>
			 <c:forEach  items="${list}"   var="element" varStatus="abc">
					<tr>
					<label></label> 
					<td><input type="hidden" value="${element.id}" id="${abc.count}"/></td>
						<td>
							<label>费用名称</label> <!--  onchange="selectsFun(this)" -->
							<select id="chname${abc.count}">
								
							</select>
						</td>
						<script text="java/javascript">
						selectsFun("${element.chname}","${abc.count}");
						</script>
						 <td>
							<label>支付方式</label> <!-- onchange="selectsFuntwo(this)" -->
							<select id="chpaytype${abc.count}"  >
								
							</select>
						</td>
						<script text="java/javascript">
						selectsFuntwo("${element.chpaytype}","${abc.count}");
						</script>
						<td>
							<label>金额</label>
							<input type="text" value="${element.chmoney}"  />
						</td>
						<td>
							<input type="button" class='removeVar' value="删除" myvalue="${abc.count}";
								onclick="deleteFun(this)" />
						</td>
					</tr>
				
			</c:forEach> 
			</table>
			
			
			</div>
			<!-- <footer class="panel-footer text-right bg-light lter">
			<button type="button" id="saveAll" onclick="saveAlltoBase()" class="btn btn-success btn-s-xs">提交</button>
			</footer>  -->
	</section>
	</form>
</body>
</html>