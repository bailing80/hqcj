var pageii = null;
var grid = null;
$(function() {
//	alert("daasd");
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : "50px",
			hide : true
		},{
			colkey : "cplateid",
			name : "车牌照号"
		},{
			colkey : "iinsurancenumber",
			name : "保险编号"
		}, {
			colkey : "iStronginsuranceid",
			name : "交强险单号",
		}, {
			colkey : "iCommercialinsuranceid",
			name : "商业险单号"
		}, {
			colkey : "iCarrierinsuranceid",
			name : "保险公司"
		} , {
			colkey : "iinsurancecompany",
			name : "保险公司"
		}, {
			colkey : "iinsurancetype",
			name : "保险类型"
		}, {
			colkey : "iinsurancesum",
			name : "投保金额"
		}, {
			colkey : "iinsurancestarttime",
			name : "开始时间"
		}, {
			colkey : "iinsuranceendtime",
			name : "截止时间"
		}, {
			colkey : "iInsurancescheme",
			name : "保险方案"
		}, {
			colkey : "iremark",
			name : "备注"
		}],
		jsonUrl : rootPath + '/insurance/findByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addInsurance").click("click", function() {
		addInsurance();
	});
	$("#editInsurance").click("click", function() {
		editInsurance();
	});
	$("#delInsurance").click("click", function() {
		delInsurance();
	});
});
function editInsurance() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑保险信息",
		type : 2,
		area : [ "600px", "60%" ],
		content : rootPath + '/insurance/editUI.shtml?id=' + cbox
	});
}
function addInsurance() {
	pageii = layer.open({
		title : "新增保险信息",
		type : 2,
		area : [ "600px", "60%" ],
		content : rootPath + '/insurance/addUI.shtml'
	});
}
function delInsurance() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/insurance/deleteEntity.shtml';
		var s = CommnUtil.ajax(url, {
			ids : cbox.join(",")
		}, "json");
		if (s == "success") {
			layer.msg('删除成功');
			grid.loadData();
		} else {
			layer.msg('删除失败');
		}
	});
}
