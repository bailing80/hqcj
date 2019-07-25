var pageii = null;
var grid = null;
$(function() {
	alert("我在js中了");
	$('#actime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	$('#acliability').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
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
		},/* {
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
		},{
			colkey : "cframeid",
			name : "车架号",
			isSort:true,
		},{
			colkey : "cpurchaseid",
			name : "购置证号",
			isSort:true,
		},{
			colkey : "ccolour",
			name : "车辆颜色",
			isSort:true,
		},{
			colkey : "crecordtime",
			name : "登记日期",
			isSort:true,
		},*/{
			colkey : "button",
			name : "车辆档案",
		} ,{
			colkey : "carchangebutton",
			name : "车辆变更",
		},{
			colkey : "contractbutton",
			name : "多次发包",
		},{
			colkey : "insurancebutton",
			name : "保险信息",
		},{
			colkey : "chargebutton",
			name : "收款信息",
		},{
			colkey : "accidentbutton",
			name : "事故信息",
		}],
		jsonUrl : rootPath + '/carinformation/findByPage.shtml',
		checkbox : true,
		serNumber : true
	});
	$("#search").click("click", function() {// 绑定查询按扭
//		alert(data);
		var searchParams = $("#searchForm").serializeJson();// 初始化传参数
		grid.setOptions({
			data : searchParams
		});
	});
	
	$("#addCar").click("click", function() {
		addCar();
	});
	$("#editCar").click("click", function() {
		editCar();
	});
	$("#delCar").click("click", function() {
		delCar();
	});
	$("#exitCar").click("click", function() {
		exitCar();
	});
	$("#errorCar").click("click", function() {
		errorCar();
	});
	
	
	
});
//根据动态生成的  按钮的id  显示出不同的页面
/*function dynamicbutton(obj){
	alert("后台的js");
	var id=$(obj).attr("id");
	var validenumber=id.substring(14,15);
	var cid=id.substring(15);
	alert("验证码"+validenumber);
	alert("按钮的"+cid);
	if(validenumber==1){
//		carchangebutton   车辆变更信息的显示
		
	}else if(validenumber==2){
//		contractbutton    车辆多次发包信息的显示
		
	}else if(validenumber==3){
//		insurancebutton		车辆保险信息的显示
		alert("insurancebutton");
		pageii = layer.open({
			title : "查看保险信息",
			type : 2,
			area : [ "600px", "60%" ],
			content : rootPath + '/carinformation/editinsuranceUI.shtml?id=' + cid,
		});
	}else if(validenumber==4){
//		chargebutton		收费信息的显示
		alert("chargebutton");
		pageii = layer.open({
			title : "查看收费信息",
			type : 2,
			area : [ "600px", "60%" ],
			content : rootPath + '/carinformation/editchargeUI.shtml?id=' + cid,
		});
	}else if(validenumber==5){
//		accidentbutton		事故信息的显示
		alert("accidentbutton");
//		myaccidentpage(cid);
		var url = rootPath + '/carinformation/accidentlist.shtml?cid='+cid;
		var s = CommnUtil.ajax(url,null,"json");
	}else{
			alert("出错了！");
		}
	}
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

function editCar() {
	var cbox = grid.getSelectedCheckbox();
	if (cbox.length > 1 || cbox == "") {
		layer.msg("只能选中一个");
		return;
	}
	pageii = layer.open({
		title : "编辑",
		type : 2,
		area : [ "900px", "85%" ],
		content : rootPath + '/car/editUI.shtml?id=' + cbox
	});
}
function addCar() {
	pageii = layer.open({
		title : "新增",
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
}*/
