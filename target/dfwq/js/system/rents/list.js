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
			colkey : "firstmoney",
			name : "首付款",
			isSort:true, //排序
		},  {
			colkey : "daycount",
			name : "日租金总额",
			isSort:true, //排序
		},  {
			colkey : "daymoney",
			name : "日租金额",
			isSort:true, //排序
		}, {
			colkey : "remark",
			name : "备注",
			isSort:true,
		}],
		jsonUrl : rootPath + '/rents/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#addRents").click("click", function() {
		addRents();
	});
	$("#editRents").click("click", function() {
		editRents();
	});
	$("#delRents").click("click", function() {
		delRents();
	});
});

function editRents() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑日租金信息",
		type : 2,
		area : [ "610px", "68%" ],
		content : rootPath + '/rents/editUI.shtml?id=' + cbox
	});
}
function addRents() {
	pageii = layer.open({
		title : "新增日租金信息",
		type : 2,
		area : [ "610px", "68%" ],
		content : rootPath + '/rents/addUI.shtml'
	});
}
function delRents() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/rents/deleteEntity.shtml';
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