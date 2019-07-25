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
			name : "原车主姓名",
			isSort:true, //排序
			
		}, {
			colkey : "gname",
			name : "原担保人姓名",
			isSort:true, //排序
			
		}, {
			colkey : "transfertime",
			name : "过户时间",
			isSort:true, //排序
			
		}, {
			colkey : "times",
			name : "本车是第几次过户",
			isSort:true, //排序
			
		}],
		jsonUrl : rootPath + '/transfer/findByPageTransfer.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	
	$("#editTransfer").click("click", function() {
		editTransfer();
	});
	
	
	
	
	
});

function errorCar() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "此车辆有问题",
		type : 2,
		area : [ "900px", "50%" ],
		content : rootPath + '/car/errorUI.shtml?id=' + cbox
	});
}

function exitCar() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "废止此车辆",
		type : 2,
		area : [ "900px", "30%" ],
		content : rootPath + '/car/exitUI.shtml?id=' + cbox
	});
}

function editTransfer() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑过户信息",
		type : 2,
		area : [ "900px", "85%" ],
		content : rootPath + '/transfer/editUI.shtml?id=' + cbox
	});
}
function addCar() {
	pageii = layer.open({
		title : "新增过户信息",
		type : 2,
		area : [ "900px", "85%" ],
		content : rootPath + '/car/addUI.shtml'
	});
}
function delCar() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/car/deleteEntity.shtml';
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