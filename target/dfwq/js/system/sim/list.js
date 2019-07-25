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
			colkey : "simsimid",
			name : "sim编号",
			isSort:true,
		}, {
			colkey : "simoperator",
			name : "运营商",
			renderData : function(rowindex,data, rowdata, column) {
				if(data == 1){
					return "中国移动";
				} 
				if(data == 2) {
					return "中国电信";
				}
				if(data == 3) {
					return "中国联通";
				}
			}
		}, {
			colkey : "simcardid",
			name : "卡号",
			isSort:true,
		}, {
			colkey : "simtype",
			name : "类型",
			isSort:true,
			renderData : function(rowindex,data, rowdata, column) {
				if(data == 1){
					return "2G";
				} 
				if(data == 2) {
					return "3G";
				}
				if(data == 3) {
					return "4G";
				}
				if(data == 4) {
					return "5G";
				}
			}
		}, {
			colkey : "sbstatus",
			name : "状态",
			isSort:true,
			renderData : function(rowindex,data, rowdata, column) {
				if(data == 1){
					return "正常";
				} 
				if(data == 2) {
					return "出库";
				}
				if(data == 3) {
					return "维修";
				}if(data == 4) {
					return "废止";
				}
			}
		} ],
		jsonUrl : rootPath + '/sim/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#addSim").click("click", function() {
		addSim();
	});
	$("#editSim").click("click", function() {
		editSim();
	});
	$("#delSim").click("click", function() {
		delSim();
	});
	
	$("#loadExcel").click("click", function() {
		loadExcel();
	});
});

function editSim() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑SIM",
		type : 2,
		area : [ "600px", "68%" ],
		content : rootPath + '/sim/editUI.shtml?id=' + cbox
	});
}
function addSim() {
	pageii = layer.open({
		title : "新增SIM",
		type : 2,
		area : [ "600px", "68%" ],
		content : rootPath + '/sim/addUI.shtml'
	});
}
function delSim() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/sim/deleteEntity.shtml';
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
function loadExcel() {
	pageii = layer.open({
		title : "导入Excel",
		type : 2,
		area : [ "400px", "30%" ],
		content : rootPath + '/sim/loadExcelUI.shtml'
	});
}
