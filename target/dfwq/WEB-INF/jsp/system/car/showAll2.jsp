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
<%-- <script type="text/javascript" src="${ctx}/js/system/car/edit.js"></script>
<script type="text/javascript"
	src="${ctx}/js/system/cookie/carEdit_cookie.js"></script> --%>
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
</style>
</head>
<body style="position: relative;">
	<!-- 上面的标签选项卡 -->
	<ul id="myTab" class="nav nav-tabs" style="border: none;">
		<li class="active"><a href="#car" data-toggle="tab">车辆信息</a></li>
		<li id="caronwertab"><a href="#caronwer" data-toggle="tab">车主</a></li>
		<li id="guaranteetab"><a href="#guarantee" data-toggle="tab">担保人</a></li>
		<li id="runinformationtab"><a href="#runinformation"
			data-toggle="tab">营运信息</a></li>
		<li id="mojorworkstab"><a href="#mojorworks" data-toggle="tab">主业人员</a></li>
		<li id="employeetab"><a href="#employee1" data-toggle="tab">从业人员1</a></li>
		<li id="employeetab"><a href="#employee2" data-toggle="tab">从业人员2</a></li>
	</ul>
	<!-- <form id="" name="" method="" action=""
		style="position: absolute; right: 17px; top: 0px;">
		<button type="submit" class="btn btn-success btn-s-xs" id="submission">提交</button>
	</form> -->

	<div id="myTabContent" class="tab-content">
		<!-- 车辆信息 -->
		<div class="tab-pane fade in active" id="car">

			<form id="carform" name="form" class="form-horizontal" method="post"
				action="${ctx}/car/editCarEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<div class="row">
						<div class="col-sm-6">左侧的图片显示</div>
						<!-- 第一行 -->
						<div class="col-sm-6">

							<input type="hidden" class="form-control checkacc"
								value="${car.id}" name="carFormMap.id" id="id">
							
								<div class="row">
									<label class="control-label">车辆牌照</label>
								</div>
								<div class="row">
									<input type="text" class="form-control" readonly="readonly"
										name="carFormMap.cplateid" id="cplateid"
										value="${car.cplateid }">
								</div>
							
							
								<div class="row">
									<label class="control-label">车辆类型</label>
								</div>
								<div class="row">
									<input type="text" class="form-control"  readonly="readonly"
										id="ctype" name="carFormMap.ctype" value="${car.ctype }">
								</div>
							
							<!-- 第二行 -->
							
								<div class="row">
									<label class=" control-label">厂牌类型</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										 readonly="readonly" name="carFormMap.ctradetype"
										id="ctradetype" value="${car.ctradetype }">
								</div>
							
							
								<div cass="row">
									<label class=" control-label">&nbsp;&nbsp;&nbsp;发动机号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										 readonly="readonly" name="carFormMap.cengineid"
										id="cengineid" value="${car.cengineid }">
								</div>
							
							<!-- 第三行 -->
						

								<div class="row">
									<label class=" control-label">排量</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										 readonly="readonly" name="carFormMap.coutputvolume"
										id="coutputvolume" value="${car.coutputvolume }">
								</div>
							
							
								<div class="row">
									<label class=" control-label">车架号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										 readonly="readonly" name="carFormMap.cframeid" id="cframeid"
										value="${car.cframeid }">
								</div>
							
							<!-- 第四行 -->
							

								<div class="row">
									<label class=" control-label">购置证号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										 readonly="readonly" name="carFormMap.cpurchaseid"
										id="cpurchaseid" value="${car.cpurchaseid }">
								</div>

							
						</div>
					</div>
					<!-- 分割布局处 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">车辆照片</label>
							</div>
							<div class="row">
								<input type="file"  readonly="readonly"
									name="carFormMap.cphoto" id="cphoto">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">车辆颜色</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									 readonly="readonly" name="carFormMap.ccolour" id="ccolour"
									value="${car.ccolour }">
							</div>
						</div>

					</div>

					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">车籍</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									 readonly="readonly" name="carFormMap.cbook" id="cbook"
									value="${car.cbook }">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">登记日期</label>

							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									 readonly="readonly" name="carFormMap.crecordtime"
									id="crecordtime" value="${car.crecordtime }">

							</div>
						</div>

					</div>
					<!-- 第六行 -->
					<%-- <div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
									<label class=" control-label">是否废止</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										placeholder="请输入是否废止" name="carFormMap.cisabolish"
										id="cisabolish" value="${car.cisabolish }">
								</div>
							</div>
					
						<div class="form-group col-sm-6">
							<div class="row">

									<label class=" control-label">废止时间</label>

								</div>
								<div class="row">

									<input type="text" class="form-control checkacc"
										placeholder="请输入废止时间" name="carFormMap.cabolishtime"
										id="cabolishtime" value="${car.cabolishtime }">
								</div>
							</div>
					
					</div> --%>
					<!-- 第七行 -->
					<%-- <div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
									<label class=" control-label">是否问题车辆</label>

								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										placeholder="请输入是否问题车辆" name="carFormMap.ciserror"
										id="ciserror" value="${car.ciserror }">

								</div>
							</div>
					</div> --%>
					<!-- 第八行 -->


					<div class=""
						style="float: left; margin-left: 50px; margin-right: 15px;">
						<label class="control-label">备注</label>
					</div>
					<div class="" style="float: left; margin-left: 50px;">
						<textarea class="form-control checkacc"  readonly="readonly"
							name="carFormMap.cremark" id="cremark"
							style="width: 729px; resize: none">
							${car.cremark }
							</textarea>
					</div>

				</div></section>
			</form>
		</div>
		<!-- 车主 -->
		<div class="tab-pane fade" id="caronwer">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/carowner/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${carowner.id}" name="carownerFormMap.id" id="carownerid">
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
									<input type="text" class="form-control checkacc"
										 readonly="readonly" name="carownerFormMap.cid" id="cid">
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
										value="${carowner.coname}">
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
										value="${carowner.coidcard}">
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
										value="${carowner.cosex}">
								</div>
							</div>

						</div>
						<!-- 左半面end -->
						<div class="col-sm-6">车主的照片</div>
					</div>
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									name="carownerFormMap.cobirthtime" id="cobirthtime"
									value="${carowner.cobirthtime}">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">车主照片</label>
							</div>
							<div class="row">
								<input type="file" readonly="readonly"
									name="carFormMap.cphoto" id="cphoto">
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
									value="${carowner.cophone}">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">驾驶证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control"
									value="${carowner.clicence}" readonly="readonly"
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
									value="${carowner.cocartype}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">初领驾证</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									name="carownerFormMap.copapertime" id="copapertime"
									value="${carowner.copapertime}">
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
									value="${carowner.coaddress}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									name="carownerFormMap.coserviceid" id="coserviceid"
									value="${carowner.coserviceid}">
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
									value="${carowner.coservicename}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">信誉等级</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									name="carownerFormMap.coreputationlevel" id="coreputationlevel"
									value="${carowner.coreputationlevel}">
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
									value="${carowner.coworkcardid}">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业截止</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									name="carownerFormMap.cocardendtime" id="cocardendtime"
									value="${carowner.cocardendtime}">
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
							style="width: 729px; resize: none">${carowner.coremark}</textarea>
					</div>

				</div></section>
			</form>
		</div>
		<!-- 担保人 -->
		<div class="tab-pane fade" id="guarantee">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/guarantee/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${guarantee.id}" name="guaranteeFormMap.id" id="guaranteeid">
				<section class="panel panel-default">
				<div class="panel-body" style="padding: 30px 0px 0px 230px;">
					<div class="form-group">
						<label class="col-sm-3 control-label" style="width: 60px;">姓名</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly" name="guaranteeFormMap.gname" id="gname"
								value="${guarantee.gname}">
						</div>
					</div>
					<div class="form-group" hidden>
						<label class="col-sm-3 control-label">车牌照号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly" name="guaranteeFormMap.cid" id="cid"
								value="${guarantee.cid}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">身份证号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly" name="guaranteeFormMap.gidcard"
								id="gidcard" value="${guarantee.gidcard}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">性别</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" readonly="readonly"
								name="guaranteeFormMap.gsex" id="gsex" value="${guarantee.gsex}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">手机号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly" name="guaranteeFormMap.gphone" id="gphone"
								value="${guarantee.gphone}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">地址</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly" name="guaranteeFormMap.gaddress"
								id="gaddress" value="${guarantee.gaddress}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">备注</label>
						<div class="col-sm-9">
							<textarea type="text" class="form-control checkacc"
								readonly="readonly" name="guaranteeFormMap.gremark" id="gremark"
								style="width: 65%; resize: none">
								${guarantee.gremark}
							</textarea>
						</div>
					</div>
				</div> </section>
			</form>
		</div>
		<!-- 营运信息 -->
		<div class="tab-pane fade" id="runinformation">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/runinformation/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${runinformation.id}" name="runinformationFormMap.id"
					id="runinformationid">
				<section class="panel panel-default">
				<div class="panel-body panel--padding"
					style="padding: 30px 0px 0px 230px;">

					<div class="form-group" hidden>
						<label class="col-sm-3 control-label">车牌号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly" name="runinformationFormMap.cid" id="cid"
								value="${runinformation.cid}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">营运证号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly" name="runinformationFormMap.rserviceid"
								id="rserviceid" value="${runinformation.rserviceid}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">营运性质</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								readonly="readonly"
								name="runinformationFormMap.rservicenature" id="rservicenature"
								value="${runinformation.rservicenature}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">合约级别</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" readonly="readonly"
								name="runinformationFormMap.rcontractlevel" id="rcontractlevel"
								value="${runinformation.rcontractlevel}">
						</div>
					</div>

<!-- 新加的  -->
					<div class="form-group">
						<label class="col-sm-3 control-label">合约初始日期</label>
						<div class="col-sm-9">
							<input type="text" value="${runinformation.rstarttime}" class="form-control" placeholder="请输入合约初始日期"
								name="runinformationFormMap.rstarttime"
								id="rstarttime">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">合约起始日期</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" readonly="readonly"
								name="runinformationFormMap.rcontractstarttime"
								id="rcontractstarttime"
								value="${runinformation.rcontractstarttime}">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-3 control-label">合约终止日期</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" readonly="readonly"
								name="runinformationFormMap.rcontractendtime"
								id="rcontractendtime" value="${runinformation.rcontractendtime}">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-3 control-label">保险方案</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" readonly="readonly"
								name="runinformationFormMap.rinsuranceplan" id="rinsuranceplan"
								value="${runinformation.rinsuranceplan}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">所属公司</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" readonly="readonly"
								name="runinformationFormMap.rcompany" id="rcompany"
								value="${runinformation.rcompany}">
						</div>
					</div>

				</div></section>
			</form>
		</div>
		<!-- 主业人员 -->
		<div class="tab-pane fade" id="mojorworks">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${majorworks.id}" name="mojorworksFormMap.id"
					id="majorworksid">
				<section class="panel panel-default">
				<div class="panel-body panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									readonly="readonly" name="mojorworksFormMap.mname" id="mname"
									value="${majorworks.mname}">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">身份证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${majorworks.midcard}" name="mojorworksFormMap.midcard"
									id="midcard">
							</div>
						</div>

					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">性别</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${majorworks.msex}" name="mojorworksFormMap.msex"
									id="msex">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${majorworks.mbirthtime}"
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
									value="${majorworks.mcartype}"
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
									value="${majorworks.mpapertime}" id="mpapertime">
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
									value="${majorworks.mcardid}" name="mojorworksFormMap.mcardid"
									id="mcardid">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">从业资格证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${majorworks.mworkcardid}"
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
									value="${majorworks.mfirstcertificatetime}"
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
									value="${majorworks.mcertificatetime}"
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
									value="${majorworks.mcardendtime}"
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

				</div> <section>
			</form>
		</div>
		<!-- 从业人员1 -->
		<div class="tab-pane fade" id="employee1">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${employee1.id}" name="employeeFormMap.id" id="employeeid">
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
									readonly="readonly" value="${employee1.cid}" name="employeeFormMap.cid" id="cid">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">
								<!-- <label class="control-label">车辆id</label> -->
								<label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>
							</div>
							<div class="row">
								<!-- <input type="text" class="form-control checkacc"
								placeholder="请输入车辆id" name="employeeFormMap.cid" id="cid"> -->
								<input type="text" class="form-control" readonly="readonly"
									value="${employee1.ename}" name="employeeFormMap.ename"
									id="ename">
							</div>
						</div>
						
						<div class="form-group col-sm-6">
						    <div class="row">									
								<label class="control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							</div>
							<div class="row">								
								<input type="text" readonly="readonly" class="form-control" placeholder="请输入性别"
								value="${employee1.esex}" name="employeeFormMap.esex" 
								id="esex1">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">身份证号</label>

							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${employee1.eidcard}" name="employeeFormMap.eidcard"
									id="eidcard">

							</div>
						</div>

					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${employee1.ebirthtime}"
									name="employeeFormMap.ebirthtime" id="ebirthtime">
							</div>
						</div>
						
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">联系电话</label>
							</div>
							<div class="row">
								<input type="text" readonly="readonly" class="form-control" placeholder="请输入联系电话"
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
									id="ecartype">

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
									value="${employee1.epapertime}" id="epapertime">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业资格证号</label>
							</div>
							<div class="row">

								<input type="text" class="form-control" readonly="readonly"
									value="${employee1.eworkcardid}"
									name="employeeFormMap.eworkcardid" id="eworkcardid">
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
									id="efirstcertificatetime">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">开始日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${employee1.ecertificatetime}"
									name="employeeFormMap.ecertificatetime" id="ecertificatetime">

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
									name="employeeFormMap.ecardendtime" id="ecardendtime">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${employee1.eserviceid}"
									name="employeeFormMap.eserviceid" id="eserviceid">

							</div>
						</div>
					</div>


					<!-- 第六行 -->
				</div> </section>
			</form>
		</div>
		<!-- 从业人员2 -->
		<div class="tab-pane fade" id="employee2">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${employee2.id}" name="employeeFormMap.id" id="employeeid">
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
									readonly="readonly" name="employeeFormMap.cid" id="cid">

							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">
								<!-- <label class="control-label">车辆id</label> -->
								<label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>
							</div>
							<div class="row">
								<!-- <input type="text" class="form-control checkacc"
								placeholder="请输入车辆id" name="employeeFormMap.cid" id="cid"> -->
								<input type="text" class="form-control" readonly="readonly"
									value="${employee2.ename}" name="employeeFormMap.ename"
									id="ename">
							</div>
						</div>
						
						<div class="form-group col-sm-6">
						    <div class="row">									
								<label class="control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							</div>
							<div class="row">								
								<input type="text" readonly="readonly" class="form-control" placeholder="请输入性别"
								value="${employee2.esex}" name="employeeFormMap.esex" 
								id="esex2">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">身份证号</label>

							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${employee2.eidcard}" name="employeeFormMap.eidcard"
									id="eidcard">

							</div>
						</div>

					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${employee2.ebirthtime}"
									name="employeeFormMap.ebirthtime" id="ebirthtime">
							</div>
						</div>
						
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">联系电话</label>
							</div>
							<div class="row">
								<input type="text" readonly="readonly" class="form-control" placeholder="请输入联系电话"
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
									id="ecartype">

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
									value="${employee2.epapertime}" id="epapertime">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业资格证号</label>
							</div>
							<div class="row">

								<input type="text" class="form-control" readonly="readonly"
									value="${employee2.eworkcardid}"
									name="employeeFormMap.eworkcardid" id="eworkcardid">
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
									id="efirstcertificatetime">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">开始日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${employee2.ecertificatetime}"
									name="employeeFormMap.ecertificatetime" id="ecertificatetime">

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
									name="employeeFormMap.ecardendtime" id="ecardendtime">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									value="${employee2.eserviceid}"
									name="employeeFormMap.eserviceid" id="eserviceid">

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
	</script>
	<script type="text/javascript"
		src="${ctx}/notebook/notebook_files/bootstrap-filestyle.min.js">
		
	</script>
</body>
</html>