<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background-color:#fff">
<head>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<%@include file="/common/common.jspf"%>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/js/system/cookie/car_cookie.js"></script>
<script type="text/javascript" src="${ctx}/js/system/car/add.js"></script>
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
text-align:left;
display:block;
}
.form-horizontal .form-group {
margin-left:8px;
}
.row {
margin-right:20px;
}
#guarantee label, #runinformation label{
width:86px;
}
</style>
</head>
<body style="position: relative;">
<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<!-- 上面的标签选项卡 -->
	<ul id="myTab" class="nav nav-tabs" style="border: none;">
		<li class="active"><a href="#car" data-toggle="tab">车辆信息</a></li>
		<li id="caronwertab"><a href="#caronwer" data-toggle="tab" >车主</a></li>
		<li id="guaranteetab"><a href="#guarantee" data-toggle="tab">担保人</a></li>
		<li id="runinformationtab"><a href="#runinformation" data-toggle="tab">营运信息</a></li>
		<li id="mojorworkstab"><a href="#mojorworks" data-toggle="tab">主业人员</a></li>
		<li id="employeetab1"><a href="#employee1" data-toggle="tab">从业人员1</a></li>
		<li id="employeetab2"><a href="#employee2" data-toggle="tab">从业人员2</a></li>
		<li id="picturetab"><a href="#picture" data-toggle="tab">车辆图片</a></li>
	</ul>
	<form id="" name="" method="" action=""
		style="position: absolute; right: 17px; top: 0px;">
		<button type="button" class="btn btn-success btn-s-xs" id="submission">提交</button>
	</form>
<!-- 下面的内容 -->

	<div id="myTabContent" class="tab-content">
		
		<!-- 车辆信息 -->
		<div class="tab-pane fade<!--  in active -->" id="car">

			<form id="carform" name="form" class="form-horizontal" method="post"
				action="${ctx}/car/addEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
									<label class="control-label" style="display:block">车辆牌照</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入车辆牌照"
									name="carFormMap.cplateid" id="cplateid">
							</div>	
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
									<label class="control-label">车辆类型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入车辆类型"
									id="ctype" name="carFormMap.ctype">
							</div>
						</div>
					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
									<label class=" control-label">厂牌类型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入厂牌类型" name="carFormMap.ctradetype"
									id="ctradetype">
							</div>
						</div>
					
						<div class="form-group col-sm-6">
							<div class="row">
									<label class=" control-label">发动机号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入发动机号" name="carFormMap.cengineid"
									id="cengineid">
							</div>
						</div>						
					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">排量</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入排量" name="carFormMap.coutputvolume"
									id="coutputvolume">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">车架号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入车架号" name="carFormMap.cframeid" id="cframeid">
							</div>
						</div>
					</div>
					
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
									<label class=" control-label">购置证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入购置证号" name="carFormMap.cpurchaseid"
									id="cpurchaseid">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">车辆颜色</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入车辆颜色" name="carFormMap.ccolour" id="ccolour">
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
									placeholder="请输入车籍" name="carFormMap.cbook" id="cbook">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">登记日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入登记日期" name="carFormMap.crecordtime"
									id="crecordtime">
							</div>
						</div>
						
					</div>
					
					<!-- 第七行 -->
					<!-- <div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">					
								<label class=" control-label">车辆照片</label>
							</div>
							<div class="row">
								<input type="file" 
									placeholder="请输入车辆照片" name="carFormMap.cphoto" id="cphoto">
							</div>
						</div>
					</div> -->
					<!-- 第八行 -->
					<div class="" style="float: left; margin-left: 50px; margin-right: 15px;">
						<label class="control-label">备注</label>
					</div>
					<div class="" style="float: left;margin-left:50px;">
						<textarea class="form-control checkacc" placeholder="请输入备注"
							name="carFormMap.cremark" id="cremark" style="width: 729px;resize:none"></textarea>
					</div>

				</div>
				<footer class="panel-footer text-right bg-light lter">
				<button type="submit" class="btn btn-success btn-s-xs"
					id="carCookie">保存</button>
				</footer> </section>
			</form>
		</div>



		<!-- 车主 -->
		<div class="tab-pane fade" id="caronwer">

			<form id="caronwerorm" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/carowner/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					 name="carownerFormMap.id" id="carownerid">
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
										placeholder="请输入车牌号" name="carownerFormMap.cid" id="cid">
								</div>
							</div>

							<div class="row">
								<div class="row">
									<label class="control-label">姓名</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										style="width: 336px" placeholder="请输入姓名"
										name="carownerFormMap.coname" id="coname"
										>
								</div>
							</div>

							<div class="row">
								<div class="row">
									<label class="control-label">身份证号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										style="width: 336px" placeholder="请输入身份证号"
										name="carownerFormMap.coidcard" id="coidcard"
										>
								</div>
							</div>


							<!-- 第二行 -->

							<div class="row">
								<div class="row">

									<label class="control-label">性别</label>
								</div>
								<div class="row">
									<input type="text" class="form-control" placeholder="请输入性别"
										style="width: 336px" name="carownerFormMap.cosex" id="cosex"
										>
								</div>
							</div>

						</div>
						<!-- 左半面end -->
						<div class="col-sm-6">
						<div id="img-follow">
							</div>
						
						</div>
					</div>
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入出生日期"
									name="carownerFormMap.cobirthtime" id="cobirthtime"
									>
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
								<input type="text" class="form-control" placeholder="请输入手机"
									name="carownerFormMap.cophone" id="cophone"
									>
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">驾驶证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control"
									 placeholder="请输入驾驶证号"
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
								<input type="text" class="form-control" placeholder="请输入准驾车型"
									name="carownerFormMap.cocartype" id="cocartype"
									>
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">初领驾证</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入初领驾驶证日期"
									name="carownerFormMap.copapertime" id="copapertime"
									>
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
								<input type="text" class="form-control" placeholder="请输入地址"
									name="carownerFormMap.coaddress" id="coaddress"
									>
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入服务卡号"
									name="carownerFormMap.coserviceid" id="coserviceid"
									>
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
								<input type="text" class="form-control" placeholder="请输入服务卡姓名"
									name="carownerFormMap.coservicename" id="coservicename"
									>
							</div>
						</div>

						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业证开始时间</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入从业证开始时间"
									name="carownerFormMap.coreputationlevel" id="coreputationlevel"
									>
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
								<input type="text" class="form-control" placeholder="请输入从业资格证号"
									name="carownerFormMap.coworkcardid" id="coworkcardid"
									>
							</div>

						</div>
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label">从业证截止日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入从业证截止日期"
									name="carownerFormMap.cocardendtime" id="cocardendtime"
									>
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
						<textarea class="form-control checkacc" placeholder="请输入备注"
							name="carFormMap.cremark" id="cremark"
							style="width: 729px; resize: none"></textarea>
					</div>

				</div>
				<footer class="panel-footer text-right bg-light lter">
				<button type="button" class="btn btn-success btn-s-xs"
					id="caronwersubmit">保存</button>
				</footer> </section>
			</form>
		</div>

		<!-- 担保人 -->
		<div class="tab-pane fade" id="guarantee">

			<form id="guaranteeform" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/guarantee/addEntity.shtml --%>">
				<section class="panel panel-default">
				<div class="panel-body" style="padding: 30px 0px 0px 200px;">
					<div class="form-group">
						<label class="col-sm-3 control-label">姓名</label>
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
								placeholder="请输入身份证号" name="guaranteeFormMap.gidcard"
								id="gidcard">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">性别</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入性别"
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
								style="width: 65%;resize:none"></textarea>
						</div>
					</div>
				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:40px;">
				<button type="button" class="btn btn-success btn-s-xs" id="guaranteeCookie">保存</button>
				</footer> </section>
			</form>
		</div>
		<!-- 营运信息 -->
		<div class="tab-pane fade" id="runinformation">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/runinformation/addEntity.shtml --%>">
				<section class="panel panel-default">
				<div class="panel-body panel--padding"
					style="padding: 30px 0px 0px 200px;">

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
							<textarea type="text" class="form-control checkacc"
								placeholder="请输入营运性质"
								name="runinformationFormMap.rservicenature" id="rservicenature" style="width: 65%;resize:none"></textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">合约级别</label>
						<div class="col-sm-9">
							<textarea type="text" class="form-control" placeholder="请输入合约级别"
								name="runinformationFormMap.rcontractlevel" id="rcontractlevel" style="width: 65%;resize:none"></textarea>
						</div>
					</div>

					<!-- 新加的  -->
					<div class="form-group">
						<label class="col-sm-3 control-label">合约初始日期</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入合约初始日期"
								name="runinformationFormMap.rstarttime"
								id="rstarttime">
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
							<textarea type="text" class="form-control" placeholder="保险方案"
								name="runinformationFormMap.rinsuranceplan" id="rinsuranceplan" style="width: 65%;resize:none"></textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label">所属公司</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="所属公司"
								name="runinformationFormMap.rcompany" id="rcompany">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">备注</label>
						<div class="col-sm-9">
							<textarea type="text" class="form-control" placeholder="请输入备注"
								name="runinformationFormMap.rremark" id="rremark"
								value="${runinformation.rremark}" style="width: 65%; resize: none"></textarea>
						</div>
					</div>

				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:-1px;">
				<button type="button" class="btn btn-success btn-s-xs" id="runinformationCookie">保存</button>
				</footer> </section>
			</form>
		</div>
		<!-- 主业人员 -->
		<div class="tab-pane fade" id="mojorworks">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
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
									placeholder="请输入姓名" name="mojorworksFormMap.mname" id="mname">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入性别"
									name="mojorworksFormMap.msex" id="msex">
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
								<input type="text" class="form-control" placeholder="请输入身份证号"
									name="mojorworksFormMap.midcard" id="midcard">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入出生日期"
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
								<input type="text" class="form-control" placeholder="请输入准驾车型"
									name="mojorworksFormMap.mcartype" id="mcartype">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">初领驾驶证日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control"
									placeholder="请输入初领驾驶证日期" name="mojorworksFormMap.mpapertime"
									id="mpapertime">
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
								<input type="text" class="form-control" placeholder="请输入主业卡号"
									name="mojorworksFormMap.mcardid" id="mcardid">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">从业资格证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入从业资格证号"
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
								<input type="text" class="form-control" placeholder="请输入初次发放时间"
									name="mojorworksFormMap.mfirstcertificatetime"
									id="mfirstcertificatetime">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">发证日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入发证日期"
									name="mojorworksFormMap.mcertificatetime"
									id="mcertificatetime">
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
								<input type="text" class="form-control" placeholder="请输入截止日期"
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
				<button type="button" class="btn btn-success btn-s-xs" id="mojorworksCookie" >保存</button>
				</footer> <section>
			</form>
		</div>
		
		<!-- 从业人员1 -->
		<div class="tab-pane fade" id="employee1">
			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6" hidden>
								<div class="row">
								 <label class="control-label">车辆id</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
								placeholder="请输入车辆id" name="employeeFormMap.cid" id="cid1">
								</div>
						</div>
						
						<div class="form-group col-sm-6">
							<div class="row">									
								<label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>
							</div>
							<div class="row">								
								<input type="text" class="form-control" placeholder="请输入姓名"
									name="employeeFormMap.ename" id="ename1">
							</div>
						</div>
						
						<div class="form-group col-sm-6">
							<div class="row">									
								<label class="control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							</div>
							<div class="row">								
								<input type="text" class="form-control" placeholder="请输入性别"
									name="employeeFormMap.esex" id="esex1">
							</div>
						</div>
						</div>
						<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">身份证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入身份证号"
									name="employeeFormMap.eidcard" id="eidcard1">

							</div>
						</div>
					
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入出生日期"
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
								<input type="text" class="form-control" placeholder="请输入联系电话"
									name="employeeFormMap.etel" id="etel1">
							</div>
						</div>
						
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">准驾车型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入准驾车型"
									name="employeeFormMap.ecartype" id="ecartype1">

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
								<input type="text" class="form-control"
									placeholder="请输入初领驾驶证日期" name="employeeFormMap.epapertime"
									id="epapertime1">
							</div>
						</div>					
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">从业资格证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入从业资格证号"
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
								<input type="text" class="form-control" placeholder="请输入初次发放时间"
									name="employeeFormMap.efirstcertificatetime"
									id="efirstcertificatetime1">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">开始日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入开始日期"
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
								<input type="text" class="form-control" placeholder="请输入截止日期"
									name="employeeFormMap.ecardendtime" id="ecardendtime1">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入服务卡号"
									name="employeeFormMap.eserviceid" id="eserviceid1">
							</div>
						</div>
					</div>

					<!-- 第六行 -->
				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:102px;">
				<button type="button" class="btn btn-success btn-s-xs" id="employeeCookie1">保存</button>
				</footer> </section>
			</form>
		</div>
		
		<!-- 从业人员2 -->
		<div class="tab-pane fade" id="employee2">
			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6" hidden>
								<div class="row">
									 <label class="control-label">车辆id</label> 
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
								placeholder="请输入车辆id" name="employeeFormMap.cid" id="cid2"> 								
								</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">									
								<label class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>
							</div>
							<div class="row">								
								<input type="text" class="form-control" placeholder="请输入姓名"
									name="employeeFormMap.ename" id="ename2">
							</div>
						</div>
						
						<div class="form-group col-sm-6">
							<div class="row">									
								<label class="control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							</div>
							<div class="row">								
								<input type="text" class="form-control" placeholder="请输入性别"
									name="employeeFormMap.esex" id="esex2">
							</div>
						</div>
						</div>
						<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">身份证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入身份证号"
									name="employeeFormMap.eidcard" id="eidcard2">

							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入出生日期"
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
								<input type="text" class="form-control" placeholder="请输入联系电话"
									name="employeeFormMap.etel" id="etel2">
							</div>
						</div>
						
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">准驾车型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入准驾车型"
									name="employeeFormMap.ecartype" id="ecartype2">

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
								<input type="text" class="form-control"
									placeholder="请输入初领驾驶证日期" name="employeeFormMap.epapertime"
									id="epapertime2">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">从业资格证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入从业资格证号"
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
								<input type="text" class="form-control" placeholder="请输入初次发放时间"
									name="employeeFormMap.efirstcertificatetime"
									id="efirstcertificatetime2">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">开始日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入开始日期"
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
								<input type="text" class="form-control" placeholder="请输入截止日期"
									name="employeeFormMap.ecardendtime" id="ecardendtime2">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入服务卡号"
									name="employeeFormMap.eserviceid" id="eserviceid2">
							</div>
						</div>
					</div>

					<!-- 第六行 -->
				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:102px;">
				<button type="button" class="btn btn-success btn-s-xs" id="employeeCookie2">保存</button>
				</footer> </section>
			</form>
		</div>
		<!-- 图片 -->
		<div class="tab-pane fade" id="picture">
		<h4>车辆图片上传</h4>
			<form class="inpform" id="uploadForm" method="post" enctype="multipart/form-data" <%-- action="${ctx}/car/upload.shtml" --%> multipart="">
				<div id="detail-img">
					<input type="file" id="file" multiple="multiple" name="file" onchange="xmTanUploadImg(this)"/>
				</div>
			</form>
			<div id="img-follow2">
			</div>
		    	<div class="msg" style="display: none;"></div>
				<footer class="panel-footer text-right bg-light lter"
						style="margin-top:102px;">
					<button type="button" id="upload" class="btn btn-success btn-s-xs">上传</button>
					</footer>
			<form>
		</form>
	</div>

	</div>
	<script type="text/javascript">
		onloadurl();
		//显示选择的图片
	    function xmTanUploadImg(obj) {
			/* alert("asdasdasd"); */
			var fileInput = "<input type=’file' multiple='multiple' name='file' onchange='xmTanUploadImg(this)'/>";
			console.log(fileInput);
			/* $("#uploadForm").append(fileInput); */
			$('#detail-img').append('<input type="file" multiple="multiple" name="file" onchange="xmTanUploadImg(this)" class="detail-img"/>');
	        var fl = obj.files.length;
	        for (var i = 0; i < fl; i++) {
	            var file = obj.files[i];
	            //FileReader用来把文件读入内存，并且读取文件中的数据。
	            // FileReader接口提供了一个异步API，使用该API可以在浏览器主线程中异步访问文件系统，读取文件中的数据。
	            var reader = new FileReader();
	            //读取文件过程方法
	            reader.onload = function (e) {
	                //不太明白e.target.result代表什么（一大串数字）好像是图片转化为base64
	                var imgstr = '<img  style="width:77px;height:77px;" src="' + e.target.result + '"/>';
	                $("#img-follow2").append(
	                    "<div class=\"img\">" +
	                    "<div class=\"img-bg\">" +
	                    "" + imgstr + "" +
	                    "</div><button type=\"button\" onclick=\"delbtn(this)\" >删除</button>"
	                )
	            };
	            //读取文件内容，结果用data:url的字符串形式表示
	            reader.readAsDataURL(file);
	        }
	    };
	    
	    function showpic(obj) {
            var file = obj.files[0];
            //FileReader用来把文件读入内存，并且读取文件中的数据。
            // FileReader接口提供了一个异步API，使用该API可以在浏览器主线程中异步访问文件系统，读取文件中的数据。
            var reader = new FileReader();
            //读取文件过程方法
            reader.onload = function (e) {
                //不太明白e.target.result代表什么（一大串数字）好像是图片转化为base64
                var imgstr = '<img  style="width:200px;height:200px;" src="' + e.target.result + '"/>';
                $("div").remove(".img");
                $("#img-follow").append(
                    "<div class=\"img\">" +
                    "<div class=\"img-bg\">" +
                    "" + imgstr + "" 
                )
            };
            //读取文件内容，结果用data:url的字符串形式表示
            reader.readAsDataURL(file);
    };
	    /*删除功能*/
	    function delbtn(obj){
	    	/* alert("dsad"); */
	    	var _this = $(obj);
	    	_this.parents(".img").remove();
	    };
	    
		$("#upload").click(function(){
			var formData = new FormData($("#uploadForm")[0]);
			formData.append("cplateid", $("#cplateid").val());
			 $.ajax({
	                type: "post",
	                url: rootPath + '/car/upload.shtml',
	                data: formData,
	                async: false,
	                contentType: false,// jQuery不要去设置Content-Type请求头
	                processData: false,// jQuery不要去处理发送的数据
	                dataType : "json",
	                success: function (data) {
	                	if(data == "success"){
	            			layer.msg('上传成功!');
	            			} else {
	            				layer.msg('添加失败！');
	            			}
	                }
	            })
	 
	    });
		
		$("#caronwersubmit").click(function(){
			var date = new Date();

			$.cookie("coname", $("#coname").val(), {
				expires : date
			});
			$.cookie("coidcard", $("#coidcard").val(), {
				expires : date
			});
			$.cookie("cosex", $("#cosex").val(), {
				expires : date
			});
			$.cookie("cobirthtime", $("#cobirthtime").val(), {
				expires : date
			});
			$.cookie("cophone", $("#cophone").val(), {
				expires : date
			});
			$.cookie("cocartype", $("#cocartype").val(), {
				expires : date
			});
			$.cookie("copapertime", $("#copapertime").val(), {
				expires : date
			});
			$.cookie("coaddress", $("#coaddress").val(), {
				expires : date
			});
			$.cookie("coserviceid", $("#coserviceid").val(), {
				expires : date
			});
			$.cookie("coservicename", $("#coservicename").val(), {
				expires : date
			});
			$.cookie("coreputationlevel", $("#coreputationlevel").val(), {
				expires : date
			});
			$.cookie("coworkcardid", $("#coworkcardid").val(), {
				expires : date
			});
			$.cookie("cocardendtime", $("#cocardendtime").val(), {
				expires : date
			});
			$.cookie("cophoto", $("#cophoto").val(), {
				expires : date
			});
			$.cookie("cremark", $("#cremark").val(), {
				expires : date
			});
			
			var formData = new FormData();
			var picfile = $('#picfile').get(0).files[0];

			formData.append("picfile", picfile);
			formData.append("cplateid", $("#cplateid").val());
			 $.ajax({
	                type: "post",
	                url: rootPath + '/car/picupload.shtml',
	                data: formData,
	                async: false,
	                contentType: false,// jQuery不要去设置Content-Type请求头
	                processData: false,// jQuery不要去处理发送的数据
	                dataType : "json",
	                success: function (data) {
	                	if(data == "success"){
	                		layer.msg("上传成功");
	                	}else{
	                		layer.msg("上传失败");
	                	}
	                }
	            })
	 
	    });
	</script>
	<script type="text/javascript"
		src="${ctx}/notebook/notebook_files/bootstrap-filestyle.min.js">
		
	</script>
	
	<!-- 限制图片大小，上限为4M -->
<!-- <script type="text/javascript"> 
function verificationPicFile(file) {
    var fileSize = 0;
    var fileMaxSize = 1024*4;//1M
    var filePath = file.value;
    if(filePath){
        fileSize =file.files[0].size;
        var size = fileSize / 1024;
        if (size > fileMaxSize) {
            alert("文件大小不能大于4M！");
            file.value = "";
            return false;
        }else if (size <= 0) {
            alert("文件大小不能为0M！");
            file.value = "";
            return false;
        }
    }else{
        return false;
    }
}
</script> -->
</body>
</html>