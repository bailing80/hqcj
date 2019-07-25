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
			colkey : "cereason",
			name : "问题原因",
			isSort:true, //排序
			
		}, {
			colkey : "ceerrortime",
			name : "问题时间",
			isSort:true,
		}],
		jsonUrl : rootPath + '/carerror/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#addCarError").click("click", function() {
		addCarError();
	});
	$("#delCarError").click("click", function() {
		delCarError();
	});
	
});

function delCarError() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑问题车辆信息",
		type : 2,
		area : [ "600px", "50%" ],
		content : rootPath + '/carerror/editUI.shtml?id=' + cbox
	});
}
function addCarError() {
	pageii = layer.open({
		title : "新增问题车辆信息",
		type : 2,
		area : [ "600px", "50%" ],
		content : rootPath + '/carerror/addUI.shtml'
	});
}
