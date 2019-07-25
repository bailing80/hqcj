<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/system/debt/list.js"></script>
<div class="m-b-md">
	<form class="form-inline" role="form" id="searchForm" name="searchForm">
		<div class="form-group">
			<label class="control-label"> <span
				class="h4 font-thin v-middle">车牌号:</span></label> <input
				class="input-medium ui-autocomplete-input" id="cplateid"
				name="debtFormMap.cplateid">
		</div>
		<div class="form-group">
			<label class="control-label"> <span
				class="h4 font-thin v-middle">车主姓名:</span></label> <input
				class="input-medium ui-autocomplete-input" id="coname"
				name="debtFormMap.coname">
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

<script type="text/javascript">
//周结的查询
	function paymentWeekly(obj) {
		var id = $(obj).attr("id");
		//获取收款区间
		var resummary = $(obj).parent().prev().html();
		//alert(resummary);
		//获取应收金额
		var rsablemoney = $(obj).parent().prev().prev().html();
		// 车主
		var coname = $(obj).parent().prev().prev().prev().html();
		//车牌号
		var cplateid = $(obj).parent().prev().prev().prev().prev().html();
		// alert(rsablemoney);
		if (id.indexOf("car") >= 0) {
			id = id.substr(3);
		} 
		pageii = layer.open({
			title : "周结交款",
			type : 2,
			area : [ "940px", "85%" ],
			content : rootPath + '/balance/payWeeklyMoney.shtml?id=' + id+
			"&rsablemoney="+rsablemoney+"&coname="+coname+"&cplateid="+cplateid+
			"&resummary="+resummary
		});
	}
	
</script>
