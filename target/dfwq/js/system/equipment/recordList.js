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
			colkey : "eqdeviceid",
			name : "设备编号",
			isSort:true,
		}, {
			colkey : "eqequipmenttype",
			name : "设备型号",
			isSort:true,
		}, {
			colkey : "eqname",
			name : "设备名称",
			isSort:true,
		}, {
			colkey : "eqtype",
			name : "类型",
			isSort:true,
		}, {
			colkey : "eqfactory",
			name : "厂家",
			isSort:true,
		} ],
		jsonUrl : rootPath + '/equipment/findByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
});
