<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/dayreport/list.js"></script>
	<%
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String now = format.format(date);
	%>
	<style>
	.elementstyle {
    display: inline-block;
    width: 59px;
    text-align: right;
	}
	</style>
	<div class="m-b-md">
		<form class="form-inline" role="form" id="searchForm"
			name="searchForm">
			<div class="form-group">
				<label class="control-label"> <span
					class="h4 font-thin v-middle elementstyle ">日期:</span></label> <input
					class="input-medium ui-autocomplete-input" id="retimeofreceipt"
					name="receiptFormMap.retimeofreceipt" value="<%=now %>">
			</div>
			<a href="javascript:void(0)" class="btn btn-warning" id="callback_test">查 询</a>
			
			<br/>
			<br/>
			<div class="form-group">
				<label class="control-label"> <span
					class="h4 font-thin v-middle">总金额:</span></label>
					 <input class="input-medium ui-autocomplete-input" id="money" readonly="readonly">
			</div>
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
