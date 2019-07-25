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
		}, {
			colkey : "sbstatus",
			name : "设备状态",
			isSort:true,
			renderData : function( rowindex ,data, rowdata, colkeyn) {
				if( data == 1){
					return "正常";
				}else if(data==2){
					return "出库";
				}else if(data==3){
					return "维修";
				}else if(data==4){
					return "废止";
				}
			}
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
	$("#addEquipment").click("click", function() {
		addEquipment();
	});
	$("#editEquipment").click("click", function() {
		editEquipment();
	});
	$("#delEquipment").click("click", function() {
		delEquipment();
	});
	$("#fixEquipment").click("click", function() {
		fixEquipment();
	});
	$("#recoverEquipment").click("click", function() {
		recoverEquipment();
	});
	$("#loadExcel").click("click", function() {
		loadExcel();
	});
	
});
function editEquipment() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑设备",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/equipment/editUI.shtml?id=' + cbox
	});
}
function addEquipment() {
	pageii = layer.open({
		title : "新增设备",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/equipment/addUI.shtml'
	});
}
function delEquipment() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/equipment/deleteEntity.shtml';
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

function fixEquipment() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "维修设备",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/equipment/fixUI.shtml?id=' + cbox
	});
}

function recoverEquipment() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "恢复设备",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/equipment/recoverUI.shtml?id=' + cbox
	});
}

function loadExcel() {
	pageii = layer.open({
		title : "导入Excel",
		type : 2,
		area : [ "400px", "30%" ],
		content : rootPath + '/equipment/loadExcelUI.shtml'
	});
}
