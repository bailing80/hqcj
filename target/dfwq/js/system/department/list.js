var pageii = null;
var grid = null;
$(function() {
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			hide : true
		}, {
			colkey : "dname",
			name : "机构名称",
			isSort : true
		}, {
			colkey : "dtype",
			name : "机构类型",
			isSort : true
		}, {
			colkey : "dnumber",
			name : "机构编码",
			isSort : true
		}, {
			colkey : "dlastid",
			name : "上级机构",
			isSort : true,
			
		}, {
			colkey : "darea",
			name : "归属区域",
			isSort : true
		}, {
			colkey : "dclass",
			name : "机构级别",
			isSort : true
		}, {
			colkey : "dmaindirector",
			name : "主要负责人",
			isSort : true
		}, {
			colkey : "ddeputydirector",
			name : "副负责人",
			isSort : true
		}, {
			colkey : "dtel",
			name : "联系电话",
			isSort : true
		}, {
			colkey : "daddress",
			name : "联系地址",
			isSort : true
		}, {
			colkey : "dpostalcode",
			name : "邮政编码",
			isSort : true
		}, {
			colkey : "dfax",
			name : "传真",
			isSort : true
		}, {
			colkey : "demail",
			name : "邮箱",
			isSort : true
		}, {
			colkey : "disuse",
			name : "是否可用",
			sort : true
		}, {
			colkey : "dremark",
			name : "备注",
		} ],
		jsonUrl : rootPath + '/department/findByPage.shtml',
		checkbox : true,
		serNumber : true
		
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addDepartment").click("click", function() {
		addDepartment();
	});
	$("#editDepartment").click("click", function() {
		editDepartment();
	});
	$("#delDepartment").click("click", function() {
		delDepartment();
	});
	$("#lyGridUp").click("click", function() {// 上移
		var jsonUrl = rootPath + '/background/department/sortUpdate.shtml';
		grid.lyGridUp(jsonUrl);
	});
	$("#lyGridDown").click("click", function() {// 下移
		var jsonUrl = rootPath + '/background/department/sortUpdate.shtml';
		grid.lyGridDown(jsonUrl);
	});
});
function editDepartment() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.alert("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑部门信息",
		type : 2,
		area : [ "800px", "80%" ],
		content : rootPath + '/department/editUI.shtml?id=' + cbox
	});
}
function addDepartment() {
	pageii = layer.open({
		title : "新增部门信息",
		type : 2,
		area : [ "800px", "80%" ],
		content : rootPath + '/department/addUI.shtml'
	});
}
function delDepartment() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.alert("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/department/deleteEntity.shtml';
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
