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
			colkey : "sonumbers",
			name : "出库单号",//要自动生成

		}, {
			colkey : "simid",
			name : "sim编号",
			isSort:true, //排序
		}, {
			colkey : "sooutpsople",
			name : "出库人",
		}, {
			colkey : "soouttime",
			name : "出库时间",
			isSort:true,
			renderData : function(rowindex,data, rowdata, column) {
				return new Date(data).format("yyyy-MM-dd");
			}
		}, {
			colkey : "sodepartment",
			name : "部门",
		} ],
		jsonUrl : rootPath + '/simout/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#addSimOut").click("click", function() {
		addSimOut();
	});
	$("#editSimOut").click("click", function() {
		editSimOut();
	});
	$("#delSimOut").click("click", function() {
		delSimOut();
	});
});

function editSimOut() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑",
		type : 2,
		area : [ "600px", "80%" ],
		content : rootPath + '/simout/editUI.shtml?id=' + cbox
	});
}
function addSimOut() {
	pageii = layer.open({
		title : "新增",
		type : 2,
		area : [ "600px", "80%" ],
		content : rootPath + '/simout/addUI.shtml'
	});
}
function delSimOut() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/simout/deleteEntity.shtml';
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