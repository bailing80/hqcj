<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/sim/import.js"></script>
<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
}

.col-sm-9 {
	width: 85%;
	float: left;
}
label[class^="btn btn-default"]{
	margin-top: -4px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="import" name="form" class="form-horizontal" method="post"
		action="${ctx}/importexcel/ImportExcel.shtml" enctype="multipart/form-data" >
		<section class="panel panel-default">
		<div class="panel-body">
			  <div class="line line-dashed line-lg pull-in"></div>
	
			  <div class="form-group">
			    <label class="col-xs-3 control-label" style="text-align: right;">导入Excel</label>
			    <div class="col-xs-9">
			    	<input type="file" id="" style="margin-top: 5px" name="upfile">	
			    	 <p class="help-block">导入SIM卡excel实例。</p>
		    	
			    </div>
			  </div>
			  <div class="line line-dashed line-lg pull-in"></div>
			
		</div>
		<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> 
		</section>
	</form>
	<script src="${ctx}/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>