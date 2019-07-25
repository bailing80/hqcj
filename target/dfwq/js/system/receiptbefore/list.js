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
			colkey : "reredocumentid",
			name : "单据号",
			isSort:true,
		}, {
			colkey : "cplateid",
			name : "车牌号",
			width : "100px",
			isSort:true,
		}, {
			colkey : "coname",
			name : "车主姓名",
			isSort:true,
		}, {
			colkey : "rechamberlain",
			name : "收款人",
			isSort:true,
		}, {
			colkey : "retimeofreceipt",
			name : "收款日期",
			isSort:true,
			renderData : function(rowindex,data, rowdata, column) {
				return new Date(data).format("yyyy-MM-dd hh:mm:ss");
			}
		}, {
			colkey : "restarttime",
			name : "预收起始时间",
			isSort:true,
		}, {
			colkey : "reendtime",
			name : "预收截止时间",
			isSort:true,
		}, {
			colkey : "button",
			name : "操作",
			isSort:true,
		}],
		jsonUrl : rootPath + '/receiptbefore/findByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addReceiptBefore").click("click", function() {
		addReceiptBefore();
		
	});
	$("#editReceipt").click("click", function() {
		editReceipt();
	});
	$("#delAccident").click("click", function() {
		delAccident();
	});
	$("#permissions").click("click", function() {
		permissions();
	});
});
function editReceipt() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑预收款信息",
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
function addReceiptBefore() {
	pageii = layer.open({
		title : "新增预收款信息",
		type : 2,
		area : [ "940px", "70%" ],
		content : rootPath + '/receiptbefore/addUI.shtml'
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
