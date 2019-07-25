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
			colkey : "sinumbers",
			name : "入库单号",//要自动生成

		}, {
			colkey : "simid",
			name : "sim编号",
			isSort:true, //排序
		}, {
			colkey : "sioutpsiple",
			name : "入库人",
		}, {
			colkey : "siouttime",
			name : "入库时间",
			isSort:true,
			renderData : function(rowindex,data, rowdata, column) {
				return new Date(data).format("yyyy-MM-dd");
			}
		}, {
			colkey : "sidepartment",
			name : "部门",
		} ],
		jsonUrl : rootPath + '/simin/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
/*	$("#addSimIn").click("click", function() {
		addSimIn();
	});
	$("#editSimIn").click("click", function() {
		editSimIn();
	});
	$("#delSimIn").click("click", function() {
		delSimIn();
	});*/
});

/*function editSimIn() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑",
		type : 2,
		area : [ "600px", "80%" ],
		content : rootPath + '/simin/editUI.shtml?id=' + cbox
	});
}
function addSimIn() {
	pageii = layer.open({
		title : "新增",
		type : 2,
		area : [ "600px", "80%" ],
		content : rootPath + '/simin/addUI.shtml'
	});
}
function delSimIn() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/simin/deleteEntity.shtml';
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
}*/