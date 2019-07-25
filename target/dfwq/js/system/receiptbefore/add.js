//var ac = 0;
//var chargeSonData = 0;
// 点击提交按钮触发，获取表单元素的值
function deleteTr(obj) {
	alert("sadasd");
	$(obj).parents("tr").remove();
}
// 点击添加按钮获取
$(function() {
//	alert(getNextStartWeek());
//	alert(getNextLastMonth('2019-1-1'));
//	alert(getNextStartWeek()+"--"+getNextLastWeek());
//	alert(getNextMonth(new Date()));
	var iDays = 1;
	var ac = 0;
	// var formLength = 0;
	// var ac = 0;
	// 动态生成车牌号下拉框
	$("#retimeofreceipt").val(getNowDateToSs());
	$("#reredocumentid").val(getDh());
	$('#retimeofreceipt').datetimepicker({
		format : 'yyyy-mm-dd hh:mm:ss',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 0,
		startView : 0,
		minuteStep: 2,
		maxView : 1
	});
	$('#restarttime').datetimepicker({
		format : 'yyyy-mm-dd',// 日期格式
		todayBtn : true, // 是否显示今天那个按钮
		language : 'zh-CN', // 设置中文显示 需要引入几个js
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2, // 最小视图
		maxView : 1
	// 最大视图
	});
	$('#reendtime').datetimepicker({
		format : 'yyyy-mm-dd',// 日期格式
		todayBtn : true, // 是否显示今天那个按钮
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		language : 'zh-CN', // 设置中文显示 需要引入几个js
		minView : 2, // 最小视图
		maxView : 1
	// 最大视图
	});
	/*var url = rootPath + '/receiptbefore/selectcar.shtml';
	var data = CommnUtil.ajax(url, null, "json");
	var h = "<option>请选择车辆</option>";
	for (var i = 0; i < data.length; i++) {
		h += "<option value='" + data[i].cplateid + "' data-id='" + data[i].id
				+ "'>" + data[i].cplateid + "</option>";
	}
	$("#cplateid").html(h);*/

	$("#cplateid").change(function() {
		$("#Mytable").empty();
		/*var data = $(this).children("option:selected").attr(
				"data-id");*/
		carAndOwner(this);
		var data = $("#cid").val();
//		alert(data);
		if (data != "" && data != null) {
			// 动态获取车的收费信息各种
			var urlChargeSon = rootPath
					+ '/receipt/selectchargeson.shtml?cid=' + data;
			var chargeSonData = CommnUtil.ajax(urlChargeSon, null,
					"json");
			console.log("收费的各种信息:" + chargeSonData.length);
			if (chargeSonData.length > 0) {
				var chargeH = "";
				formLength = chargeSonData.length;
				
//				获取费用名称 为日租金的index
				var chpaytype = "日租金";
				var money = 0;
				var index = 0;
				// 把应收金额存进去
				for (var i = 0; i < formLength; i++) {
					if (chargeSonData[i].chname == "日租金") {
						index = i;
						money = chargeSonData[i].chmoney;
					}
					chargeH = "<tr style='margin:0 auto;'>"
						+ "<td style='margin-left:15px;display:inline-block;'><label>费用名称</label> <input value='"
						+ chargeSonData[i].chname
						+ "' type='text' readonly='readonly' name='receiptSonFormMap.rsname' id='rsname' style='width:90px;' /></td>"
						+ "<td style='margin-left:27px;display:inline-block;'><label>支付方式</label> "
						+ "<input type='text' readonly='readonly' value='"
						+ chargeSonData[i].chpaytype
						+ "' name='receiptSonFormMap.rsablemoney' id='chpaytype"
						+ i
						+ "' style='width:90px;' /></td>"
						+ "<td style='margin-left:27px;display:inline-block;'><label>应收金额</label> "
						+ "<input type='text' readonly='readonly' value='"
						+ chargeSonData[i].chmoney
						+ "' name='receiptSonFormMap.rsablemoney' id='rsablemoney"
						+ i
						+ "'  style='width:90px;'/></td>"
						+ "<td style='margin-left:27px;display:inline-block;'><label>实收金额</label><input type='text' name='receiptSonFormMap.rsfundsmoney' value='' id='rsfundsmoney"
						+ i
						+ "' style='width:90px;'/></td>"
						+ "<td style='margin-left:27px;display:inline-block;'><label>欠款</label><input type='text' readonly='readonly' name='receiptSonFormMap.rrsowemoney' value='' id='rsowemoney"
						+ i + "' style='width:90px;' /></td>" + "</tr>"
//						把拼接好的html追加到表单后面
				$("#Mytable").append(chargeH);
				}
			}else {
				layer.msg('此车未设置收费信息，请添加');
			}
			
			// alert(formLength);
//			获取预收款的天数
			
			$("#restarttime").change(function(){
				 $("#reendtime").change(function(){
					var time1 = $("#restarttime").val();
					var time2 = $("#reendtime").val();
					var aDate = time1.split("-")
					var oDate1 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]) //转换为12-18-2002格式
					var aDate = time2.split("-")
					var oDate2 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0])
				
					iDays = parseInt(Math.abs(oDate1 - oDate2) / 1000 / 60 / 60 /24)+1;
//					alert(iDays);
//					alert("钱"+money);
//					alert(money*iDays);
					$("#rsablemoney"+index).val(money*iDays);
					/*if (condition) {
						
					}*/
//					alert(iDays);
				});
			});
			
			for (var i = 0; i < formLength; i++) {

				// 实收金额ID
				var rsfundsmoneyId = "#rsfundsmoney" + i;
				// 欠款ID
				var rsowemoneyId = "#rsowemoney" + (i - 1);
				$(rsfundsmoneyId).change(function() {
	
					// 获取输入的实收金额钱
					var rsfundsmoney = $(this).val().trim();
					// 获取应收的金额
					var rsablemoney = $(this).parents().prev().children().next().val().trim();
					// 欠款的定位
					var rsowemoneyId = $(this).parents().next().children().next();
					console.log("实收金额钱："+ rsfundsmoney+ ",应收金额钱："+ rsablemoney);
//					if (rsfundsmoney != null) {
						// alert(rsowemoneyId);
						$(rsowemoneyId).val(rsablemoney- rsfundsmoney);
//					}
				});
			}
		}
		

	});
	
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
		receipt.restarttime = $("#restarttime").val();
		receipt.reendtime = $("#reendtime").val();
		
		receiptList[0] = receipt;
		console.log("固定表单元素值" + receiptList);
		// 遍历获取动态的表单元素值
		var otbl = document.getElementById('Mytable'); // 获取table对象，名字为otbl
		var anjianName = "";
		var anjianNum = "";
		var len = otbl.rows.length // 获取otbl的行数
//		 alert("行数"+len);
		for (var i = 0; i < len; i++) {
			var receiptSon = new Object();

			receiptSon.rsname = otbl.rows[i].cells[0].children[1].value;
			receiptSon.chpaytype = otbl.rows[i].cells[1].children[1].value;
			receiptSon.rsablemoney = otbl.rows[i].cells[2].children[1].value;
			receiptSon.rsfundsmoney = otbl.rows[i].cells[3].children[1].value;
			receiptSon.rsowemoney = otbl.rows[i].cells[4].children[1].value;
			
			if ((receiptSon.chpaytype)!='周结' && (receiptSon.chpaytype)!='月结') {
				receiptSon.resummary = "一次性结";
			} else {
				receiptSon.resummary = receipt.restarttime+"~"+receipt.reendtime;
			}
			
			
			if ((receiptSon.chpaytype)=='周结') {
//				receiptSon.resummary = getNextStartWeek()+"~"+getNextLastWeek();
				iDays = iDays/7;
			} else if ((receiptSon.chpaytype)=='月结') {
//				receiptSon.resummary = getNextStartMonth(getBeforeDate(0))+"~"+getNextLastMonth(getBeforeDate(0));
				iDays = iDays/30;
			} else {
				receiptSon.resummary = "一次性结";
			}
			
			console.log(receiptSon.rsname + "+"
					+ receiptSon.rsablemoney + "+"
					+ receiptSon.rsfundsmoney + "+"
					+ receiptSon.rsowemoney+"+"+receiptSon.resummary);
			receiptList.push(receiptSon);
		}
		
		receiptList[0].recount = iDays;

		
		// 创建后台的接收路由
		var jsonInfo = JSON.stringify(receiptList);
		console.log("传递JSON总" + jsonInfo);
		var url = rootPath + '/receiptbefore/saveAllEntity.shtml';
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
	
	/*$("#buttonone").click(function() {
		// alert("1111++" + chargeSonData);
		var chargeH = ""
				+ "<tr id='tr"
				+ ac
				+ "'>"
				+ "<td>"
				+ "<label>费用名称</label> "
				+ "<select id='rsname"
				+ ac
				+ "'><option value='请选择费用项'>请选择费用项</option></select></td>"
				+ "<td><label>支付方式</label> <input readonly='readonly' type='text' name='receiptSonFormMap.rsablemoney' value='' id='chpaytype"
				+ ac
				+ "' /></td>"
				+ "<td><label>应收金额</label> <input readonly='readonly' type='text' name='receiptSonFormMap.rsablemoney' value='' id='rsablemoney"
				+ ac
				+ "' /></td>"
				+ "<td><label>实收金额</label> <input type='text' name='receiptSonFormMap.rsfundsmoney' value='' id='rsfundsmoney"
				+ ac
				+ "' /></td>"
				+ "<td><label>欠款</label> <input type='text' name='receiptSonFormMap.rrsowemoney' value='' id='rsowemoney"
				+ ac
				+ "' /></td>"
				+ "<td><button onclick='deleteTr(this)' id='delete0' >删除</button></td></tr>"; 
		$("#Mytable").append(chargeH);
// 获取选中的车的id
		var data = $("#cplateid").children("option:selected").attr("data-id");
		// 动态获取车的收费信息各种
		var urlChargeSon = rootPath + '/receiptbefore/selectchargeson.shtml?id=' + data;
		chargeSonData = CommnUtil.ajax(urlChargeSon, null, "json");
		console.log("收费的各种信息:" + chargeSonData.length);
// 把费用项动态加入下拉框
		var h = "<option >请选择费用项</option>";
//		alert("++" + chargeSonData);
		for (var i = 0; i < chargeSonData.length; i++) {
			h += "<option value='" + chargeSonData[i].chname
					+ "' data-id='" + chargeSonData[i].id + "'>"
					+ chargeSonData[i].chname + "</option>";
		}
		var renameId = "#rsname" + ac;
		var chpaytypeId = "#chpaytype" + ac;
		var rsablemoneyId = "#rsablemoney" + ac;
		var rsfundsmoneyId = "#rsfundsmoney" + ac;
		var rsowemoneyId = "#rsowemoney" + ac;
        $(renameId).html(h);
    	$(renameId).change(function() {
			var idData =$(this).children("option:selected").attr("data-id"); 
			for (var i =  0; i < chargeSonData.length; i++) {
				if (chargeSonData[i].id ==idData) { 
					$(chpaytypeId).val(chargeSonData[i].chpaytype);
					$(rsablemoneyId).val(chargeSonData[i].chmoney);
				} 
			} 
		});
    	$(rsfundsmoneyId).change(function(){
    		var rsfundsmoney = $(this).val().trim();
    		var rsablemoney = $(this).parents().prev().children().next().val().trim();
    		$(rsowemoneyId).val(rsablemoney - rsfundsmoney);
    	})
		ac++;
	});*/
	
	
});
