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
			colkey : "cplateid",
			name : "车牌照号",
			isSort:true,
		}, {
			colkey : "ctype",
			name : "车辆类型",
			isSort:true, //排序
			
		}, {
			colkey : "ctradetype",
			name : "厂牌类型",
			isSort:true,
		}, {
			colkey : "cengineid",
			name : "发动机号",
			isSort:true,
		}, {
			colkey : "coutputvolume",
			name : "排量",
			isSort:true,
		},{
			colkey : "cframeid",
			name : "车架号",
			isSort:true,
		},{
			colkey : "cpurchaseid",
			name : "购置证号",
			isSort:true,
		},{
			colkey : "ccolour",
			name : "车辆颜色",
			isSort:true,
		},{
			colkey : "crecordtime",
			name : "登记日期",
			isSort:true,
		},{
			colkey : "button",
			name : "操作",
			width:350
		} ],
		jsonUrl : rootPath + '/car/findByPage.shtml',
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
	
	$("#addCar").click("click", function() {
		addCar();
	});
	$("#editCar").click("click", function() {
		editCar();
	});
	$("#delCar").click("click", function() {
		delCar();
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

function editCar() {
	var cbox = grid.getSelectedCheckbox();
	$.cookie("cbox",cbox);
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑车辆信息",
		type : 2,
		area : [ "900px", "85%" ],
		content : rootPath + '/car/editUI.shtml?id=' + cbox
	});
}
function addCar() {
	pageii = layer.open({
		title : "新增车辆信息",
		type : 2,
		area : [ "900px", "85%" ],
		content : rootPath + '/car/addUI.shtml'
	});
}
function delCar() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/car/deleteEntity.shtml';
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