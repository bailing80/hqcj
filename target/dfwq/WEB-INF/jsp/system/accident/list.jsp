<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/accident/list.js"></script>
	<div class="m-b-md">
		<form class="form-inline" role="form" id="searchForm"
			name="searchForm">
			<div class="form-group">
				<label class="control-label"> <span
					class="h4 font-thin v-middle">车牌照号:</span></label> <input
					class="input-medium ui-autocomplete-input" id="acower"
					name="accidentFormMap.acower">
			</div>
			<div class="form-group">
				<label class="control-label"> <span
					class="h4 font-thin v-middle">车&nbsp;&nbsp;&nbsp;&nbsp;主:</span></label> <input
					class="input-medium ui-autocomplete-input" id="acower"
					name="accidentFormMap.acower">
			</div>
			<div class="form-group">
				<label class="control-label"> <span
					class="h4 font-thin v-middle">年&nbsp;&nbsp;&nbsp;&nbsp;份:</span></label> <input
					class="input-medium ui-autocomplete-input" id="acower"
					name="accidentFormMap.acower">
			</div>
			<div class="form-group">
				<label class="control-label"> <span
					class="h4 font-thin v-middle">是否起诉:</span></label> 
					<select name="accidentFormMap.aciscourt">
						<option value="0">否</option>
						<option value="1">是</option>
					</select>
					<!-- <input type="radio" name="accidentFormMap.aciscourt" value="1" />是
						<input type="radio" name="accidentFormMap.aciscourt" value="0" style="margin-left:20px;"/>否 -->
			</div>
			<a href="javascript:void(0)" class="btn btn-default" id="search">查询</a>
			<a href="javascript:grid.exportData('/exportexcel/exportacc.shtml')" class="btn btn-info" id="exportexcel">导出excel</a>
		</form>
	</div>
	<header class="panel-heading">
	<div class="doc-buttons">
		<c:forEach items="${res}" var="key">
			
			${key.description}
			
		</c:forEach>
	</div>
	</header>
	<div class="table-responsive">
		<div id="paging" class="pagclass"></div>
	</div>
