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
			name : "单据号"
		}, {
			colkey : "cplateid",
			name : "车牌号",
		}, {
			colkey : "coname",
			name : "车主姓名"
		}, {
			colkey : "rechamberlain",
			name : "收款人"
		} , {
			colkey : "retimeofreceipt",
			name : "收款日期"
		}, {
			colkey : "restarttime",
			name : "预收起始时间"
		}, {
			colkey : "reendtime",
			name : "预收截止时间"
		},{
			colkey : "reaccount",
			name : "总金额"
		},{
			colkey : "ismoney",
			name : "是否参与结算",
			renderData : function(rowindex,data, rowdata, column) {
				if(data == 0){
					return "参与结算";
				} 
				if(data == 1) {
					return "不参与结算";
				}
			}
		},{
			colkey : "reremark",
			name : "备注",
		}],
//		alert("list");
		jsonUrl : rootPath + '/daysum/findByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addBeReceipt").click("click", function() {
		addRole();
	});
	$("#editBeReceipt").click("click", function() {
		editRole();
	});
	$("#delBeReceipt").click("click", function() {
		delRole();
	});
	
	var url = rootPath + '/daysum/selectmoney.shtml';
	var data = CommnUtil.ajax(url, null, "json");
	var account = 0;
	for(var i=0; i<data.length; i++){
		account += data[i].reaccount;
	}
	
	$("#money").val(account);
});
function editRole() {
	var cbox = grid.getSelectedCheckbox();
	$.cookie("cbox",cbox);
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑",
		type : 2,
		area : [ "800px", "65%" ],
		content : rootPath + '/receiptbefore/editUI.shtml?id=' + cbox
	});
}

function addRole() {
	pageii = layer.open({
		title : "新增",
		type : 2,
		area : [ "800px", "65%" ],
		content : rootPath + '/receiptbefore/addUI.shtml'
	});
}
function delRole() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/receiptbefore/deleteEntity.shtml';
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
