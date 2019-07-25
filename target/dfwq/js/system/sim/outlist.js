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
		}, {
			colkey : "simtype",
			name : "类型",
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
		},  {
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
		jsonUrl : rootPath + '/sim/outFindByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addSimOut").click("click", function() {
		addSimin();
	});
});
function addSimin() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "新增入库信息",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/sim/inaddUI.shtml?id=' + cbox
	});
}
