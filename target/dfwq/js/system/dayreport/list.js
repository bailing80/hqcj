var pageii = null;
var grid = null;
$(function() {

	/* 日报点击事件  lgm修改*/
	$("#dayUI").click("click", function() {
		dayUI();
	});
	/*日报信息中的收据按钮 点击事件 lgm修改*/
	$("#acquitUI").click("click", function() {
		acquitUI();
	});
	$("#callback_test").click("click", function() {
		paging_callback();
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

	var account = 0;
	var urltime = rootPath + '/dayreport/selecttime.shtml';
	var data2 = CommnUtil.ajax(urltime, null, "json");
	if (data2 == null || data2 == "") {
	} else {
		var time = data2[0].retimeofreceipt;
		$("#retimeofreceipt").val(time);

		var url = rootPath + '/dayreport/selectmoney.shtml?retimeofreceipt=' + time;
		var data = CommnUtil.ajax(url, null, "json");
		for (var i = 0; i < data.length; i++) {
			account += data[i].reaccount;
		}
	}

	var url = rootPath + '/dayreport/selectTformA.shtml';
	var data = CommnUtil.ajax(url, null, "json");
	if (data == null || data == "") {

	} else {
		var time = data[0].actime;
		var url = rootPath + '/dayreport/selectMfromA.shtml?retimeofreceipt=' + time;
		var data = CommnUtil.ajax(url, null, "json");
		for (var i = 0; i < data.length; i++) {
			account += data[i].acmoney;
		}
	}
	$("#money").val(account);
});

function dayUI() {
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
		}, {
			colkey : "retimeofreceipt",
			name : "收款日期"
		}, {
			colkey : "restarttime",
			name : "预收起始时间"
		}, {
			colkey : "reendtime",
			name : "预收截止时间"
		}, {
			colkey : "reaccount",
			name : "总金额"
		}, {
			colkey : "ismoney",
			name : "是否参与结算",
			renderData : function(rowindex, data, rowdata, column) {
				if (data == 0) {
					return "参与结算";
				}
				if (data == 1) {
					return "不参与结算";
				}
			}
		}, {
			colkey : "reremark",
			name : "备注",
		} ],
		// alert("list");
		jsonUrl : rootPath + '/dayreport/findByPage.shtml',
		checkbox : true
	});
}

function acquitUI(){
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
		jsonUrl : rootPath + '/dayreport/acquitFindByPage.shtml',
		checkbox : true
	});
}


function paging_callback() {
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
		}, {
			colkey : "retimeofreceipt",
			name : "收款日期"
		}, {
			colkey : "restarttime",
			name : "预收起始时间"
		}, {
			colkey : "reendtime",
			name : "预收截止时间"
		}, {
			colkey : "reaccount",
			name : "总金额"
		}, {
			colkey : "ismoney",
			name : "是否参与结算",
			renderData : function(rowindex, data, rowdata, column) {
				if (data == 0) {
					return "参与结算";
				}
				if (data == 1) {
					return "不参与结算";
				}
			}
		}, {
			colkey : "reremark",
			name : "备注",
			serNumber : true
		} ],
		jsonUrl : rootPath + '/dayreport/findByPage2.shtml?retimeofreceipt=' + time,
		checkbox : true
	});

	$("#money").val(0);
	var url = rootPath + '/dayreport/selectmoney.shtml?retimeofreceipt=' + time;
	var data = CommnUtil.ajax(url, null, "json");
	var account = 0;
	if (data == null || data == "") {
		layer.msg("系统暂无数据");
	} else {
		for (var i = 0; i < data.length; i++) {
			account = account + data[i].reaccount;
		}
	}
	$("#money").val(account);
}
