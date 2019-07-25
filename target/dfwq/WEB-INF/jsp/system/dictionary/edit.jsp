<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/dictionary/edit.js"></script>

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
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/dictionary/editEntity.shtml">
		<input type="hidden" class="form-control checkacc"
			value="${dictionary.id}" name="dictionaryFormMap.id" id="id">
		<section class="panel panel-default">
		<div class="panel-body">

			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">字典类型</label>
				<div class="col-sm-9">
				<input type="text" class="form-control checkacc"
			value="${dictionary.dtypename}" name="dictionaryFormMap.dtypename" id="dtypename">
						<%-- <select id="dtypename" name="dictionaryFormMap.dtypename" class="form-control m-b"
							tabindex="-1" onchange="but(this)">
							<option value="1" <c:if test="${dictionary.dtypename eq 1 }">selected="selected"</c:if> >费用</option>
							<option value="2" <c:if test="${dictionary.dtypename eq 2 }">selected="selected"</c:if> >保险</option>
							<option value="3" <c:if test="${dictionary.dtypename eq 3 }">selected="selected"</c:if> >收据</option>
						</select> --%>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label">序&ensp;&ensp;&ensp;&ensp;号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control"
						placeholder="请输入序号名" value="${dictionary.dorder}"
						name="dictionaryFormMap.dorder" id="dorder">
				</div>
			</div>
		<!-- <input type="hidden" id="hide_did" name="dictionaryFormMap.id" value="1">
		<input type="hidden" id="hide_typename" name="dictionaryFormMap.dtypename" value="保险"> -->
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">备&ensp;&ensp;&ensp;&ensp;注</label>
				<div class="col-sm-9">
					<textarea type="text" class="form-control" placeholder="请输入字典备注"
						name="dictionaryFormMap.dremark" id="dremark" style="resize:none;">${dictionary.dremark}</textarea>
				</div>
			</div>
			</div>
			
			
		</div>
		<footer class="panel-footer text-right bg-light lter">
		<button type="submit" class="btn btn-success btn-s-xs">保存</button>
		</footer> </section>
	</form>
	<script type="text/javascript">
	onloadurl();
</script>
</body>
</html>