var pageii = null;
var grid = null;
$(function() {
	$('#eoouttime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : "50px",
			hide : true
		}, {
			colkey : "eonumbers",
			name : "出库单号",
			isSort:true,
		}, {
			colkey : "eqid",
			name : "设备编号",
			isSort:true,
		}, {
			colkey : "eooutpeople",
			name : "出库人",
			isSort:true,
		}, {
			colkey : "eoouttime",
			name : "出库时间",
			isSort:true,
		}, {
			colkey : "eodepartment",
			name : "部门",
			isSort:true,
		}],
		jsonUrl : rootPath + '/equipmentout/findByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addEquipmentout").click("click", function() {
		addEquipment();
	});
	$("#editEquipmentout").click("click", function() {
		editEquipment();
	});
	$("#delEquipmentout").click("click", function() {
		delEquipment();
	});
	$("#permissions").click("click", function() {
		permissions();
	});
});
function editEquipment() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑出库信息",
		type : 2,
		area : [ "700px", "85%" ],
		content : rootPath + '/equipmentout/editUI.shtml?id=' + cbox
	});
}
function permissions() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("请选择一个对象！");
		return;
	}
	var url = rootPath + '/resources/permissions.shtml?EquipmentId='+cbox;
	pageii = layer.open({
		title : "分配权限",
		type : 2,
		area : [ "700px", "85%" ],
		content : url
	});
}
function addEquipment() {
	pageii = layer.open({
		title : "新增出库信息",
		type : 2,
		area : [ "700px", "85%" ],
		content : rootPath + '/equipmentout/addUI.shtml'
	});
}
function delEquipment() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/equipmentout/deleteEntity.shtml';
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
