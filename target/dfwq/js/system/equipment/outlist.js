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
		jsonUrl : rootPath + '/equipment/outFindByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addEquipmentIn").click("click", function() {
		addEquipmentIn();
	});
});
function addEquipmentIn() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "新增入库设备",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/equipment/inAddUI.shtml?id=' + cbox
	});
}

