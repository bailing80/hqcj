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
			colkey : "ctype",
			name : "车辆类型",
			isSort:true, //排序
			
		} , {
			colkey : "ctradetype",
			name : "厂牌类型",
			isSort:true,
		}, {
			colkey : "cengineid",
			name : "发动机号",
			isSort:true,
		}, {
			colkey : "coutputvolume",
			name : "排量",
			isSort:true,
		},{
			colkey : "cframeid",
			name : "车架号",
			isSort:true,
		},{
			colkey : "cpurchaseid",
			name : "购置证号",
			isSort:true,
		},{
			colkey : "ccolour",
			name : "车辆颜色",
			isSort:true,
		},{
			colkey : "crecordtime",
			name : "登记日期",
			isSort:true,
		}],
		jsonUrl : rootPath + '/contract/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#editContract").click("click", function() {
		editContract();
	});
	
	
	
});

function editContract() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑",
		type : 2,
		area : [ "1000px", "85%" ],
		content : rootPath + '/contract/editUI.shtml?id=' + cbox
	});
}