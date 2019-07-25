var pageii = null;
var grid = null;
var weeklyCount = 0;
var monthlyCount = 0;
//var falg = false;
$(function() {
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#weeklyUI").click("click", function() {
		weeklyUI();
	});
	$("#monthlyUI").click("click", function() {
		monthlyUI();
	});
	
	
});

function weeklyUI(){
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : "50px",
			hide : true
		}, {
			colkey : "cplateid",
			name : "车牌号"
		}, {
			colkey : "coname",
			name : "车主姓名",
		}, {
			colkey : "money",
			name : "应收金额",
		}, {
			colkey : "resummary",
			name : "收款小结",
		}, {
			colkey : "button",
			name : "操作"
		}],
		jsonUrl : rootPath + '/debt/weeklyFindByPage.shtml',
		checkbox : true
	});
}


function monthlyUI(){
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : "50px",
			hide : true
		}, {
			colkey : "cplateid",
			name : "车牌号"
		}, {
			colkey : "coname",
			name : "车主姓名",
		}, {
			colkey : "money",
			name : "应收金额",
		}, {
			colkey : "resummary",
			name : "收款小结",
		}],
		jsonUrl : rootPath + '/debt/monthlyFindByPage.shtml',
		checkbox : true
	});
}

