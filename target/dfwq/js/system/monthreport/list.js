var pageii = null;
var grid = null;
$(function() {
	
	$("#callback_test").click("click", function() {
//		alert("你好");
		paging_callback();
	});
	/*
	 * 月报中月报点击按钮（lgm）
	 */
	$("#monthUI").click("click", function() {
		monthUI();
	});
	$("#acquitmonthUI").click("click", function() {
		acquitmonthUI();
	});
	$("#delBeReceipt").click("click", function() {
		delRole();
	});
	$('#retimeofreceipt').datetimepicker({
		format : 'yyyy-mm',
		todayBtn : true,
		language : 'zh-CN',
		minView : 2,
		maxView : 2
	});
	
	var account = 0;
	var url = rootPath + '/monthreport/selecttimeByMM.shtml';
	var data2 = CommnUtil.ajax(url, null, "json");
	if(data2 == null || data2 == ""){
	}else{
	var time = data2[0].retimeofreceipt;
	 // alert(time);
	$("#retimeofreceipt").val(time);
	var url = rootPath + '/monthreport/selectmoney.shtml?retimeofreceipt=' + time;
	var data = CommnUtil.ajax(url, null, "json");
	for(var i=0; i<data.length; i++){
		account += data[i].reaccount;
	}
	}
	
	var url = rootPath + '/monthreport/selectTformA.shtml';
	var data = CommnUtil.ajax(url, null, "json");
	//alert("********");
	if(data == null || data == ""){
		
	}else{
	var time = data[0].actime;
	var url = rootPath + '/monthreport/selectMfromA.shtml?retimeofreceipt=' + time;
	var data = CommnUtil.ajax(url, null, "json");
	for(var i=0; i<data.length; i++){
		account += data[i].acmoney;
	}
	}
	$("#money").val(account);
});

function monthUI(){
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
		jsonUrl : rootPath + '/monthreport/findByPage.shtml',
		checkbox : true
	});
}

function acquitmonthUI(){
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
		jsonUrl : rootPath + '/monthreport/acquitMonthFindByPage.shtml',
		checkbox : true
	});
}

function paging_callback(){
	var time = $("#retimeofreceipt").val();
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
			serNumber : true
		}],
		jsonUrl : rootPath + '/monthreport/findByPage2.shtml?retimeofreceipt=' + time,
		checkbox : true
	});

	$("#money").val(0);
	var url = rootPath + '/monthreport/selectmoney.shtml?retimeofreceipt=' + time;
	var data = CommnUtil.ajax(url, null, "json");
	if(data == null || data == ""){
		layer.msg("系统暂无数据");
	}else{
	var account = 0;
	for(var i=0; i<data.length; i++){
		account += data[i].reaccount;
	}}
	$("#money").val(account);
}


