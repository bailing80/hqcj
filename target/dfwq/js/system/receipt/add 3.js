//var ac = 0;
//var chargeSonData = 0;
// 点击提交按钮触发，获取表单元素的值
function deleteTr(obj) {
	alert("是否删除");
	$(obj).parents("tr").remove();
}
// 点击添加按钮获取
$(function() {
//	alert("下周第一天:"+getNextWeek()[0]);
	
//	alert(getNextStartWeek());
//	alert(getNextLastMonth('2019-1-1'));
//	alert(getNextStartWeek()+"--"+getNextLastWeek());
//	alert(getNextMonth(new Date()));
	var ac = 0;
	// var formLength = 0;
	// var ac = 0;
	// 动态生成车牌号下拉框
	$("#reredocumentid").val(getDh());
	$('#retimeofreceipt').datetimepicker({
		format : 'yyyy-mm-dd',// 日期格式
		todayBtn : true, // 是否显示今天那个按钮
		language : 'zh-CN', // 设置中文显示 需要引入几个js
		minView : 2, // 最小视图
		maxView : 1
	// 最大视图
	});
	var url = rootPath + '/receipt/selectcar.shtml';
	var data = CommnUtil.ajax(url, null, "json");
	var h = "<option>请选择车辆</option>";
	for (var i = 0; i < data.length; i++) {
		h += "<option value='" + data[i].cplateid + "' data-id='" + data[i].id
				+ "'>" + data[i].cplateid + "</option>";
	}
	$("#cplateid").html(h);

	$("#cplateid").change(
			function() {
				$("#Mytable").empty();
				var data = $(this).children("option:selected").attr("data-id");
				$("#cid").val(data);
				// 动态获取车主信息
				var urlCarOwner = rootPath
						+ '/receipt/selectcarowner.shtml?id=' + data;
				var carOwnerData = CommnUtil.ajax(urlCarOwner, null, "json");
				console.log(carOwnerData);
				$("#coname").val(carOwnerData.coname);
				// 动态获取车的收费信息各种
				/*
				 * var urlChargeSon = rootPath +
				 * '/receipt/selectchargeson.shtml?id=' + data; chargeSonData =
				 * CommnUtil.ajax(urlChargeSon, null, "json");
				 * console.log("收费的各种信息:" + chargeSonData.length);
				 */

				/*
				 * for (var i = 0; i < formLength; i++) { // 实收金额ID var
				 * rsfundsmoneyId = "#rsfundsmoney" + i; // 欠款ID var
				 * rsowemoneyId = "#rsowemoney" + (i - 1);
				 * $(rsfundsmoneyId).change(function() { // 获取输入的实收金额钱 var
				 * rsfundsmoney = $(this) .val().trim(); // 获取应收的金额 var
				 * rsablemoney = $(this) .parents().prev() .children().next()
				 * .val().trim(); // 欠款的定位 var rsowemoneyId = $(this)
				 * .parents().next() .children().next(); console.log("实收金额钱：" +
				 * rsfundsmoney + ",应收金额钱：" + rsablemoney); // if (rsfundsmoney !=
				 * null) { // alert(rsowemoneyId); $(rsowemoneyId).val(
				 * rsablemoney - rsfundsmoney); // } }); }
				 */

			});
	$("#buttonone").click(function() {
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
				+ "<td><label>欠款</label> <input type='text' readonly='readonly' name='receiptSonFormMap.rrsowemoney' value='' id='rsowemoney"
				+ ac
				+ "' /></td>"
				+ "<td><button onclick='deleteTr(this)' id='delete0' >删除</button></td></tr>"; 
		$("#Mytable").append(chargeH);
// 获取选中的车的id
		var data = $("#cplateid").children("option:selected").attr("data-id");
		// 动态获取车的收费信息各种
		var urlChargeSon = rootPath + '/receipt/selectchargeson.shtml?id=' + data;
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
				receiptSon.chpaytype = otbl.rows[i].cells[1].children[1].value;
				receiptSon.rsablemoney = otbl.rows[i].cells[2].children[1].value;
				receiptSon.rsfundsmoney = otbl.rows[i].cells[3].children[1].value;
				receiptSon.rsowemoney = otbl.rows[i].cells[4].children[1].value;
				if ((receiptSon.chpaytype)=='周结') {
					receiptSon.resummary = getNextWeek()[0]+"~"+getNextWeek()[1];
				} else if ((receiptSon.chpaytype)=='月结') {
					receiptSon.resummary = getNextStartMonth(getBeforeDate(0))+"~"+getNextLastMonth(getBeforeDate(0));
				} else {
					receiptSon.resummary = "一次性结";
				}
				console.log(receiptSon.rsname + "+"
						+ receiptSon.rsablemoney + "+"
						+ receiptSon.rsfundsmoney + "+"
						+ receiptSon.rsowemoney+"+"+receiptSon.resummary);
				receiptList.push(receiptSon);
			}
			// 创建后台的接收路由
			var jsonInfo = JSON.stringify(receiptList);
			console.log("传递JSON总" + jsonInfo);
			var url = rootPath + '/receipt/saveAllEntity.shtml';
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
