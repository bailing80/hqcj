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
		jsonUrl : rootPath + '/dayreport/findByPage.shtml',
		checkbox : true
	});
	$("#callback_test").click("click", function() {
		paging_callback();
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
	$('#retimeofreceipt').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		minView : 2,
		maxView : 1
	});
	
	$("#money").val(0);
	var url = rootPath + '/dayreport/selecttime.shtml';
	var data2 = CommnUtil.ajax(url, null, "json");
	var time = data2[0].retimeofreceipt;
	$("#retimeofreceipt").val(time);
	var url = rootPath + '/dayreport/selectmoney.shtml?retimeofreceipt=' + time;
	var data = CommnUtil.ajax(url, null, "json");
	var account = 0;
	for(var i=0; i<data.length; i++){
		account += data[i].reaccount;
	}
	$("#money").val(account);
	alert("hello world");
	

});

function paging_callback(){
	var time = $("#retimeofreceipt").val();
	alert(time);
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
		jsonUrl : rootPath + '/dayreport/findByPage2.shtml?time=' + time,
		checkbox : true
	});

	$("#money").val(0);
	var time = $("#retimeofreceipt").val();
	alert(time+"11111111111");
	var url = rootPath + '/dayreport/selectmoney.shtml?retimeofreceipt=' + time;
	var data = CommnUtil.ajax(url, null, "json");
	var account = 0;
	for(var i=0; i<data.length; i++){
		account += data[i].reaccount;
	}
	$("#money").val(account);
}


