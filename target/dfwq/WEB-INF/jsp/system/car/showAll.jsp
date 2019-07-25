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
#guarantee label, #runinformation label{
width:86px;
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
		<li id="picturetab"><a href="#picture" data-toggle="tab">图片上传</a></li>
	</ul>
	<!-- <form id="" name="" method="" action=""
		style="position: absolute; right: 17px; top: 0px;">
		<button type="button" class="btn btn-success btn-s-xs" id="submission">提交</button>
	</form> -->

	<div id="myTabContent" class="tab-content">
		<!-- 车辆信息 -->
		<div class="tab-pane fade in active" id="car">

			<form id="carform" name="form" class="form-horizontal" method="post"
				action="${ctx}/car/editCarEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
				<input readonly="readonly" readonly="readonly" type="hidden" class="form-control checkacc"
								value="${car.id}" name="carFormMap.id" id="id">
						<!-- 第一行 -->
							<div class="row" style="">
		<div class="form-group col-sm-6">
			<div class="row">
				<label class="control-label">车辆牌照</label>
			</div>
			<div class="row">
				<input readonly="readonly" type="text" class="form-control" placeholder="请输入车辆牌照"
										name="carFormMap.cplateid" id="cplateid"
										value="${car.cplateid }">
			</div>
		</div>

		<div class="form-group col-sm-6">
			<div class="row">
				<label class="control-label">车辆类型</label>

			</div>
			<div class="row">
				<input readonly="readonly" type="text" class="form-control" placeholder="请输入车辆类型"
										id="ctype" name="carFormMap.ctype" value="${car.ctype }">
			</div>
		</div>
	</div>
	<div class="row" style="">
		<div class="form-group col-sm-6">
			<div class="row">
				<label class=" control-label">厂牌类型</label>
			</div>
			<div class="row">
				<input readonly="readonly" type="text" class="form-control checkacc"
										placeholder="请输入厂牌类型" name="carFormMap.ctradetype"
										id="ctradetype" value="${car.ctradetype }">
			</div>
		</div>

		<div class="form-group col-sm-6">
			<div class="row">
				<label class=" control-label">&nbsp;&nbsp;&nbsp;发动机号</label>

			</div>
			<div class="row">
				<input readonly="readonly" type="text" class="form-control checkacc"
										placeholder="请输入发动机号" name="carFormMap.cengineid"
										id="cengineid" value="${car.cengineid }">
			</div>
		</div>
	</div>
	<div class="row" style="">
		<div class="form-group col-sm-6">
			<div class="row">
				<label class=" control-label">排量</label>
			</div>
			<div class="row">
				<input readonly="readonly" type="text" class="form-control checkacc"
										placeholder="请输入排量" name="carFormMap.coutputvolume"
										id="coutputvolume" value="${car.coutputvolume }">
			</div>
		</div>

		<div class="form-group col-sm-6">
			<div class="row">
				<label class=" control-label">车架号</label>

			</div>
			<div class="row">
				<input readonly="readonly" type="text" class="form-control checkacc"
										placeholder="请输入车架号" name="carFormMap.cframeid" id="cframeid"
										value="${car.cframeid }">
			</div>
		</div>
	</div>
	<div class="row" style="">
		<div class="form-group col-sm-6">
			<div class="row">
				<label class=" control-label">购置证号</label>
			</div>
			<div class="row">
				<input readonly="readonly" type="text" class="form-control checkacc"
										placeholder="请输入购置证号" name="carFormMap.cpurchaseid"
										id="cpurchaseid" value="${car.cpurchaseid }">
			</div>
		</div>

		<div class="form-group col-sm-6">
			<div class="row">
				<label class=" control-label">车辆颜色</label>
			</div>
			<div class="row">
				<input readonly="readonly" type="text" class="form-control checkacc"
									placeholder="请输入车辆颜色" name="carFormMap.ccolour" id="ccolour"
									value="${car.ccolour }">
			</div>
		</div>
	</div>
	<div class="row" style="">
		<div class="form-group col-sm-6">
			<div class="row">
				<label class="control-label">车籍</label>
			</div>
			<div class="row">
				<input readonly="readonly" type="text" class="form-control checkacc"
									placeholder="请输入车籍" name="carFormMap.cbook" id="cbook"
									value="${car.cbook }">
			</div>
		</div>

		<div class="form-group col-sm-6">
			<div class="row">
				<label class=" control-label">登记日期</label>

			</div>
			<div class="row">
				<input readonly="readonly" type="text" class="form-control checkacc"
									placeholder="请输入登记日期" name="carFormMap.crecordtime"
									id="crecordtime" value="${car.crecordtime }"/>
			</div>
		</div>
	</div>


					<div class=""
						style="float: left; margin-left: 50px; margin-right: 15px;">
						<label class="control-label">备注</label>
					</div>
					<div class="" style="float: left; margin-left: 50px;">
						<textarea readonly="readonly" class="form-control checkacc" placeholder="请输入备注"
							name="carFormMap.cremark" id="cremark"
							style="width: 729px; resize: none">${car.cremark }</textarea>
					</div>

				</div>

				<footer class="panel-footer text-right bg-light lter">
				<!-- <button type="submit" class="btn btn-success btn-s-xs"
					id="carCookie">保存</button> -->
				</footer> </section>
			</form>
		</div>
		<!-- 车主 -->
		<div class="tab-pane fade" id="caronwer">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/carowner/addEntity.shtml --%>">
				<input readonly="readonly" type="hidden" class="form-control checkacc"
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
									<input readonly="readonly" type="text" class="form-control checkacc"
										placeholder="请输入车牌号" name="carownerFormMap.cid" id="cid">
								</div>
							</div>

							<div class="row">
								<div class="row">
									<label class="control-label">姓名</label>
								</div>
								<div class="row">
									<input readonly="readonly" type="text" class="form-control checkacc"
										style="width: 336px" placeholder="请输入姓名"
										name="carownerFormMap.coname" id="coname"
										value="${carowner.coname}">
								</div>
							</div>

							<div class="row">
								<div class="row">
									<label class="control-label">身份证号</label>
								</div>
								<div class="row">
									<input readonly="readonly" type="text" class="form-control checkacc"
										style="width: 336px" placeholder="请输入身份证号"
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
									<input readonly="readonly" type="text" class="form-control" placeholder="请输入性别"
										style="width: 336px" name="carownerFormMap.cosex" id="cosex"
										value="${carowner.cosex}">
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入出生日期"
									name="carownerFormMap.cobirthtime" id="cobirthtime"
									value="${carowner.cobirthtime}">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">车主照片</label>
							</div>
							<div class="row">
									<input type="file" id="picfile" name="picfile" onchange="showpic(this)" placeholder="请上传车主照片"/>
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入手机"
									name="carownerFormMap.cophone" id="cophone"
									value="${carowner.cophone}">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">驾驶证号</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control"
									value="${carowner.clicence}" placeholder="请输入驾驶证号"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入准驾车型"
									name="carownerFormMap.cocartype" id="cocartype"
									value="${carowner.cocartype}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">初领驾证</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入初领驾驶证日期"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入地址"
									name="carownerFormMap.coaddress" id="coaddress"
									value="${carowner.coaddress}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入服务卡号"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入服务卡姓名"
									name="carownerFormMap.coservicename" id="coservicename"
									value="${carowner.coservicename}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业证开始日期</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入服务从业证开始日期"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入从业资格证号"
									name="carownerFormMap.coworkcardid" id="coworkcardid"
									value="${carowner.coworkcardid}">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业截止</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入从业证截止日期"
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
						<textarea readonly="readonly" class="form-control checkacc" placeholder="请输入备注"
							name="carFormMap.cremark" id="cremark"
							style="width: 729px; resize: none">${carowner.coremark}</textarea>
					</div>

				</div>
				<footer class="panel-footer text-right bg-light lter">
				<!-- <button type="button" class="btn btn-success btn-s-xs"
					id="caronwerCookie">保存</button> -->
				</footer> </section>
			</form>
		</div>
		<!-- 担保人 -->
		<div class="tab-pane fade" id="guarantee">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/guarantee/addEntity.shtml --%>">
				<input readonly="readonly" type="hidden" class="form-control checkacc"
					value="${guarantee.id}" name="guaranteeFormMap.id" id="guaranteeid">
				<section class="panel panel-default">
				<div class="panel-body" style="padding: 30px 0px 0px 200px;">
					<div class="form-group">
						<label class="col-sm-3 control-label">姓名</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" class="form-control checkacc"
								placeholder="请输入姓名" name="guaranteeFormMap.gname" id="gname"
								value="${guarantee.gname}">
						</div>
					</div>
					<div class="form-group" hidden>
						<label class="col-sm-3 control-label">车牌照号</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" class="form-control checkacc"
								placeholder="请输入车牌照号" name="guaranteeFormMap.cid" id="cid"
								value="${guarantee.cid}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">身份证号</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" class="form-control checkacc"
								placeholder="请输入身份证号" name="guaranteeFormMap.gidcard"
								id="gidcard" value="${guarantee.gidcard}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">性别</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" class="form-control" placeholder="请输入性别"
								name="guaranteeFormMap.gsex" id="gsex" value="${guarantee.gsex}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">手机号</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" class="form-control checkacc"
								placeholder="请输入手机号" name="guaranteeFormMap.gphone" id="gphone"
								value="${guarantee.gphone}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">地址</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" class="form-control checkacc"
								placeholder="请输入地址" name="guaranteeFormMap.gaddress"
								id="gaddress" value="${guarantee.gaddress}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">备注</label>
						<div class="col-sm-9">
							<textarea readonly="readonly" type="text" class="form-control checkacc"
								placeholder="请输入备注" name="guaranteeFormMap.gremark" id="gremark"
								style="width: 65%; resize: none">${guarantee.gremark}</textarea>
						</div>
					</div>
				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:40px;">
				<!-- <button type="button" class="btn btn-success btn-s-xs"
					id="guaranteeCookie">保存</button> -->
				</footer> </section>
			</form>
		</div>
		<!-- 营运信息 -->
		<div class="tab-pane fade" id="runinformation">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/runinformation/addEntity.shtml --%>">
				<input readonly="readonly" type="hidden" class="form-control checkacc"
					value="${runinformation.id}" name="runinformationFormMap.id"
					id="runinformationid">
				<section class="panel panel-default">
				<div class="panel-body panel--padding"
					style="padding: 30px 0px 0px 200px;">

					<div class="form-group" hidden>
						<label class="col-sm-3 control-label">车牌号</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" class="form-control checkacc"
								placeholder="请输入车牌号" name="runinformationFormMap.cid" id="cid"
								value="${runinformation.cid}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">营运证号</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" class="form-control checkacc"
								placeholder="请输入营运证号" name="runinformationFormMap.rserviceid"
								id="rserviceid" value="${runinformation.rserviceid}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">营运性质</label>
						<div class="col-sm-9">
							<textarea readonly="readonly" type="text" class="form-control checkacc"
								placeholder="请输入营运性质"
								name="runinformationFormMap.rservicenature" id="rservicenature"
								value="" style="width: 65%; resize: none">${runinformation.rservicenature}</textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">合约级别</label>
						<div class="col-sm-9">
							<textarea readonly="readonly" type="text" class="form-control" placeholder="请输入合约级别"
								name="runinformationFormMap.rcontractlevel" id="rcontractlevel"
								value="" style="width: 65%; resize: none">${runinformation.rcontractlevel}</textarea>
						</div>
					</div>
			<!-- 新加的  -->
					<div class="form-group">
						<label class="col-sm-3 control-label">合约初始日期</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" value="${runinformation.rstarttime}" class="form-control" placeholder="请输入合约初始日期"
								name="runinformationFormMap.rstarttime"
								id="rstarttime"></input>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">合约起始日期</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" class="form-control" placeholder="请输入合约起始日期"
								name="runinformationFormMap.rcontractstarttime"
								id="rcontractstarttime"
								value="${runinformation.rcontractstarttime}">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-3 control-label">合约终止日期</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" class="form-control" placeholder="请输入合约终止日期"
								name="runinformationFormMap.rcontractendtime"
								id="rcontractendtime" value="${runinformation.rcontractendtime}">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-3 control-label">保险方案</label>
						<div class="col-sm-9">
							<textarea readonly="readonly" type="text" class="form-control" placeholder="保险方案"
								name="runinformationFormMap.rinsuranceplan" id="rinsuranceplan"
								value="" style="width: 65%; resize: none">${runinformation.rinsuranceplan}</textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">所属公司</label>
						<div class="col-sm-9">
							<input readonly="readonly" type="text" class="form-control" placeholder="所属公司"
								name="runinformationFormMap.rcompany" id="rcompany"
								value="${runinformation.rcompany}">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label">备注</label>
						<div class="col-sm-9">
							<textarea readonly="readonly" type="text" class="form-control" placeholder="请输入备注"
								name="runinformationFormMap.rremark" id="rremark"
								value="" style="width: 65%; resize: none">${runinformation.rremark}</textarea>
						</div>
					</div>

				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:-1px;">
				<!-- <button type="button" class="btn btn-success btn-s-xs"
					id="runinformationCookie">保存</button> -->
				</footer> </section>
			</form>
		</div>
		<!-- 主业人员 -->
		<div class="tab-pane fade" id="mojorworks">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<input readonly="readonly" type="hidden" class="form-control checkacc"
					value="${majorworks.id}" name="mojorworksFormMap.id"
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
								<input readonly="readonly" type="text" class="form-control checkacc"
									placeholder="请输入姓名" name="mojorworksFormMap.mname" id="mname"
									value="${majorworks.mname}">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入性别"
									value="${majorworks.msex}" name="mojorworksFormMap.msex"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入身份证号"
									value="${majorworks.midcard}" name="mojorworksFormMap.midcard"
									id="midcard">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">出生日期</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入出生日期"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入准驾车型"
									value="${majorworks.mcartype}"
									name="mojorworksFormMap.mcartype" id="mcartype">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">初领驾驶证日期</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入初领驾驶证日期"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入主业卡号"
									value="${majorworks.mcardid}" name="mojorworksFormMap.mcardid"
									id="mcardid">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class=" control-label">从业资格证号</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入从业资格证号"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入初次发放时间"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入发证日期"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入截止日期"
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

				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:40px;">
				<!-- <button type="button" class="btn btn-success btn-s-xs"
					id="mojorworksCookie">保存</button> -->
				</footer> <section>
			</form>
		</div>
		<!-- 从业人员1 -->
		<div class="tab-pane fade" id="employee1">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<input readonly="readonly" type="hidden" class="form-control checkacc"
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
								<input readonly="readonly" type="hidden" class="form-control checkacc"
									placeholder="请输入车辆id" value="${employee1.cid}" name="employeeFormMap.cid" id="cid1">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">
								<!-- <label class="control-label">车辆id</label> -->
								<label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>
							</div>
							<div class="row">
								<!-- <input readonly="readonly" type="text" class="form-control checkacc"
								placeholder="请输入车辆id" name="employeeFormMap.cid" id="cid"> -->
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入姓名"
									value="${employee1.ename}" name="employeeFormMap.ename"
									id="ename1">
							</div>
						</div>

                        <div class="form-group col-sm-6">
							<div class="row">									
								<label class="control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							</div>
							<div class="row">								
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入性别"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入身份证号"
									value="${employee1.eidcard}" name="employeeFormMap.eidcard"
									id="eidcard1">

							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入出生日期"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入联系电话"
								    value="${employee1.etel}"
									name="employeeFormMap.etel" id="etel1">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">准驾车型</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入准驾车型"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入初领驾驶证日期"
									name="employeeFormMap.epapertime"
									value="${employee1.epapertime}" id="epapertime1">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业资格证号</label>
							</div>
							<div class="row">

								<input readonly="readonly" type="text" class="form-control" placeholder="请输入从业资格证号"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入初次发放时间"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入开始日期"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入截止日期"
									value="${employee1.ecardendtime}"
									name="employeeFormMap.ecardendtime" id="ecardendtime1">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入服务卡号"
									value="${employee1.eserviceid}"
									name="employeeFormMap.eServiceid" id="eserviceid1">
							</div>
						</div>
					</div>


					<!-- 第六行 -->
				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:102px;">
				<!-- <button type="button" class="btn btn-success btn-s-xs"
					id="employeeCookie1">保存</button> -->
				</footer> </section>
			</form>
		</div>
		<!-- 从业人员2 -->
		<div class="tab-pane fade" id="employee2">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<input readonly="readonly" type="hidden" class="form-control checkacc"
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
								<input readonly="readonly" type="hidden" value="${employee2.cid}" class="form-control checkacc"
									placeholder="请输入车辆id" name="employeeFormMap.cid" id="cid2">

							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">
								<!-- <label class="control-label">车辆id</label> -->
								<label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>
							</div>
							<div class="row">
								<!-- <input readonly="readonly" type="text" class="form-control checkacc"
								placeholder="请输入车辆id" name="employeeFormMap.cid" id="cid"> -->
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入姓名"
									value="${employee2.ename}" name="employeeFormMap.ename"
									id="ename2">
							</div>
						</div>
						
						<div class="form-group col-sm-6">
						    <div class="row">									
								<label class="control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							</div>
							<div class="row">								
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入性别"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入身份证号"
									value="${employee2.eidcard}" name="employeeFormMap.eidcard"
									id="eidcard2">

							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入出生日期"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入联系电话"
								    value="${employee2.etel}"
									name="employeeFormMap.etel" id="etel2">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">准驾车型</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入准驾车型"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入初领驾驶证日期"
									name="employeeFormMap.epapertime"
									value="${employee2.epapertime}" id="epapertime2">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业资格证号</label>
							</div>
							<div class="row">

								<input readonly="readonly" type="text" class="form-control" placeholder="请输入从业资格证号"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入初次发放时间"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入开始日期"
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
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入截止日期"
									value="${employee2.ecardendtime}"
									name="employeeFormMap.ecardendtime" id="ecardendtime2">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input readonly="readonly" type="text" class="form-control" placeholder="请输入服务卡号"
									value="${employee2.eserviceid}"
									name="employeeFormMap.eServiceid" id="eserviceid2">

							</div>
						</div>
					</div>


					<!-- 第六行 -->
				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:102px;">
				<!-- <button type="button" class="btn btn-success btn-s-xs"
					id="employeeCookie2">保存</button> -->
				</footer> </section>
			</form>
		</div>
		
					<!-- 图片 -->
		<div class="tab-pane fade" id="picture">
		<h4>车辆图片</h4>
			<form class="inpform" id="uploadForm" method="post" enctype="multipart/form-data" <%-- action="${ctx}/car/upload.shtml" --%> multipart="">
			<div id="detail2-img">	
			</div>
			
			<div id="img-follow">
			</div>
		</form>
	</div>
	</div>
	<script type="text/javascript">
		onloadurl();
		$(function(){
			var cbox = $.cookie("picid");
			var url = rootPath + '/car/selectPic.shtml?id=' + cbox;
			var data = CommnUtil.ajax(url, null, "json");
			for(var i=0; i<data.length; i++){
				var showImg = "<img style=\"margin-left:14px;\" src=" + "${ctx}/uploadFile/" + data[i].imgurl +" width='180' height='140' />";
				$('#detail2-img').append(showImg);
				
			}
			
		
			var cbox = $.cookie("picid");
			var url = rootPath + '/car/selectPicown.shtml?id=' + cbox;
			var data = CommnUtil.ajax(url, null, "json");
			for(var i=0; i<data.length; i++){
				var showImg = "<img style=\"margin-left:14px;\" src=" + "${ctx}/uploadFile/" + data[i].cophoto +" width='180' height='140' id='10'/>";
				$('#img22-follow').append(showImg);
			}
		});
	    
	</script>
	<script type="text/javascript"
		src="${ctx}/notebook/notebook_files/bootstrap-filestyle.min.js">
		
	</script>
</body>
</html>