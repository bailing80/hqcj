var pageii = null;
var grid = null;
$(function() {
//	alert("进入");
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
			colkey : "coname",
			name : "车主姓名",
			isSort:true, //排序
			
		}, {
			colkey : "times",
			name : "发包次数",
			isSort:true, //排序
			
		},{
			colkey : "contracttime",
			name : "发包时间",
			isSort:true, //排序
			
		}],
		jsonUrl : rootPath + '/contract/findByPageContract.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
});

