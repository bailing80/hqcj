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
<!-- 		<li id="guaranteetab"><a href="#guarantee" data-toggle="tab">担保人</a></li>
		<li id="runinformationtab"><a href="#runinformation"
			data-toggle="tab">营运信息</a></li>
		<li id="mojorworkstab"><a href="#mojorworks" data-toggle="tab">主业人员</a></li>
		<li id="employeetab"><a href="#employee1" data-toggle="tab">从业人员1</a></li>
		<li id="employeetab"><a href="#employee2" data-toggle="tab">从业人员2</a></li> -->
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
								value="${car.id}" name="comcarFormMap.id" id="id">
							
								<div class="row">
									<label class="control-label">车辆牌照</label>
								</div>
								<div class="row">
									<input type="text" class="form-control" readonly="readonly"
										name="comcarFormMap.ccplateid" id="ccplateid"
										value="${car.ccplateid }">
								</div>
							
							
								<div class="row">
									<label class="control-label">车辆类型</label>
								</div>
								<div class="row">
									<input type="text" class="form-control"  readonly="readonly"
										id="cctype" name="comcarFormMap.cctype" value="${car.cctype }">
								</div>
							
							<!-- 第二行 -->
							
								<div class="row">
									<label class=" control-label">厂牌类型</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										 readonly="readonly" name="comcarFormMap.cctradetype"
										id="cctradetype" value="${car.cctradetype }">
								</div>
							
							
								<div cass="row">
									<label class=" control-label">&nbsp;&nbsp;&nbsp;发动机号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										 readonly="readonly" name="comcarFormMap.ccengineid"
										id="ccengineid" value="${car.ccengineid }">
								</div>
							
							<!-- 第三行 -->
						

								<div class="row">
									<label class=" control-label">排量</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										 readonly="readonly" name="comcarFormMap.ccoutputvolume"
										id="ccoutputvolume" value="${car.ccoutputvolume }">
								</div>
							
							
								<div class="row">
									<label class=" control-label">车架号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										 readonly="readonly" name="comcarFormMap.ccframeid" id="ccframeid"
										value="${car.ccframeid }">
								</div>
							
							<!-- 第四行 -->
							

								<div class="row">
									<label class=" control-label">购置证号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										 readonly="readonly" name="comcarFormMap.ccpurchaseid"
										id="ccpurchaseid" value="${car.ccpurchaseid }">
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
									name="comcarFormMap.ccphoto" id="ccphoto">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">车辆颜色</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									 readonly="readonly" name="comcarFormMap.cccolour" id="cccolour"
									value="${car.cccolour }">
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
									 readonly="readonly" name="comcarFormMap.ccbook" id="ccbook"
									value="${car.ccbook }">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">登记日期</label>

							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									 readonly="readonly" name="comcarFormMap.ccrecordtime"
									id="ccrecordtime" value="${car.ccrecordtime }">

							</div>
						</div>

					</div>
					<div class=""
						style="float: left; margin-left: 50px; margin-right: 15px;">
						<label class="control-label">备注</label>
					</div>
					<div class="" style="float: left; margin-left: 50px;">
						<textarea class="form-control checkacc"  readonly="readonly"
							name="comcarFormMap.ccremark" id="ccremark"
							style="width: 729px; resize: none">
							${car.ccremark }
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
					value="${carowner.id}" name="comcarownerFormMap.id" id="comcarownerid">
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
										 readonly="readonly" name="comcarownerFormMap.cid" id="cid">
								</div>
							</div>

							<div class="row">
								<div class="row">
									<label class="control-label">姓名</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										style="width: 336px" readonly="readonly"
										name="comcarownerFormMap.comname" id="comname"
										value="${carowner.comname}">
								</div>
							</div>

							<div class="row">
								<div class="row">
									<label class="control-label">身份证号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										style="width: 336px" readonly="readonly"
										name="comcarownerFormMap.comidcard" id="comidcard"
										value="${carowner.comidcard}">
								</div>
							</div>


							<!-- 第二行 -->

							<div class="row">
								<div class="row">

									<label class="control-label">性别</label>
								</div>
								<div class="row">
									<input type="text" class="form-control" readonly="readonly"
										style="width: 336px" name="comcarownerFormMap.comsex" id="comsex"
										value="${carowner.comsex}">
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
									name="comcarownerFormMap.combirthtime" id="combirthtime"
									value="${carowner.combirthtime}">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">车主照片</label>
							</div>
							<div class="row">
								<input type="file" readonly="readonly"
									name="comcarownerFormMap.comphoto" id="comphoto">
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
									name="comcarownerFormMap.comphone" id="comphone"
									value="${carowner.comphone}">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">驾驶证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control"
									value="${carowner.comlicence}" readonly="readonly"
									name="comcarownerFormMap.comlicence" id="comlicence">
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
									name="comcarownerFormMap.comcartype" id="comcartype"
									value="${carowner.comcartype}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">初领驾证</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									name="comcarownerFormMap.compapertime" id="compapertime"
									value="${carowner.compapertime}">
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
									name="comcarownerFormMap.comaddress" id="comaddress"
									value="${carowner.comaddress}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									name="comcarownerFormMap.comserviceid" id="comserviceid"
									value="${carowner.comserviceid}">
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
									name="comcarownerFormMap.comservicename" id="comservicename"
									value="${carowner.comservicename}">
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">信誉等级</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									name="comcarownerFormMap.comreputationlevel" id="comreputationlevel"
									value="${carowner.comreputationlevel}">
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
									name="comcarownerFormMap.comworkcardid" id="comworkcardid"
									value="${carowner.comworkcardid}">
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业截止</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" readonly="readonly"
									name="comcarownerFormMap.comcardendtime" id="comcardendtime"
									value="${carowner.comcardendtime}">
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
							name="comcarownerFormMap.comremark" id="comremark"
							style="width: 729px; resize: none">${carowner.comremark}</textarea>
					</div>

				</div></section>
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