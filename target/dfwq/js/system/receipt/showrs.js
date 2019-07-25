/**
 * 点击收款的查询按钮，弹出收款的各种明细
 */
var reredocumentid ;
$(function() {
	//	根据单据号来查收款子表的各种信息
//	alert("asdasd");
	var receiptUrl = rootPath+ '/receipt/selectreceiptdata.shtml';
	var receiptdata = CommnUtil.ajax(receiptUrl, null,"json");
	console.log(receiptdata);
	if (receiptdata != null) {
		
		for (var i = 0; i < receiptdata.length; i++) {
//			动态展现收费项
			chargeH = "<tr style='margin:0 auto;'>"
				+ "<td style='margin-left:10px;display:inline-block;'><label>收费项</label> <input value='"
				+ receiptdata[i].rsname
				+ "' type='text' readonly='readonly' name='receiptSonFormMap.rsname' id='rsname' style='width:90px;'/></td>"
				+ "<td style='margin-left:10px;display:inline-block;'><label>应收金额</label> "
				+ "<input type='text' readonly='readonly' value='"
				+ receiptdata[i].rsablemoney
				+ "' name='receiptSonFormMap.rsablemoney' id='chpaytype"
				+ i
				+ "' style='width:90px;'/></td>"
				+ "<td style='margin-left:10px;display:inline-block;'><label>实收金额</label> "
				+ "<input type='text' readonly='readonly' value='"
				+ receiptdata[i].rsfundsmoney
				+ "' name='receiptSonFormMap.rsablemoney' id='rsablemoney"
				+ i
				+ "' style='width:90px;'/></td>"
				+ "<td style='margin-left:10px;display:inline-block;'><label>欠款</label><input readonly='readonly' type='text' name='receiptSonFormMap.rsfundsmoney' value='"
				+ receiptdata[i].rsowemoney+"' id='rsfundsmoney"
				+ i
				+ "' style='width:90px;' /></td>"
				+ "<td style='margin-left:10px;display:inline-block;'><label>收费区间</label><input type='text' readonly='readonly' name='receiptSonFormMap.rrsowemoney' value='"
				+ receiptdata[i].resummary+"' id='rsowemoney"
				+ i + "' style='width:180px;' /></td>" + "</tr>"
//				把拼接好的html追加到表单后面
		$("#Mytable").append(chargeH);
		}
		
	} else {
		alert("此车未查到数据")
	}
//	打印操作
	/*$("#print").click("click", function() {
//		表中的车牌号、车主姓名、单据号
		var cplateid = $("#cplateid").val();
		var coname = $("#coname").val();
		var reredocumentid = $("#reredocumentid").val();
		
		var shang = [];
		shang.push(cplateid);
		shang.push(coname);
		shang.push(reredocumentid);
		var shangJson = JSON.stringify(shang);
		alert(shangJson+"jsonData"+receiptdata);
		
		print();
	});*/
	
	
	$("#print").click("click", function() {
//		表中的车牌号、车主姓名、单据号,收款人，收款时间
		var cplateid = $("#cplateid").val();
		var coname = $("#coname").val();
		var reredocumentid = $("#reredocumentid").val();
		
		var rechamberlain = $("#rechamberlain").val();
		var retimeofreceipt = $("#retimeofreceipt").val();
		
		var shang = {
				cplateid:cplateid,
				coname:coname,
				reredocumentid:reredocumentid,
				rechamberlain:rechamberlain,
				retimeofreceipt:retimeofreceipt
		};
		/*shang.push(cplateid);
		shang.push(coname);
		shang.push(reredocumentid);*/
		/*var shangJson = JSON.stringify(shang);*/
//		json两个拼接成一个json
		
		var JsonData = [];
		JsonData[0] = shang;
		//alert(JsonData[0]);
		for (var i = 1; i <= receiptdata.length; i++) {
//			JsonData[i] = JSON.stringify(receiptdata[i-1]);
			JsonData[i] = receiptdata[i-1];
//			alert();
		}
		console.log(JsonData);
//		alert(shangJson+"jsonData"+receiptdata);
		MyPreview(JsonData);
	});
	
});
