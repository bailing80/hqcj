var pageii = null;
var grid = null;

$(function() {
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : "50px",
			hide : true
		}/*, {
			colkey : "cid",
			name : "车辆外键",
			isSort:true,
		}*/, {
			colkey : "cplateid",
			name : "车牌照号",
			width : "100px",
			isSort:true,
		}, {
			colkey : "chsetmoney",
			name : "日租金额设置",
			isSort:true,
		}, {
			colkey : "chfirstmoney",
			name : "首付款",
			isSort:true,
		} ],
		jsonUrl : rootPath + '/charge/findByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addCharge").click("click", function() {
		addCharge();
		
	});
	$("#editCharge").click("click", function() {
		editCharge();
	});
	$("#delCharge").click("click", function() {
		delCharge();
	});
	$("#permissions").click("click", function() {
		permissions();
	});
});
function editCharge() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑收费信息",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/charge/editUI.shtml?id=' + cbox
	});
}
function permissions() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("请选择一个对象！");
		return;
	}
	var url = rootPath + '/charge/permissions.shtml?EquipmentId='+cbox;
	pageii = layer.open({
		title : "分配权限",
		type : 2,
		area : [ "700px", "75%" ],
		content : url
	});
}
function addCharge() {
	pageii = layer.open({
		title : "新增收费信息",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/charge/addUI.shtml'
	});
}
function delCharge() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/charge/deleteEntity.shtml';
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
