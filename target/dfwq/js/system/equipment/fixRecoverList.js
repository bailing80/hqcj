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
			colkey : "eqname",
			name : "设备名称",
			isSort:true,
		},{
			colkey : "name",
			name : "送修人",
			isSort:true,
		}, {
			colkey : "department",
			name : "送修部门",
			isSort:true,
		}, {
			colkey : "fixtime",
			name : "送修时间",
			isSort:true,
		}, {
			colkey : "money",
			name : "维修费用",
			isSort:true,
		}, {
			colkey : "fixgoodtime",
			name : "修好时间",
			isSort:true,
		}, {
			colkey : "remark",
			name : "备注",
			isSort:true,
		}],
		jsonUrl : rootPath + '/equipment/fixRecoverFindByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#fixrecoverUI").click("click", function() {
		fixrecoverUI();
	});
	$("#addFix").click("click", function() {
		addFix();
	});
	
});

function addFix() {
	pageii = layer.open({
		title : "新增设备",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/equipment/addFixUI.shtml'
	});
}


function fixrecoverUI() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "维修设备",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/equipment/fixrecoverUI.shtml?id=' + cbox
	});
}
