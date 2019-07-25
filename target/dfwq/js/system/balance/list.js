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
	
	
	$('#debtUI').attr("disabled",true);
	$("#weeklyUI").click("click", function() {
		
		weeklyUI();
		weeklyCount = weeklyCount + 1;
		$('#weeklyUI').attr("disabled",true);
		$('#debtUI').attr("disabled",false);
	});
	$("#monthlyUI").click("click", function() {
		monthlyCount = monthlyCount + 1;
		monthlyUI();
		$('#monthlyUI').attr("disabled",true);
		$('#debtUI').attr("disabled",false);
	});
	$("#debtUI").click("click", function() {
		if(weeklyCount != 0){
			weeklyCount = 0;
			weeklyDebtUI();
			$('#debtUI').attr("disabled",true);
		}
		if(monthlyCount != 0){
			monthlyCount = 0;
			monthlyDebtUI();
			$('#debtUI').attr("disabled",true);
		}
		if(weeklyCount != 0 && monthlyCount != 0){
			weeklyCount = 0;
			monthlyCount = 0;
			debtUI();
			$('#debtUI').attr("disabled",true);
		}
	});
	
	$("#resetUI").click("click", function() {
		$('#weeklyUI').attr("disabled",false);
		$('#monthlyUI').attr("disabled",false);
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
		jsonUrl : rootPath + '/balance/weeklyFindByPage.shtml',
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
		},{
			colkey : "button",
			name : "操作"
		}],
		jsonUrl : rootPath + '/balance/monthlyFindByPage.shtml',
		checkbox : true
	});
}

function debtUI(){
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : "50px",
			hide : true
		}, {
			colkey : "cplateid",
			name : "车牌号",
		}, {
			colkey : "coname",
			name : "车主姓名",
		}, {
			colkey : "money",
			name : "欠款金额",
		}, {
			colkey : "resummary",
			name : "收款小结",
			
		},{
			colkey : "button",
			name : "操作"
		}],
		jsonUrl : rootPath + '/balance/debtFindByPage.shtml',
		checkbox : true
	});
}
function weeklyDebtUI(){
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : "50px",
			hide : true
		}, {
			colkey : "cplateid",
			name : "车牌号",
		}, {
			colkey : "coname",
			name : "车主姓名",
		}, {
			colkey : "money",
			name : "欠款金额",
		}, {
			colkey : "resummary",
			name : "收款小结",
			
		},{
			colkey : "button",
			name : "操作"
		}],
		jsonUrl : rootPath + '/balance/weeklyDebtFindByPage.shtml',
		checkbox : true
	});
}
function monthlyDebtUI(){
	grid = lyGrid({
		id : 'paging',
		l_column : [ {
			colkey : "id",
			name : "id",
			width : "50px",
			hide : true
		}, {
			colkey : "cplateid",
			name : "车牌号",
		}, {
			colkey : "coname",
			name : "车主姓名",
		}, {
			colkey : "money",
			name : "欠款金额",
		}, {
			colkey : "resummary",
			name : "收款小结",
			
		},{
			colkey : "button",
			name : "操作"
		}],
		jsonUrl : rootPath + '/balance/monthlyDebtFindByPage.shtml',
		checkbox : true
	});
}

