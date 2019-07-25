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
<script type="text/javascript" src="${ctx}/js/system/car/add.js"></script>
<script type="text/javascript"
	src="${ctx}/js/system/cookie/car_cookie.js"></script>
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
	width: 60px;
	display: inline-block;
	text-align: justify;
	text-align-last: justify;
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
	text-align: justify;
	text-align-last: justify;
	padding: 0px;
}

.panel--padding {
	padding: 30px;
}
</style>
</head>
<body style="position: relative;">
	<!-- 上面的标签选项卡 -->
	<ul id="myTab" class="nav nav-tabs" style="border: none;">
		<li class="active"><a href="#car" data-toggle="tab">车辆信息</a></li>
		<li id="caronwertab"><a href="#caronwer" data-toggle="tab" >车主</a></li>
		<li><a href="#guarantee" data-toggle="tab">担保人</a></li>
		<li><a href="#runinformation" data-toggle="tab">营运信息</a></li>
		<li><a href="#isurance" data-toggle="tab">保险</a></li>
		<li><a href="#mojorworks" data-toggle="tab">主业人员</a></li>
		<li><a href="#employee" data-toggle="tab">从业人员</a></li>
	</ul>
	<form id="" name="" method="" action=""
		style="position: absolute; right: 17px; top: 0px;">
		<button type="submit" class="btn btn-success btn-s-xs"
			style="margin-right: 20px;" id="baocun1">保存</button>
		<button type="submit" class="btn btn-success btn-s-xs" id="submission">提交</button>
	</form>



	<div id="myTabContent" class="tab-content">
		<!-- 第一个 -->
		<div class="tab-pane fade in active" id="car">

			<form id="form1" name="form" class="form-horizontal" method="post"
				action="${ctx}/car/addEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">车辆牌照</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入车辆牌照"
										name="carFormMap.cplateid" id="cplateid">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">车辆类型</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入车辆类型"
										id="ctype" name="carFormMap.ctype">
								</div>
							</div>
						</div>
					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">厂牌类型</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入厂牌类型" name="carFormMap.ctradetype"
										id="ctradetype">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">发动机号</label>

								</div>
								<div class="col-sm-9">

									<input type="text" class="form-control checkacc"
										placeholder="请输入发动机号" name="carFormMap.cengineid"
										id="cengineid">
								</div>
							</div>
						</div>
					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">排量</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入排量" name="carFormMap.coutputvolume"
										id="coutputvolume">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">车架号</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入车架号" name="carFormMap.cframeid" id="cframeid">

								</div>
							</div>
						</div>
					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">购置证号</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入购置证号" name="carFormMap.cpurchaseid"
										id="cpurchaseid">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">车辆颜色</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入车辆颜色" name="carFormMap.ccolour" id="ccolour">

								</div>
							</div>
						</div>
					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">车籍</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入车籍" name="carFormMap.cbook" id="cbook">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">登记日期</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入登记日期" name="carFormMap.crecordtime"
										id="crecordtime">

								</div>
							</div>
						</div>
					</div>
					<!-- 第六行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">是否废止</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入是否废止" name="carFormMap.cisabolish"
										id="cisabolish">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">废止时间</label>

								</div>
								<div class="col-sm-9">

									<input type="text" class="form-control checkacc"
										placeholder="请输入废止时间" name="carFormMap.cabolishtime"
										id="cabolishtime">
								</div>
							</div>
						</div>
					</div>
					<!-- 第七行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">车辆照片</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入车辆照片" name="carFormMap.cphoto" id="cphoto">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">是否问题车辆</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入是否问题车辆" name="carFormMap.ciserror"
										id="ciserror">

								</div>
							</div>
						</div>
					</div>
					<!-- 第八行 -->


					<div class=""
						style="float: left; margin-left: 34px; margin-right: 15px;">
						<label class="control-label">备注</label>
					</div>
					<div class="" style="float: left;">
						<textarea class="form-control checkacc" placeholder="请输入备注"
							name="carFormMap.cremark" id="cremark" style="width: 758px;">
							</textarea>
					</div>

				</div>
				<footer class="panel-footer text-right bg-light lter">
				<button type="submit" class="btn btn-success btn-s-xs"
					id="carCookie">保存</button>
				</footer> </section>
			</form>
		</div>


		<%-- <script type="text/javascript" src="${ctx}/js/system/caronwer/add.js"></script> --%>
		<!-- 第二个 -->
		<div class="tab-pane fade" id="caronwer">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="${ctx}/carowner/addEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6" hidden>
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">车牌号</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入车牌号" name="carownerFormMap.cid" id="cid">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">姓名</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入姓名" name="carownerFormMap.coname" id="coname">
								</div>
							</div>
						</div>
					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">身份证号</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入身份证号" name="carownerFormMap.coidcard"
										id="coidcard">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">性别</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入性别"
										name="carownerFormMap.cosex" id="cosex">
								</div>
							</div>
						</div>
					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">出生日期</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入出生日期"
										name="carownerFormMap.cobirthtime" id="cobirthtime">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">手机</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入手机"
										name="carownerFormMap.cophone" id="cophone">
								</div>
							</div>
						</div>
					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">准驾车型</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入准驾车型"
										name="carownerFormMap.cocartype" id="cocartype">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">初领驾证</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control"
										placeholder="请输入初领驾驶证日期" name="carownerFormMap.copapertime"
										id="copapertime">
								</div>
							</div>
						</div>
					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">地址</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入地址"
										name="carownerFormMap.coaddress" id="coaddress">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">服务卡号</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入服务卡号"
										name="carownerFormMap.coserviceid" id="coserviceid">
								</div>
							</div>
						</div>
					</div>
					<!-- 第六行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">服务卡名</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入服务卡姓名"
										name="carownerFormMap.coservicename" id="coservicename">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">从业证开始时间</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入服务从业证开始时间"
										name="carownerFormMap.coreputationlevel"
										id="coreputationlevel">
								</div>
							</div>
						</div>
					</div>
					<!-- 第七行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">资格证号</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入从业资格证号"
										name="carownerFormMap.coworkcardid" id="coworkcardid">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">从业截止</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control"
										placeholder="请输入从业证截止日期" name="carownerFormMap.cocardendtime"
										id="cocardendtime">
								</div>
							</div>
						</div>
					</div>
					<!-- 第八行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">照片</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入照片"
										name="carownerFormMap.cophoto" id="cophoto">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col"></div>
								<div class="col-sm-9"></div>
							</div>
						</div>
					</div>
					<!--  -->
					<div class=""
						style="float: left; margin-left: 34px; margin-right: 15px;">
						<label class="control-label">备注</label>
					</div>
					<div class="" style="float: left;">
						<textarea class="form-control checkacc" placeholder="请输入备注"
							name="carFormMap.cremark" id="cremark" style="width: 758px;">
							</textarea>
					</div>

				</div>
				<footer class="panel-footer text-right bg-light lter">
				<button type="submit" class="btn btn-success btn-s-xs">保存</button>
				</footer> </section>
			</form>
		</div>

		<%-- 	<script type="text/javascript" src="${ctx}/js/system/guarantee/add.js"></script> --%>
		<!-- 第三个 -->
		<div class="tab-pane fade" id="guarantee">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="${ctx}/guarantee/addEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body" style="padding: 30px 0px 0px 230px;">
					<div class="form-group">
						<label class="col-sm-3 control-label" style="width: 60px;">姓名</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入姓名" name="guaranteeFormMap.gname" id="gname">
						</div>
					</div>
					<div class="form-group" hidden>
						<label class="col-sm-3 control-label">车牌照号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入车牌照号" name="guaranteeFormMap.cid" id="cid">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">身份证号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入roleKey" name="guaranteeFormMap.gidcard"
								id="gidcard">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">性别</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入账号描述"
								name="guaranteeFormMap.gsex" id="gsex">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">手机号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入手机号" name="guaranteeFormMap.gphone" id="gphone">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">地址</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入地址" name="guaranteeFormMap.gaddress"
								id="gaddress">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">备注</label>
						<div class="col-sm-9">
							<textarea type="text" class="form-control checkacc"
								placeholder="请输入备注" name="guaranteeFormMap.gremark" id="gremark"
								style="width: 65%;">
							</textarea>
						</div>
					</div>
				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:40px;">
				<button type="submit" class="btn btn-success btn-s-xs">保存</button>
				</footer> </section>
			</form>
		</div>
		<!-- 第四个 -->
		<div class="tab-pane fade" id="runinformation">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="${ctx}/runinformation/addEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body panel--padding"
					style="padding: 30px 0px 0px 230px;">

					<div class="form-group" hidden>
						<label class="col-sm-3 control-label">车牌号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入车牌号" name="runinformationFormMap.cid" id="cid">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">营运证号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入营运证号" name="runinformationFormMap.rserviceid"
								id="rserviceid">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">营运性质</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入营运性质"
								name="runinformationFormMap.rservicenature" id="rservicenature">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">合约级别</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入合约级别"
								name="runinformationFormMap.rcontractlevel" id="rcontractlevel">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-3 control-label">合约起始日期</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入合约起始日期"
								name="runinformationFormMap.rcontractstarttime"
								id="rcontractstarttime">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-3 control-label">合约终止日期</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入合约终止日期"
								name="runinformationFormMap.rcontractendtime"
								id="rcontractendtime">
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-3 control-label">保险方案</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="保险方案"
								name="runinformationFormMap.rinsuranceplan" id="rinsuranceplan">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">所属公司</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="所属公司"
								name="runinformationFormMap.rcompany" id="rcompany">
						</div>
					</div>

				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:-1px;">
				<button type="submit" class="btn btn-success btn-s-xs">保存</button>
				</footer> </section>
			</form>
		</div>
		<!-- 第五个 -->
		<div class="tab-pane fade" id="mojorworks">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="${ctx}/employee/addEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control checkacc"
										placeholder="请输入姓名" name="mojorworksFormMap.mname" id="mname">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">身份证号</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入身份证号"
										name="mojorworksFormMap.midcard" id="midcard">
								</div>
							</div>
						</div>
					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">性别</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入性别"
										name="mojorworksFormMap.msex" id="msex">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">出生日期</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入出生日期"
										name="mojorworksFormMap.mbirthtime" id="mbirthtime">
								</div>
							</div>
						</div>
					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">准驾车型</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入准驾车型"
										name="mojorworksFormMap.mcartype" id="mcartype">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">初领驾驶证日期</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control"
										placeholder="请输入初领驾驶证日期" name="mojorworksFormMap.mpapertime"
										id="mpapertime">
								</div>
							</div>
						</div>
					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">主业卡号</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入主业卡号"
										name="mojorworksFormMap.mcardid" id="mcardid">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">从业资格证号</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入从业资格证号"
										name="mojorworksFormMap.mworkcardid" id="mworkcardid">
								</div>
							</div>
						</div>
					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">初次发放时间</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入初次发放时间"
										name="mojorworksFormMap.mfirstcertificatetime"
										id="mfirstcertificatetime">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class=" control-label">发证日期</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入发证日期"
										name="mojorworksFormMap.mcertificatetime"
										id="mcertificatetime">
								</div>
							</div>
						</div>
					</div>
					<!-- 第六行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">截止日期</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入截止日期"
										name="mojorworksFormMap.mcardendtime" id="mcardendtime">
								</div>
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
				<button type="submit" class="btn btn-success btn-s-xs">保存</button>
				</footer> <section>
			</form>
		</div>

		<!-- 第六个 -->
		<div class="tab-pane fade" id="isurance">
			<form id="form" name="form" class="form-horizontal" method="post"
				action="${ctx}/isurance/addEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<!-- <label class="control-label">车辆id</label> -->
									<label class="control-label">车牌照号</label>
								</div>
								<div class="col-sm-9">
									<!-- <input type="text" class="form-control checkacc"
								placeholder="请输入车辆id" name="isuranceFormMap.cid" id="cid"> -->
									<input type="text" class="form-control checkacc"
										placeholder="请输入车牌照号" name="isuranceFormMap.ilicenceplateid"
										id="ilicenceplateid">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">交强险单号</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入交强险单号"
										name="isuranceFormMap.iStronginsuranceid"
										id="iStronginsuranceid">
								</div>
							</div>
						</div>
					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">商业险单号</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入商业险单号"
										name="isuranceFormMap.iCommercialinsuranceid"
										id="iCommercialinsuranceid">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">承运人险单号</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入承运人险单号"
										name="isuranceFormMap.iCarrierinsuranceid"
										id="iCarrierinsuranceid">
								</div>
							</div>
						</div>
					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">保险公司</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入保险公司"
										name="isuranceFormMap.iinsurancecompany"
										id="iinsurancecompany">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">保险类型</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入保险类型"
										name="isuranceFormMap.iinsurancetype" id="iinsurancetype">
								</div>
							</div>
						</div>
					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">投保金额</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入投保金额"
										name="isuranceFormMap.iinsurancesum" id="iinsurancesum">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">开始时间</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入开始时间"
										name="isuranceFormMap.iinsurancestarttime"
										id="iinsurancestarttime">
								</div>
							</div>
						</div>
					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">截止时间</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入截止时间"
										name="isuranceFormMap.iinsuranceendtime"
										id="iinsuranceendtime">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">保险方案</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入开始时间"
										name="isuranceFormMap.iinsurancestarttime"
										id="iinsurancestarttime">
								</div>
							</div>
						</div>
					</div>

					<!-- 第六行 -->
					<div class=""
						style="float: left; margin-left: 34px; margin-right: 15px;">
						<label class="control-label">备注</label>
					</div>
					<div class="" style="float: left;">
						<textarea class="form-control checkacc" placeholder="请输入备注"
							name="carFormMap.cremark" id="cremark" style="width: 766px;">
							</textarea>
					</div>

				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:48px;">
				<button type="submit" class="btn btn-success btn-s-xs"
					id="car_cookie_isurance">保存</button>
				</footer> </section>
			</form>
		</div>
		<!-- 第七个 -->
		<div class="tab-pane fade" id="employee">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="${ctx}/employee/addEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<!-- <label class="control-label">车辆id</label> -->
									<label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>
								</div>
								<div class="col-sm-9">
									<!-- <input type="text" class="form-control checkacc"
								placeholder="请输入车辆id" name="employeeFormMap.cid" id="cid"> -->
									<input type="text" class="form-control" placeholder="请输入身份证号"
										name="employeeFormMap.eidcard" id="eidcard">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">身份证号</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入身份证号"
										name="employeeFormMap.eidcard" id="eidcard">

								</div>
							</div>
						</div>
					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">出生日期</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入出生日期"
										name="employeeFormMap.ebirthtime" id="ebirthtime">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">准驾车型</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入准驾车型"
										name="employeeFormMap.ecartype" id="ecartype">

								</div>
							</div>
						</div>
					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">初领驾驶证日期</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control"
										placeholder="请输入初领驾驶证日期" name="employeeFormMap.epapertime"
										id="epapertime">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">从业资格证号</label>
								</div>
								<div class="col-sm-9">

									<input type="text" class="form-control" placeholder="请输入从业资格证号"
										name="employeeFormMap.eworkcardid" id="eworkcardid">
								</div>
							</div>
						</div>
					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">初次发放时间</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入初次发放时间"
										name="employeeFormMap.efirstcertificatetime"
										id="efirstcertificatetime">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">发证日期</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入发证日期"
										name="employeeFormMap.ecertificatetime" id="ecertificatetime">

								</div>
							</div>
						</div>
					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">截止日期</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入截止日期"
										name="employeeFormMap.ecardendtime" id="ecardendtime">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">服务卡号</label>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="请输入服务卡号"
										name="employeeFormMap.eServiceid" id="eServiceid">

								</div>
							</div>
						</div>
					</div>

					<!-- 第六行 -->
				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:102px;">
				<button type="submit" class="btn btn-success btn-s-xs">保存</button>
				</footer> </section>
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