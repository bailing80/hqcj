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
			colkey : "reaccount",
			name : "总金额"
		}, {
			colkey : "reremark",
			name : "备注"
		}],
		jsonUrl : rootPath + '/weekly/findByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
});

