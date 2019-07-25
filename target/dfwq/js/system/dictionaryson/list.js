var pageii = null;
var grid = null;
$(function() {
	
	grid = lyGrid({
		pagId : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			hide : true
		},  {
			colkey : "dstypename",
			name : "字典值",
			isSort:true,
		}, {
			colkey : "dtypename",
			name : "字典类型",
			isSort:true,
		}, {
			colkey : "did",
			name : "字典编号",
			hide:true
		},{
			colkey : "dsremark",
			name : "备注"
		} ,{
			colkey : "dsorder",
			name : "序号",
			isSort:true,
		}],
		jsonUrl : rootPath + '/dictionaryson/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#addDictionaryson").click("click", function() {
		addDictionaryson();
	});
	$("#editDictionaryson").click("click", function() {
		editDictionaryson();
	});
	$("#delDictionaryson").click("click", function() {
		delDictionaryson();
	});
});

function editDictionaryson() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑字典子表信息",
		type : 2,
		area : [ "600px", "60%" ],
		content : rootPath + '/dictionaryson/editUI.shtml?id=' + cbox
	});
}
function addDictionaryson() {
	pageii = layer.open({
		title : "新增字典子表信息",
		type : 2,
		area : [ "600px", "60%" ],
		content : rootPath + '/dictionaryson/addUI.shtml'
	});
}
function delDictionaryson() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/dictionaryson/deleteEntity.shtml';
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