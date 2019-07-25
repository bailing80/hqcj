<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/system/transfer/carlist.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/system/car/listall.js"></script>
 --%>
<div class="m-b-md">
	<form class="form-inline" role="form" id="searchForm" name="searchForm">
		<div class="form-group">
			<label class="control-label"> <span
				class="h4 font-thin v-middle">车辆牌照:</span></label> <input
				class="input-medium ui-autocomplete-input" id="cplateid"
				name="carFormMap.cplateid">
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

<div id="callback_div" class="table-responsive" style="display: none;">
	<div id="paging_callback" class="pagclass"></div>
</div>
<script type="text/javascript">
	function showDialog(obj) {
		var id = $(obj).attr("id");
		
		if (id.indexOf("car") >= 0) {
			id = id.substr(3);
		} /*else if(id.indexOf("edit") >= 0){
				id = id.split("edit")[1]; 
				ajax_url += "editUI.shtml?tmx_thid=" + id;
			} else if(id.indexOf("delete") >= 0){
				id = id.split("delete")[1]; 
				ajax_url += "deleteUI.shtml?tmx_thid=" + id;
			} */
		alert(id);
			alert(rootPath + '/car/showAllUI.shtml?id=' + id);
		pageii = layer.open({
			title : "编辑",
			type : 2,
			area : [ "900px", "85%" ],
			content : rootPath + '/car/showAllUI.shtml?id=' + id
		});
	}
</script>
