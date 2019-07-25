var pageii = null;
var grid = null;
$(function() {
	
	grid = lyGrid({
		pagId : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			hide : true
		}, {
			colkey : "dtypename",
			name : "字典类型",
			isSort:true,
		}, {
			colkey : "dremark",
			name : "备注"
		}, {
			colkey : "dorder",
			name : "序号",
			isSort:true,
		}],
		jsonUrl : rootPath + '/dictionary/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#addDictionary").click("click", function() {
		addDictionary();
	});
	$("#editDictionary").click("click", function() {
		editDictionary();
	});
	$("#delDictionary").click("click", function() {
		delDictionary();
	});
});

function editDictionary() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑字典主表信息",
		type : 2,
		area : [ "650px", "48%" ],
		content : rootPath + '/dictionary/editUI.shtml?id=' + cbox
	});
}
function addDictionary() {
	pageii = layer.open({
		title : "新增字典主表信息",
		type : 2,
		area : [ "650px", "48%" ],
		content : rootPath + '/dictionary/addUI.shtml'
	});
}
function delDictionary() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/dictionary/deleteEntity.shtml';
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