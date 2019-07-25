<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/department/add.js"></script>
<style type="text/css">
#but button {
	margin-bottom: 5px;
	margin-right: 5px;
}
.col-sm-3 {
	width: 15%;
	float: left;
}

.col-sm-9 {
	width: 85%;
	float: left;
}

label[class^="btn btn-default"] {
	margin-top: -4px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
	action="${pageContext.request.contextPath}/department/addEntity.shtml">
	<section class="panel panel-default">
		<div class="panel-body">
			<div class="form-group">
				<label class="col-sm-3 control-label">机构名称</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入机构名称" name="departmentFormMap.dname" id="dname">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">机构类型</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入机构类型" name="departmentFormMap.dtype" id="dtype">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">机构编码</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入机构编码" name="departmentFormMap.dnumber" id="dnumber">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">上级机构</label>
				<div class="col-sm-9">
					<!-- <select id="dlastid" name="departmentFormMap.dlastid" class="form-control m-b"
						tabindex="-1">
					</select> -->
					
					<select id="dlastid" class="form-control checkacc" name="departmentFormMap.dlastid"></select>
					<input type="hidden" id = "lastid" class="form-control checkacc"  />
					
				</div>
			</div>
			<!-- <div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">菜单类型</label>
				<div class="col-sm-9">
						<select id="type" name="departmentFormMap.type" class="form-control m-b"
							tabindex="-1" onchange="but(this)">
							<option value="0">------  目录  ------</option>
							<option value="1">------  菜单  ------</option>
							<option value="2">------  按扭  ------</option>
						</select>
				</div>
			</div> 
			<div class="form-group" id="divbut" style="display: none;">
				<label class="col-sm-3 control-label">选择</label>
				<div class="col-sm-9">
				<div id="but" class="doc-buttons">
				</div><font color="red">可自定义填入html代码</font>
				</div>
			</div>-->
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">归属区域</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入归属区域" name="departmentFormMap.darea" id="darea">
				</div>
			</div>
		<!-- 	<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否隐藏</label>
				<div class="col-sm-9">
					<input id="gritter-light" type="checkbox" name="departmentFormMap.ishide" id="ishide" class="ace ace-switch ace-switch-5" value="1">
				</div>
			</div> -->
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">机构级别</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入机构级别" name="departmentFormMap.dclass" id="dclass">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">主要负责人</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入主要负责人" name="departmentFormMap.dmaindirector" id="dmaindirector">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">副负责人</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入副负责人" name="departmentFormMap.ddeputydirector" id="ddeputydirector">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">联系电话</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入联系电话" name="departmentFormMap.dtel" id="dtel">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">联系地址</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入联系地址" name="departmentFormMap.daddress" id="daddress">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">邮政编码</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入邮政编码" name="departmentFormMap.dpostalcode" id="dpostalcode">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">传真</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入传真" name="departmentFormMap.dfax" id="dfax">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">邮箱</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						placeholder="请输入邮箱" name="departmentFormMap.demail" id="demail">
				</div>
			</div>
			
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否可用</label>
				<div class="col-sm-9" class="form-control">
						<input type="radio" name="departmentFormMap.disuse" value="1" />是
						<input type="radio" name="departmentFormMap.disuse" value="0" style="margin-left:10px;"/>否
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3  control-label">备注</label>
				<div class="col-sm-9" class="form-control">
						<textarea class="form-control checkacc" placeholder="请输入备注"
					name="departmentFormMap.dremark" id="dremark" style="width: 625px; resize:none;"></textarea>
				</div>
			</div>
		</div>
		<footer class="panel-footer text-right bg-light lter">
		<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> 
	</section>
</form>
</body>
</html>