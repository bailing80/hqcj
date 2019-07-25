/**
 * 点击周结交款按钮，弹出预收款的各种明细
 */
var reredocumentid ;
$(function() {
	$('#retimeofreceipt').datetimepicker({
		format : 'yyyy-mm-dd hh:mm:ss',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 0,
		startView : 0,
		minuteStep: 1,
		maxView : 1
	});
	$("#reredocumentid").val(getDh());
	//	根据单据号来查收款子表的各种信息
//	alert("asdasd");
//	新的单据号
	var reredocumentid = $("#oldreredocumentid").val();
	console.log("单据号+++"+reredocumentid);
//	获取车牌号
	var cplateid = $("#cplateid").val();
	var selectchpaytypeurl = rootPath+ '/pay/selectreceiptdata.shtml?reredocumentid='+reredocumentid;
	
	var receiptUrl = rootPath+ '/pay/selectreceiptdata.shtml?reredocumentid='+reredocumentid;
	var receiptdata = CommnUtil.ajax(receiptUrl, null,"json");
	console.log("子表数据"+receiptdata);
	if (receiptdata != null) {
		
		for (var i = 0; i < receiptdata.length; i++) {
			if (receiptdata[i].rsname == "日租金") {
//				动态展现收费项
				chargeH = "<tr style='margin:0 auto;'>"
					+ "<td style='margin-left:10px;display:inline-block;'><label>收费项</label> <input value='"
					+ receiptdata[i].rsname
					+ "' type='text' readonly='readonly' name='receiptSonFormMap.rsname' id='rsname' style='width:90px;'  /></td>"
					+ "<td style='margin-left:10px;display:inline-block;'><label>应收金额</label> "
					+ "<input type='text' readonly='readonly' value='"
					+ 0
					+ "' name='receiptSonFormMap.rsablemoney' id='chpaytype"
					+ i
					+ "' style='width:90px;' /></td>"
					+ "<td style='margin-left:10px;display:inline-block;'><label>实收金额</label> "
					+ "<input type='text' readonly='readonly' value='"
					+ 0
					+ "' name='receiptSonFormMap.rsablemoney' id='rsablemoney"
					+ i
					+ "'style='width:90px;'  /></td>"
					+ "<td style='margin-left:10px;display:inline-block;'><label>欠款</label><input readonly='readonly' type='text' name='receiptSonFormMap.rsfundsmoney' value='"
					+ 0+"' id='rsfundsmoney"
					+ i
					+ "'style='width:90px;'  /></td>"
					+ "<td style='margin-left:10px;display:inline-block;'><label>收费区间</label><input type='text' readonly='readonly' name='receiptSonFormMap.rrsowemoney' value='"
					+ receiptdata[i].resummary+"' id='rsowemoney"
					+ i + "' style='width:180px;' /></td>" + "</tr>"
//					把拼接好的html追加到表单后面
			$("#Mytable").append(chargeH);
			}
			
//			把收费区间和应收金额修改了
			if (receiptdata[i].rsname == "日租金") {
				//alert($("#resummary").val());
				//alert($("#resummary").val());
				$("#rsowemoney"+i).val($("#resummary").val());
//				alert("钱+++"+$("#rsablemoney").val()+"...."+"#rsowemoney"+i);
				$("#rsablemoney"+i).val($("#rsablemoney").val());
				$("#chpaytype"+i).val($("#rsablemoney").val());
			}
		}
	} else {
		alert("此车未查到数据")
	}
	
$("#addAll").click(function() {
		
		// 定义数组保存表单所有数据
		var receiptList = new Array();

		var receipt = new Object();
		receipt.reredocumentid = $("#reredocumentid").val();
		receipt.cid = $("#cid").val();
		receipt.cplateid = $("#cplateid").val();
		receipt.coname = $("#coname").val();
		receipt.rechamberlain = $("#rechamberlain").val();
		receipt.retimeofreceipt = $("#retimeofreceipt").val();
//预收款的单据号，做更新操作
		receipt.oldreredocumentid = $("#oldreredocumentid").val();
		
		receiptList[0] = receipt;

		console.log("固定表单元素值" + receiptList);
		// 遍历获取动态的表单元素值
		var otbl = document.getElementById('Mytable'); // 获取table对象，名字为otbl
		var anjianName = "";
		var anjianNum = "";
		var len = otbl.rows.length // 获取otbl的行数
		// alert(len);
		for (var i = 0; i < len; i++) {
			var receiptSon = new Object();

			receiptSon.rsname = otbl.rows[i].cells[0].children[1].value;
//			receiptSon.chpaytype = otbl.rows[i].cells[1].children[1].value;
			receiptSon.rsablemoney = otbl.rows[i].cells[1].children[1].value;
			receiptSon.rsfundsmoney = otbl.rows[i].cells[2].children[1].value;
			receiptSon.rsowemoney = otbl.rows[i].cells[3].children[1].value;
			receiptSon.resummary = otbl.rows[i].cells[4].children[1].value; 
			/*if ((receiptSon.chpaytype)=='周结') {
				receiptSon.resummary = getNextWeek()[0]+"~"+getNextWeek()[1];
			} else if ((receiptSon.chpaytype)=='月结') {
				receiptSon.resummary = getNextStartMonth(getBeforeDate(0))+"~"+getNextLastMonth(getBeforeDate(0));
			} else {
				receiptSon.resummary = "一次性结";
			}*/
			console.log(receiptSon.rsname + "+"
					+ receiptSon.rsablemoney + "+"
					+ receiptSon.rsfundsmoney + "+"
					+ receiptSon.rsowemoney+"+"+receiptSon.resummary);
			receiptList.push(receiptSon);
		}
		// 创建后台的接收路由
		var jsonInfo = JSON.stringify(receiptList);
		console.log("传递JSON总" + jsonInfo);
		var url = rootPath + '/pay/updateReceipt.shtml';
		var data = CommnUtil.ajax(url, {
			info : jsonInfo
		}, "json");
		console.log(data);
		if (data == "success") {
			layer.confirm('保存成功!是否关闭窗口?', function(index) {
				parent.grid.loadData();
				parent.layer.close(parent.pageii);
				return true;
			});
		} else {
			layer.alert('添加失败！', 3);
		}

	});
});
