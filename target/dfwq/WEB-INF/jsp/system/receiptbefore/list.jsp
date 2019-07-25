<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<script type="text/javascript" src="${pageContext.request.contextPath}/js/system/receiptbefore/list.js"></script>
	<div class="m-b-md">
		<form class="form-inline" role="form" id="searchForm"
			name="searchForm">
			<div class="form-group">
				<label class="control-label"> <span
					class="h4 font-thin v-middle">车&nbsp;&nbsp;&nbsp;&nbsp;主:</span></label> <input
					class="input-medium ui-autocomplete-input" id="acower"
					name="accidentFormMap.acower">
			</div>
			<a href="javascript:void(0)" class="btn btn-default" id="search">查询</a>
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
	<script >
	
	function showrs(obj) {
		var reredocumentid = $(obj).attr("id");
		//alert(reredocumentid);
		pageii = layer.open({
			title : "收款明细",
			type : 2,
			area : [ "930px", "85%" ],
			content : rootPath + '/receiptbefore/showrsUI.shtml?reredocumentid=' + reredocumentid
		});
	};

	</script>
