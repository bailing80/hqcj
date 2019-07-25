<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background-color:#fff">
<head>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<%@include file="/common/common.jspf"%>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/js/system/transfer/edit.js"></script>
<script type="text/javascript"
	src="${ctx}/js/system/cookie/transfer_cookie.js"></script>
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

#myTab {
	margin: 10px 0 0 20px;
}

.row {
	margin-left: 13px;
}

label {
	width: 100x;
	display: inline-block;
}

.col {
	padding: 0px;
}

#guarantee input {
	width: 65%;
}

#runinformation input {
	width: 65%;
}

#guarantee label, #runinformation label {
	width: 60px;
	display: inline-block;
	padding: 0px;
}

.panel--padding {
	padding: 30px;
}

.tab-content .container-fluid label {
	text-align: left;
	display: block;
}

.form-horizontal .form-group {
	margin-left: 8px;
}

.row {
	margin-right: 20px;
}
#guarantee label, #runinformation label{
width:86px;
}
</style>
</head>
<body style="position: relative;">
	<!-- 上面的标签选项卡 -->
	<ul id="myTab" class="nav nav-tabs" style="border: none;">
		<li id="caronwertab"><a href="#caronwer" data-toggle="tab">原车主信息</a></li>
		<li id="guaranteetab"><a href="#guarantee" data-toggle="tab">原担保人信息</a></li>
		<li id="mojorworkstab"><a href="#mojorworks" data-toggle="tab">原主业人员</a></li>
		<li id="employeetab1"><a href="#employee1" data-toggle="tab">原从业人员1</a></li>
		<li id="employeetab2"><a href="#employee2" data-toggle="tab">原从业人员2</a></li>
	</ul>

	<div id="myTabContent" class="tab-content">

		<!-- 原车主 -->
		<div class="tab-pane fade in active" id="caronwer">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/carowner/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${transfer.id}" name="carownerFormMap.id" id="carownerid">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">

						<!-- 左半面 -->
						<div class="col-sm-6" style="margin-left: -0.5%">
							<div class="form-group col-sm-6" hidden>
								<div class="row">
									<label class="control-label">车牌号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc" value="${transfer.cplateid}" readonly="readonly"
										 name="carownerFormMap.cid" id="cid">
								</div>
							</div>

							<div class="row">
								<div class="row">
									<label class="control-label">姓名</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										style="width: 336px" readonly="readonly"
										name="carownerFormMap.coname" id="coname"
										value="${transfer.coname}">
								</div>
							</div>

							<div class="row">
								<div class="row">
									<label class="control-label">身份证号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										style="width: 336px" readonly="readonly"
										name="carownerFormMap.coidcard" id="coidcard"
										value="${transfer.coidcard}">
								</div>
							</div>


							<!-- 第二行 -->

							<div class="row">
								<div class="row">

									<label class="control-label">性别</label>
								</div>
								<div class="row">
									<input type="text" class="form-control" readonly="readonly" 
										style="width: 336px" name="carownerFormMap.cosex" id="cosex"
										value="${transfer.cosex}">
								</div>
							</div>

						</div>
						<!-- 左半面end -->
						<div class="col-sm-6">
						<div id="img22-follow">
							</div>
						
						</div>
					</div>
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									name="carownerFormMap.cobirthtime" id="cobirthtime"
									value="${transfer.cobirthtime}">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">车主照片</label>
							</div>
						</div>
					</div>




					<!-- 第三行 -->
					<div class="row" style="">


						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">手机</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									name="carownerFormMap.cophone" id="cophone"
									value="${transfer.cophone}">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">驾驶证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control"
									value="${transfer.clicence}" readonly="readonly" 
									name="carownerFormMap.clicence" id="clicence">
							</div>

						</div>
					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">准驾车型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									name="carownerFormMap.cocartype" id="cocartype"
									value="${transfer.cocartype}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">初领驾证</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									name="carownerFormMap.copapertime" id="copapertime"
									value="${transfer.copapertime}">
							</div>
						</div>

					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">地址</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									name="carownerFormMap.coaddress" id="coaddress"
									value="${transfer.coaddress}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									name="carownerFormMap.coserviceid" id="coserviceid"
									value="${transfer.coserviceid}">
							</div>

						</div>
					</div>
					<!-- 第六行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡名</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									name="carownerFormMap.coservicename" id="coservicename"
									value="${transfer.coservicename}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">信誉等级</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									name="carownerFormMap.coreputationlevel" id="coreputationlevel"
									value="${transfer.coreputationlevel}">
							</div>
						</div>

					</div>
					<!-- 第七行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">资格证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									name="carownerFormMap.coworkcardid" id="coworkcardid"
									value="${transfer.coworkcardid}">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业截止</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									name="carownerFormMap.cocardendtime" id="cocardendtime"
									value="${transfer.cocardendtime}">
							</div>

						</div>
					</div>
					<!-- 第八行 -->
					<!--  -->
					<div class=""
						style="float: left; margin-left: 50px; margin-right: 15px;">
						<label class="control-label">备注</label>
					</div>
					<div class="" style="float: left; margin-left: 50px">
						<textarea class="form-control checkacc" readonly="readonly" 
							name="carFormMap.cremark" id="cremark"
							style="width: 729px; resize: none">${transfer.coremark}</textarea>
					</div>

				</div>
				</section>
			</form>
		</div>

		<!-- 新担保人 -->
		<div class="tab-pane fade" id="guarantee">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/guarantee/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${guarantee.id}" name="guaranteeFormMap.id" id="guaranteeid">
				<section class="panel panel-default">
				<div class="panel-body" style="padding: 30px 0px 0px 200px;">
					<div class="form-group">
						<label class="col-sm-3 control-label">姓名</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly"  name="guaranteeFormMap.gname" id="gname"
								value="${transfer.gname}">
						</div>
					</div>
					<div class="form-group" hidden>
						<label class="col-sm-3 control-label">车牌照号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly"  name="guaranteeFormMap.cid" id="cid"
								value="${transfer.cid}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">身份证号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly"  name="guaranteeFormMap.gidcard"
								id="gidcard" value="${transfer.gidcard}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">性别</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" readonly="readonly" 
								name="guaranteeFormMap.gsex" id="gsex" value="${transfer.gsex}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">手机号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly"  name="guaranteeFormMap.gphone" id="gphone"
								value="${transfer.gphone}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">地址</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly"  name="guaranteeFormMap.gaddress"
								id="gaddress" value="${transfer.gaddress}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">备注</label>
						<div class="col-sm-9">
							<textarea type="text" class="form-control checkacc"
								readonly="readonly" name="guaranteeFormMap.gremark" id="gremark"
								style="width: 65%; resize: none">${transfer.gremark}</textarea>
						</div>
					</div>
				</div>
				</section>
			</form>

		</div>

		
		<!-- 主业人员 -->
		<div class="tab-pane fade" id="mojorworks">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${transfer.id}" name="mojorworksFormMap.id"
					id="majorworksid">
				<section class="panel panel-default">
				<div class="panel-body panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									readonly="readonly" name="mojorworksFormMap.mname" id="mname"
									value="${transfer.mname}">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${transfer.msex}" name="mojorworksFormMap.msex"
									id="msex">
							</div>
						</div>

					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						
						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">身份证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${transfer.midcard}" name="mojorworksFormMap.midcard"
									id="midcard">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${transfer.mbirthtime}"
									name="mojorworksFormMap.mbirthtime" id="mbirthtime">
							</div>
						</div>

					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">准驾车型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${transfer.mcartype}"
									name="mojorworksFormMap.mcartype" id="mcartype">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">初领驾驶证日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									name="mojorworksFormMap.mpapertime"
									value="${transfer.mpapertime}" id="mpapertime">
							</div>
						</div>

					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">主业卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${transfer.mcardid}" name="mojorworksFormMap.mcardid"
									id="mcardid">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">从业资格证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${transfer.mworkcardid}"
									name="mojorworksFormMap.mworkcardid" id="mworkcardid">
							</div>
						</div>

					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">初次发放时间</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${transfer.mfirstcertificatetime}"
									name="mojorworksFormMap.mfirstcertificatetime"
									id="mfirstcertificatetime">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">发证日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${transfer.mcertificatetime}"
									name="mojorworksFormMap.mcertificatetime" id="mcertificatetime">
							</div>
						</div>

					</div>
					<!-- 第六行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">截止日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${transfer.mcardendtime}"
									name="mojorworksFormMap.mcardendtime" id="mcardendtime">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col"></div>
								<div class="col-sm-9"></div>
							</div>
						</div>
					</div>
					<!-- 第七行 -->

				</div>
				</section>
			</form>
		</div>
		
		<!-- 从业人员1 -->
		<div class="tab-pane fade" id="employee1">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${employee1.id}" name="employeeFormMap.id" id="employeeid1">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6" hidden>
							<div class="row">
								<label class="control-label">车辆id</label>
							</div>
							<div class="row">
								<input type="hidden" class="form-control checkacc"
									readonly="readonly"  value="${employee1.cid}" name="employeeFormMap.cid" id="cid1">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">
								<!-- <label class="control-label">车辆id</label> -->
								<label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>
							</div>
							<div class="row">
								<!-- <input type="text" class="form-control checkacc"
								readonly="readonly"  name="employeeFormMap.cid" id="cid"> -->
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee1.ename}" name="employeeFormMap.ename"
									id="ename1">
							</div>
						</div>

                        <div class="form-group col-sm-6">
							<div class="row">									
								<label class="control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							</div>
							<div class="row">								
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee1.esex}" name="employeeFormMap.esex" 
									id="esex1">
							</div>
						</div>
						</div>
						<!-- 第二行 -->
						<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">身份证号</label>

							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee1.eidcard}" name="employeeFormMap.eidcard"
									id="eidcard1">

							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee1.ebirthtime}"
									name="employeeFormMap.ebirthtime" id="ebirthtime1">
							</div>
						</div>
						</div>
						<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">联系电话</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
								    value="${employee1.etel}"
									name="employeeFormMap.etel" id="etel1">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">准驾车型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${employee1.ecartype}" name="employeeFormMap.ecartype"
									id="ecartype1">

							</div>
						</div>

					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">初领驾驶证日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									name="employeeFormMap.epapertime"
									value="${employee1.epapertime}" id="epapertime1">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业资格证号</label>
							</div>
							<div class="row">

								<input type="text" class="form-control" readonly="readonly"
									value="${employee1.eworkcardid}"
									name="employeeFormMap.eworkcardid" id="eworkcardid1">
							</div>
						</div>

					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">初次发放时间</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee1.efirstcertificatetime}"
									name="employeeFormMap.efirstcertificatetime"
									id="efirstcertificatetime1">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">开始日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${employee1.ecertificatetime}"
									name="employeeFormMap.ecertificatetime" id="ecertificatetime1">

							</div>
						</div>

					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">截止日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee1.ecardendtime}"
									name="employeeFormMap.ecardendtime" id="ecardendtime1">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee1.eserviceid}"
									name="employeeFormMap.eServiceid" id="eserviceid1">
							</div>
						</div>
					</div>


					<!-- 第六行 -->
				</div>
				</section>
			</form>
		</div>
		
		<!-- 从业人员2 -->
		<div class="tab-pane fade" id="employee2">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${employee2.id}" name="employeeFormMap.id" id="employeeid2">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6" hidden>
							<div class="row">
								<label class="control-label">车辆id</label>
							</div>
							<div class="row">
								<input type="hidden" value="${employee2.cid}" class="form-control checkacc"
									readonly="readonly" name="employeeFormMap.cid" id="cid2">

							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">
								<!-- <label class="control-label">车辆id</label> -->
								<label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>
							</div>
							<div class="row">
								<!-- <input type="text" class="form-control checkacc"
								readonly="readonly"  name="employeeFormMap.cid" id="cid"> -->
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee2.ename}" name="employeeFormMap.ename"
									id="ename2">
							</div>
						</div>
						
						<div class="form-group col-sm-6">
						    <div class="row">									
								<label class="control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							</div>
							<div class="row">								
								<input type="text" class="form-control" readonly="readonly"
								value="${employee2.esex}" name="employeeFormMap.esex" 
								id="esex2">
							</div>
						</div>
						</div>
						<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">身份证号</label>

							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee2.eidcard}" name="employeeFormMap.eidcard"
									id="eidcard2">

							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee2.ebirthtime}"
									name="employeeFormMap.ebirthtime" id="ebirthtime2">
							</div>
						</div>
						</div>
						<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">联系电话</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
								    value="${employee2.etel}"
									name="employeeFormMap.etel" id="etel2">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">准驾车型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee2.ecartype}" name="employeeFormMap.ecartype"
									id="ecartype2">

							</div>
						</div>

					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">初领驾驶证日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									name="employeeFormMap.epapertime"
									value="${employee2.epapertime}" id="epapertime2">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业资格证号</label>
							</div>
							<div class="row">

								<input type="text" class="form-control" readonly="readonly" 
									value="${employee2.eworkcardid}"
									name="employeeFormMap.eworkcardid" id="eworkcardid2">
							</div>
						</div>

					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">初次发放时间</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee2.efirstcertificatetime}"
									name="employeeFormMap.efirstcertificatetime"
									id="efirstcertificatetime2">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">开始日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee2.ecertificatetime}"
									name="employeeFormMap.ecertificatetime" id="ecertificatetime2">

							</div>
						</div>

					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">截止日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${employee2.ecardendtime}"
									name="employeeFormMap.ecardendtime" id="ecardendtime2">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly" 
									value="${employee2.eserviceid}"
									name="employeeFormMap.eServiceid" id="eserviceid2">

							</div>
						</div>
					</div>


					<!-- 第六行 -->
				</div>
				</section>
			</form>
		</div>


	</div>
	<script type="text/javascript">
		onloadurl();
		var cbox = $.cookie("transfer");
		var url = rootPath + '/car/selectPicown.shtml?id=' + cbox;
		var data = CommnUtil.ajax(url, null, "json");
		for(var i=0; i<data.length; i++){
			var showImg = "<img style=\"margin-left:14px;\" src=" + "${ctx}/uploadFile/" + data[i].cophoto +" width='180' height='140' id='10'/>";
			$('#img22-follow').append(showImg);
			}
	</script>
	<script type="text/javascript"
		src="${ctx}/notebook/notebook_files/bootstrap-filestyle.min.js">
		
	</script>
</body>
</html>