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
			colkey : "acnumbers",
			name : "单据号"
		}, {
			colkey : "actime",
			name : "收款日期"
		}, {
			colkey : "acname",
			name : "名称"
		}, {
			colkey : "acup",
			name : "上款系"
		}, {
			colkey : "acmoney",
			name : "金额"
		}, {
			colkey : "accompany",
			name : "收款单位"
		}],
		jsonUrl : rootPath + '/acquittance/findByPage.shtml',
		checkbox : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	$("#addAcquittance").click("click", function() {
		addAcquittance();
	});
	$("#editAcquittance").click("click", function() {
		editAcquittance();
	});
	$("#delAcquittance").click("click", function() {
		delAcquittance();
	});
	$("#permissions").click("click", function() {
		permissions();
	});
	
//	测试打印
	$("#print").click("click", function() {
//		表中的所有数据
		var jsonData = grid.getCurrentData();
		for (var i = 0; i < jsonData.length; i++) {
			console.log(jsonData[i].acnumbers);
		}
		print(jsonData);
	});
});

//测试打印
function print(jsonData) {
	var index;
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	for (var i = 0; i < jsonData.length; i++) {
		if (jsonData[i].id == cbox) {
			index = i;
			break;
		}
	}
	console.log(jsonData[index].acnumbers);
	MyPreview(jsonData[index]);
	/*pageii = layer.open({
		title : "编辑收据信息",
		type : 2,
		area : [ "650px", "70%" ],
		content : rootPath + '/acquittance/editUI.shtml?id=' + cbox
	});*/
}

function editAcquittance() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑收据信息",
		type : 2,
		area : [ "650px", "70%" ],
		content : rootPath + '/acquittance/editUI.shtml?id=' + cbox
	});
}
function permissions() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("请选择一个对象！");
		return;
	}
	var url = rootPath + '/resources/permissions.shtml?AcquittanceId='+cbox;
	pageii = layer.open({
		title : "分配权限",
		type : 2,
		area : [ "700px", "70%" ],
		content : url
	});
}
function addAcquittance() {
	pageii = layer.open({
		title : "新增收据信息",
		type : 2,
		area : [ "650px", "70%" ],
		content : rootPath + '/acquittance/addUI.shtml'
	});
}
function delAcquittance() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/acquittance/deleteEntity.shtml';
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
