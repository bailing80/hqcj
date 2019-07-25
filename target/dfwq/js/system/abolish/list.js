var pageii = null;
var grid = null;
$(function() {
	
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
			colkey : "ctype",
			name : "车辆类型",
			isSort:true, //排序
			
		}, {
			colkey : "ctradetype",
			name : "厂牌类型",
			isSort:true,
		}, {
			colkey : "cengineid",
			name : "发动机号",
			isSort:true,
		}, {
			colkey : "coutputvolume",
			name : "排量",
			isSort:true,
		},  {
			colkey : "cframeid",
			name : "车架号",
			isSort:true,
		}, {
			colkey : "cpurchaseid",
			name : "购置证号",
			isSort:true,
		}, {
			colkey : "ccolour",
			name : "车辆颜色",
			isSort:true,
		}, {
			colkey : "cbook",
			name : "车籍",
			isSort:true,
		}, {
			colkey : "crecordtime",
			name : "登记日期",
			isSort:true,
		}, {
			colkey : "cisabolish",
			name : "是否废止",
			isSort:true,
			renderData : function( rowindex ,data, rowdata, colkeyn) {
				if( data == 0){
					return "是";
				}else if(data==1){
					return "否";
				}
			}
		}, {
			colkey : "cabolishtime",
			name : "废止时间",
			isSort:true,
		}, {
			colkey : "cphoto",
			name : "车辆照片",
			isSort:true,
		}, {
			colkey : "cerrortime",
			name : "故障时间",
			isSort:true,
		}, {
			colkey : "creason",
			name : "故障原因",
			isSort:true,
		},{
			colkey : "ciserror",
			name : "是否问题车",
			renderData : function( rowindex ,data, rowdata, colkeyn) {
				if( data == 0){
					return "是";
				}else if(data==1){
					return "否";
				}
			}
		} ,{
			colkey : "cremark",
			name : "备注",
		}],
		jsonUrl : rootPath + '/abolish/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	
	$("#delAbolish").click("click", function() {
		delAbolish();
	});
	
	
	
});

function delAbolish() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox == "") {
		layer.msg("请选择删除项！！");
		return;
	}
	layer.confirm('是否删除？', function(index) {
		var url = rootPath + '/abolish/deleteEntity.shtml';
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