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
<script type="text/javascript" src="${ctx}/js/system/contract/edit.js"></script>
<script type="text/javascript"
	src="${ctx}/js/system/cookie/contract_cookie.js"></script>
<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
	text-align: right;
}

.col-sm-9 {
	/* width: 85%; */
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
	/* width: 60px; */
	/* display: inline-block; */
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
.sty1 {
	width:80px;
	margin:0;
	padding:7px 0 0 0;
}

.sty2 {
	width:90px;
	margin:0;
	padding:7px 0 0 0;
}
.sty3 {
margin-left:15px;
}
.sty4 {
	padding:0px;
	margin:0px;
}
.sty5 {
margin-right:0px;
}

</style>
</head>
<body style="position: relative;">
	<!-- 上面的标签选项卡 -->
	<ul id="myTab" class="nav nav-tabs" style="border: none;">
		<li id="caronwertab"><a href="#newcaronwer" data-toggle="tab">新车主信息</a></li>
		<!-- <li id="caronwertab"><a href="#caronwer" data-toggle="tab">原车主信息</a></li> -->
		<li id="guaranteetab"><a href="#newguarantee" data-toggle="tab">新担保人信息</a></li>
		<!-- <li id="guaranteetab"><a href="#guarantee" data-toggle="tab">原担保人信息</a></li> -->
<!-- 	<li id="runinformationtab"><a href="#runinformation" data-toggle="tab">原营运信息</a></li> -->
		<li id="runinformationtab2"><a href="#newruninformation" data-toggle="tab">新营运信息</a></li>
		<li id="mojorworkstab"><a href="#mojorworks" data-toggle="tab">新主业人员</a></li>
		<li id="employeetab1"><a href="#employee1" data-toggle="tab">新从业人员1</a></li>
		<li id="employeetab2"><a href="#employee2" data-toggle="tab">新从业人员2</a></li>
	</ul>
	<form id="" name="" method="" action=""
		style="position: absolute; right: 17px; top: 0px;">
		<!-- <button type="submit" class="btn btn-success btn-s-xs"
			style="margin-right: 20px;" id="baocun1">保存</button> -->
		<button type="button" class="btn btn-success btn-s-xs" id="submission">提交</button>
	</form>

	<div id="myTabContent" class="tab-content">

		<!-- 新车主 -->
		<div class="tab-pane fade in active" id="newcaronwer">

			<form id="carownerform" name="form" class="form-horizontal"
				method="post" action="<%-- ${ctx}/transfer/editCarOwnerEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					readonly="readonly" value="${carowner.id}"
					name="carownerFormMap.id" id="newcarownerid">
				<input type="hidden" class="form-control checkacc" readonly="readonly"
					value="${car.id}" name="" id="newcid">
				<section class="panel panel-default">
			<div class="panel-body container-fluid panel--padding">
					<!-- 左面 -->
					<div class="row sty5" style="">

						<div class="form-group col-sm-6 sty3" style="margin-left: -0.5%">
							<div class="row sty3 sty5">
								<div class="row">
									<label class="control-label sty4">姓名</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										placeholder="请输入姓名" name="carownerFormMap.coname"
										id="newconame" style="width:386px;">
								</div>
							</div>
							<div class="row sty5">
								<div class="row">
									<label class="control-label sty4">性别</label>
								</div>
								<div class="row">
									<input type="text" class="form-control" placeholder="请输入性别"
										name="carownerFormMap.cosex" id="newcosex" style="width:386px;">
								</div>
							</div>
							<div class="row sty5">
								<div class="row">
									<label class="control-label sty4">身份证号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										placeholder="请输入身份证号" name="carownerFormMap.coidcard"
										id="newcoidcard" style="width:386px;">
								</div>
							</div>
						</div>
						<!-- 右面 -->
						<div class="col-sm-6" >
							<div id="img-follow">
							</div>	
						</div>
						</div>

					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label sty4">手机号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入手机号"
										name="carownerFormMap.cophone" id="newcophone">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">车主照片</label>
							</div>
						<div class="row">
								<input type="file" id="picfile" name="picfile" onchange="showpic(this)"/>
							</div>
					<!-- 		<div id="img-follow">
							</div>	 -->
						</div>
					</div>
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label sty4">驾驶证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入驾驶证号"
										name="carownerFormMap.clicence" id="newclicence">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label sty4">地址</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入地址"
										name="carownerFormMap.coaddress" id="newcoaddress">
							</div>
						</div>
					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label sty4">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入服务卡号"
										name="carownerFormMap.coserviceid" id="newcoserviceid">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label sty4">服务卡姓名</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入服务卡姓名"
										name="carownerFormMap.coservicename" id="newcoservicename">
							</div>
						</div>
					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label sty4">从业证开始时间</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入从业证开始时间"
										name="carownerFormMap.coreputationlevel"
										id="newcoreputationlevel">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label sty4">从业资格证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入从业资格证号"
										name="carownerFormMap.coworkcardid" id="newcoworkcardid">
							</div>
						</div>
					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label sty4">从业证截止日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control"
										placeholder="请输入从业证截止日期" name="carownerFormMap.cocardendtime"
										id="newcocardendtime">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label sty4">过户时间</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="过户时间"
										name="carownerFormMap.coremark" id="transfertime">
							</div>
						</div>
					</div>
					<!-- 第五行 -->
					<div class="row" style="">
					</div>
					<div class="row" style="">
						<div class="form-group col-sm-12">
							<div class="row">
								<label class=" control-label sty4">备注</label>
							</div>
							<div class="row">
								<textarea type="text" class="form-control" placeholder="请输入备注" 
										style="width:850px; resize:none;"
										name="carownerFormMap.coremark" id="newcoremark"></textarea>
							</div>
						</div>
					</div>
				</div>
				<footer class="panel-footer text-right bg-light lter">
				<button type="button" class="btn btn-success btn-s-xs" id="caronwersubmit" >保存</button>
				</footer> </section>
			</form>
		</div>
		
		<!-- 原车主信息 -->
		<div class="tab-pane fade" id="caronwer">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/carowner/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					readonly="readonly" value="${carowner.id}"
					name="transferFormMap.id" id="carownerid"> <input
					type="hidden" class="form-control checkacc" placeholder="请输入车牌号"
					name="carFormMap.cid" value="${car.cplateid}" id="cplateid">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 左面 -->
					<div class="row" style="">

						<div class="form-group col-sm-6 sty3" style="margin-left: -0.5%">
							<div class="row sty3 sty5">
								<div class="row">
									<label class="control-label sty4">姓名</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										placeholder="请输入姓名" name="transferFormMap.coname" id="coname"
										readonly="readonly" value="${carowner.coname}" style="width:386px;">
								</div>
							</div> 
							<div class="row sty5">
								<div class="row">
									<label class="control-label sty4">性别</label>
								</div>
								<div class="row">
									<input type="text" class="form-control" placeholder="请输入性别"
										name="transferFormMap.cosex" id="cosex" readonly="readonly"
										value="${carowner.cosex}" style="width:386px;">
								</div>
							</div>
							<div class="row sty5">
								<div class="row">
									<label class="control-label sty4">身份证号</label>
								</div>
								<div class="row">
									<input type="text" class="form-control checkacc"
										placeholder="请输入身份证号" name="transferFormMap.coidcard"
										id="coidcard" readonly="readonly" value="${carowner.coidcard}" style="width:386px;">
								</div>
							</div>
						</div>
						<!-- 右面 -->
						<div class="col-sm-6" style="padding:10px 0 0 45px;">车主的照片</div>
					</div>
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label sty4">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入出生日期"
										name="transferFormMap.cobirthtime" id="cobirthtime"
										readonly="readonly" value="${carowner.cobirthtime}">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label sty4">车主照片</label>
							</div>
							<div class="row">
								<input type="file" placeholder="请输入照片"
									value="${carowner.cophoto}"
									name="carownerFormMap.cophoto" id="cophoto">
							</div>
						</div>
					</div>
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label sty4">手机</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入手机"
										name="transferFormMap.cophone" id="cophone"
										readonly="readonly" value="${carowner.cophone}">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label sty4">驾驶证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control"
										readonly="readonly" value="${carowner.clicence}" placeholder="请输入驾驶证号"
										name="carownerFormMap.clicence" id="clicence">
							</div>
						</div>
					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label sty4">准驾车型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入准驾车型"
										name="transferFormMap.cocartype" id="cocartype"
										readonly="readonly" value="${carowner.cocartype}">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label sty4">初领驾驶证日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control"
										placeholder="请输入初领驾驶证日期" name="transferFormMap.copapertime"
										id="copapertime" readonly="readonly"
										value="${carowner.copapertime}">
							</div>
						</div>
					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label sty4">地址</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入地址"
										name="transferFormMap.coaddress" id="coaddress"
										readonly="readonly" value="${carowner.coaddress}">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label sty4">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入服务卡号"
										readonly="readonly" value="${carowner.coserviceid}"
										name="
										carownerFormMap.coserviceid" id="coserviceid">
							</div>
						</div>
					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label sty4">服务卡姓名</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入服务卡姓名"
										readonly="readonly" value="${carowner.coservicename}"
										name="
										carownerFormMap.coservicename" id="coservicename">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label sty4">从业证开始时间</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入从业证开始时间"
										readonly="readonly" value="${carowner.coreputationlevel}"
										name="
										carownerFormMap.coreputationlevel" id="coreputationlevel">
							</div>
						</div>
					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">

								<label class="control-label sty4">从业资格证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入从业资格证号"
										readonly="readonly" value="${carowner.coworkcardid}"
										name="
										carownerFormMap.coworkcardid" id="coworkcardid">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label sty4">从业证截止日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control"
										readonly="readonly" placeholder="请输入从业证截止日期" value="${carowner.cocardendtime}"
										name="carownerFormMap.cocardendtime" id="cocardendtime">
							</div>
						</div>
					</div>
					<div class="row" style="">
					</div>
					<div class="row" style="">
						<div class="form-group col-sm-12">
							<div class="row">
								<label class=" control-label sty4">备注</label>
							</div>
							<div class="row">
								<textarea class="form-control checkacc sty1-1" placeholder="请输入备注"
										readonly="readonly" name="carFormMap.cremark" id="cocremark" style="resize:none;width: 850px;">${carowner.coremark}</textarea>
							</div>
						</div>
					</div>
				</div>
				<footer class="panel-footer text-right bg-light lter">
				<!-- <button type="submit" class="btn btn-success btn-s-xs"
					id="caronwerCookie">保存</button> -->
				</footer> </section>
			</form>
		</div>

		<!-- 新担保人信息 -->
		<div class="tab-pane fade" id="newguarantee">

			<form id="guaranteeform" name="form" class="form-horizontal"
				method="post" action="<%-- ${ctx}/transfer/editGuaranteeEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					readonly="readonly" value="${guarantee.id}"
					name="guaranteeFormMap.id" id="newguaranteeid">
				<section class="panel panel-default">
				<div class="panel-body" style="padding: 30px 210px 0px 220px;">
					<div class="form-group">
						<label class="col-sm-3 control-label sty1">姓名</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入姓名" name="guaranteeFormMap.gname" id="newgname">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty1">性别</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入性别"
								name="guaranteeFormMap.gsex" id="newgsex">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty1">身份证号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入身份证号" name="guaranteeFormMap.gidcard"
								id="newgidcard">
						</div>
					</div>



					<div class="form-group">
						<label class="col-sm-3 control-label sty1">手机号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入手机号" name="guaranteeFormMap.gphone"
								id="newgphone">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty1">地址</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入地址" name="guaranteeFormMap.gaddress"
								id="newgaddress">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty1">备注</label>
						<div class="col-sm-9">
							<textarea type="text" class="form-control checkacc "
								placeholder="请输入备注" name="guaranteeFormMap.gremark"
								id="newgremark" style="resize:none"></textarea>
						</div>
					</div>
				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:40px;">
				<button type="button"  id="guaranteeCookie" class="btn btn-success btn-s-xs" id="">保存</button>
				</footer> </section>
			</form>
		</div>

		<!-- 原担保人 -->
		<div class="tab-pane fade" id="guarantee">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/guarantee/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					readonly="readonly" value="${guarantee.id}"
					name="transferFormMap.id" id="guaranteeid">
				<section class="panel panel-default">
				<div class="panel-body" style="padding: 30px 0px 0px 230px;">
					<div class="form-group">
						<label class="col-sm-3 control-label sty1">姓名</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入姓名" name="transferFormMap.gname" id="gname"
								readonly="readonly" value="${guarantee.gname}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty1">性别</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入账号描述"
								name="transferFormMap.gsex" id="gsex" readonly="readonly"
								value="${guarantee.gsex}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty1">身份证号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入roleKey" name="transferFormMap.gidcard"
								id="gidcard" readonly="readonly" value="${guarantee.gidcard}">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-3 control-label sty1">手机号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入手机号" name="transferFormMap.gphone" id="gphone"
								readonly="readonly" value="${guarantee.gphone}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty1">地址</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入地址" name="transferFormMap.gaddress"
								id="gaddress" readonly="readonly" value="${guarantee.gaddress}">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty1">备注</label>
						<div class="col-sm-9">
							<textarea class="form-control checkacc" placeholder="请输入备注" style="width:350px;resize:none"
										name="carFormMap.cremark" id="gremark">
							${guarantee.gremark}
							</textarea>
					</div>
				</div>
				<footer class="panel-footer text-right bg-light lter"
					style="margin-top:40px;">
				<!-- <button type="submit" class="btn btn-success btn-s-xs"
					id="guaranteeCookie">保存</button> -->
				</footer> </section>
			</form>
		</div>
		
		<!-- 新营运信息 -->
		<div class="tab-pane fade" id="newruninformation">

			<form id="runinformationform" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/runinformation/addEntity.shtml --%>">
				<section class="panel panel-default">
			<input type="hidden" class="form-control checkacc"
					readonly="readonly" value="${runinformation.id}"
					name="runinformationFormMap.id" id="newruninformationid">
				<div class="panel-body panel--padding"
					style="padding: 30px 220px 0px 230px;">

<!-- 					<div class="form-group" hidden>
						<label class="col-sm-3 control-label">车牌号</label>
						<div class="col-sm-9">
							<input type="hidden" class="form-control checkacc"
								placeholder="请输入车牌号" name="runinformationFormMap.cid" id="newcid">
						</div>
					</div> -->
					<div class="form-group">
						<label class="col-sm-3 control-label sty2">营运证号</label>
						<div class="col-sm-9">
							<input type="text" class="form-control checkacc"
								placeholder="请输入营运证号" name="runinformationFormMap.rserviceid"
								id="newrserviceid">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty2">营运性质</label>
						<div class="col-sm-9">
							<textarea type="text" class="form-control checkacc"
								placeholder="请输入营运性质"
								name="runinformationFormMap.rservicenature" id="newrservicenature" style="resize:none;"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty2">合约级别</label>
						<div class="col-sm-9">
							<textarea type="text" class="form-control" placeholder="请输入合约级别"
								name="runinformationFormMap.rcontractlevel" id="newrcontractlevel" style="resize:none;"></textarea>
						</div>
					</div>
					<!-- 新加的  -->
					<div class="form-group">
						<label class="col-sm-3 control-label sty2" >合约初始日期</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入合约初始日期"
								name="runinformationFormMap.rstarttime"
								id="rstarttime">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty2">合约起始日期</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入合约起始日期"
								name="runinformationFormMap.rcontractstarttime"
								id="newrcontractstarttime">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty2">合约终止日期</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="请输入合约终止日期"
								name="runinformationFormMap.rcontractendtime"
								id="newrcontractendtime">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty2">保险方案</label>
						<div class="col-sm-9">
							<textarea type="text" class="form-control" placeholder="保险方案"
								name="runinformationFormMap.rinsuranceplan" id="newrinsuranceplan" style="resize:none;"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label sty2">所属公司</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" placeholder="所属公司"
								name="runinformationFormMap.rcompany" id="newrcompany">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">备注</label>
						<div class="col-sm-9">
							<textarea type="text" class="form-control" placeholder="请输入备注"
								name="runinformationFormMap.rremark" id="rremark"
								value="${runinformation.rremark}" style="margin-left:14px; resize: none"></textarea>
						</div>
					</div>

				</div>
				<!-- <footer class="panel-footer text-right bg-light lter"
					style="margin-top:-1px;">
				<button type="button" class="btn btn-success btn-s-xs" id="runinformationCookie">保存</button>
				</footer> --> </section>
			</form>
		</div>
		
		<!-- 主业人员 -->
		<div class="tab-pane fade" id="mojorworks">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%-- ${ctx}/employee/addEntity.shtml --%>">
				<input type="hidden" class="form-control checkacc"
					value="${majorworks.id}" name="mojorworksFormMap.id"
					id="newmajorworksid">
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
				<input type="hidden" class="form-control checkacc"
					value="${employee1.id}" name="employeeFormMap.id" id="newemployeeid1">
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
						<!-- 第二行 -->
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
					<!-- 第三行 -->
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
					<!-- 第四行 -->
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
					<!-- 第五行 -->
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
					<!-- 第六行 -->
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
				<input type="hidden" class="form-control checkacc"
					value="${employee2.id}" name="employeeFormMap.id" id="newemployeeid2">
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
						<!-- 第二行 -->
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


	</div>
	<script type="text/javascript">
		onloadurl();
	    function showpic(obj) {
	        var file = obj.files[0];
	        //FileReader用来把文件读入内存，并且读取文件中的数据。
	        // FileReader接口提供了一个异步API，使用该API可以在浏览器主线程中异步访问文件系统，读取文件中的数据。
	        var reader = new FileReader();
	        //读取文件过程方法
	        reader.onload = function (e) {
	            //不太明白e.target.result代表什么（一大串数字）好像是图片转化为base64
	            var imgstr = '<img  style="width:180px;height:140px;margin-left:25px;" src="' + e.target.result + '"/>';
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

	$("#caronwersubmit").click(function(){
		var formData = new FormData();
		var picfile = $('#picfile').get(0).files[0];
		alert(picfile);

		formData.append("picfile", picfile);
		formData.append("cplateid", $("#cplateid").val());
		alert("1."+$("#cplateid").val());
		 $.ajax({
	            type: "post",
	            url: rootPath + '/contract/picupload.shtml',
	            data: formData,
	            async: false,
	            contentType: false,// jQuery不要去设置Content-Type请求头
	            processData: false,// jQuery不要去处理发送的数据
	            dataType : "json",
	            success: function (data) {
	            	if(data == "success"){
	            		layer.msg("保存成功");
	            	}else{
	            		layer.msg("保存失败");
	            	}
	            }
	        })
	});
	</script>
	<script type="text/javascript"
		src="${ctx}/notebook/notebook_files/bootstrap-filestyle.min.js">
		
	</script>
</body>
</html>