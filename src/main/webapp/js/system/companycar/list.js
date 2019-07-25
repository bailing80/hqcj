var pageii = null;
var grid = null;
$(function() {
	
	grid = lyGrid({
		pagId : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			hide : true,
			isSort:true,
		}, {
			colkey : "ccplateid",
			name : "车牌照号",
			isSort:true,
		}, {
			colkey : "cctype",
			name : "车辆类型",
			
		}, {
			colkey : "cctradetype",
			name : "厂牌类型",
		}, {
			colkey : "ccengineid",
			name : "发动机号",
		}, {
			colkey : "ccoutputvolume",
			name : "排量",
		},{
			colkey : "ccframeid",
			name : "车架号",
		},{
			colkey : "ccpurchaseid",
			name : "购置证号",
		},{
			colkey : "cccolour",
			name : "车辆颜色",
		},{
			colkey : "ccrecordtime",
			name : "登记日期",
		},{
			colkey : "cbutton",
			name : "操作",
		} ],
		jsonUrl : rootPath + '/companycar/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
//		alert(data);
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#addCompanycar").click("click", function() {
		addCompanycar();
	});
	$("#editCompanycar").click("click", function() {
		editCompanycar();
	});
	$("#delCompanycar").click("click", function() {
		delCompanycar();
	});
	$("#exitCar").click("click", function() {
		exitCar();
	});
	$("#errorCar").click("click", function() {
		errorCar();
	});
	
	
	
});

function errorCar() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "此车辆有问题",
		type : 2,
		area : [ "900px", "50%" ],
		content : rootPath + '/car/errorUI.shtml?id=' + cbox
	});
}

function exitCar() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "废止此车辆",
		type : 2,
		area : [ "900px", "30%" ],
		content : rootPath + '/car/exitUI.shtml?id=' + cbox
	});
}

function editCompanycar() {
	var cbox = grid.getSelectedCheckbox();
	$.cookie("cbox",cbox);
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑公司车辆信息",
		type : 2,
		area : [ "900px", "85%" ],
		content : rootPath + '/companycar/editUI.shtml?id=' + cbox
	});
}
function addCompanycar() {
	pageii = layer.open({
		title : "新增公司车辆信息",
		type : 2,
		area : [ "900px", "85%" ],
		content : rootPath + '/companycar/addUI.shtml'
	});
}
function delCompanycar() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/companycar/deleteEntity.shtml';
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