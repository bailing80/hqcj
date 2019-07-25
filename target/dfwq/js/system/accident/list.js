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
		}, {
			colkey : "cplateid",
			name : "车牌照号",
			isSort:true,
		}, {
			colkey : "acower",
			name : "车主",
			width : "100px",
			isSort:true,
		}, {
			colkey : "actime",
			name : "事故时间",
			isSort:true,
		}, {
			colkey : "acaddress",
			name : "事故地点",
			isSort:true,
		}, {
			colkey : "aclogin",
			name : "登记人",
			isSort:true,
		}, {
			colkey : "aclogintime",
			name : "登记时间",
			isSort:true,
		}, {
			colkey : "acsituation",
			name : "事故情况",
			width : "100px",
			isSort:true,
		}, {
			colkey : "acliability",
			name : "事故责任",
			isSort:true,
		}, {
			colkey : "acclaimmoney",
			name : "理赔金额",
			isSort:true,
		}, {
			colkey : "aciscompromise",
			name : "是否和解",
			isSort:true,
			renderData : function( rowindex ,data, rowdata, colkeyn) {
				if( data == 0){
					return "否";
				}else if(data==1){
					return "是";
				}
			}
		}, {
			colkey : "court",
			name : "法院",
			isSort:true,
		}, {
			colkey : "aciscourt",
			name : "是否通过法院起诉",
			isSort:true,
			renderData : function( rowindex ,data, rowdata, colkeyn) {
				if( data == 0){
					return "否";
				}else if(data==1){
					return "是";
				}
			}
		}, {
			colkey : "acaccuser",
			name : "原告人",
			width : "100px",
			isSort:true,
		}, {
			colkey : "acacourtmonry",
			name : "法院判决金额",
			isSort:true,
		}, {
			colkey : "acremark",
			name : "备注",
			isSort:true,
		},],
		jsonUrl : rootPath + '/accident/findByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addAccident").click("click", function() {
		addAccident();
		
	});
	$("#editAccident").click("click", function() {
		editAccident();
	});
	$("#delAccident").click("click", function() {
		delAccident();
	});
	$("#permissions").click("click", function() {
		permissions();
	});
});
function editAccident() {
	var cbox = grid.getSelectedCheckbox();
	$.cookie("cbox",cbox);
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑事故车辆信息",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/accident/editUI.shtml?id=' + cbox
	});
}
function permissions() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("请选择一个对象！");
		return;
	}
	var url = rootPath + '/accident/permissions.shtml?AccidentId='+cbox;
	pageii = layer.open({
		title : "分配权限",
		type : 2,
		area : [ "700px", "75%" ],
		content : url
	});
}
function addAccident() {
	pageii = layer.open({
		title : "新增事故车辆信息",
		type : 2,
		area : [ "700px", "70%" ],
		content : rootPath + '/accident/addUI.shtml'
	});
}
function delAccident() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/accident/deleteEntity.shtml';
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
