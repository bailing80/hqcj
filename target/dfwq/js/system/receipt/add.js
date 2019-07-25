//单独验证某一个input  class="checkpass"
jQuery.validator.addMethod("checkRole", function(value, element) {
	return this.optional(element)
			|| ((value.length <= 10) && (value.length >= 3));
}, "角色名由3至10位字符组合构成");

// 点击提交按钮触发，获取表单元素的值

$(function() {
	$("#retimeofreceipt").val(getNowDateToSs());
	
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
	
	var formLength = 0;

	// 动态生成车牌号下拉框
	/*var url = rootPath + '/receipt/selectcar.shtml';
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
//						alert(data);
						if (data != "" && data != null) {
							// 动态获取车的收费信息各种
							var urlChargeSon = rootPath
									+ '/receipt/selectchargeson.shtml?cid=' + data;
							var chargeSonData = CommnUtil.ajax(urlChargeSon, null,
									"json");
							console.log("收费的各种信息:" + chargeSonData.length);
							var chargeH = "";
							formLength = chargeSonData.length;
							// 把应收金额存进去
							for (var i = 0; i < formLength; i++) {
//								根据支付方式，判断收取多少钱
								var num = 1;
								if (chargeSonData[i].chname == "日租金" && chargeSonData[i].chpaytype == "周结") {
									num = 7;
								}
								if (chargeSonData[i].chname == "日租金" && chargeSonData[i].chpaytype == "月结") {
									num = getNextMonthDay(getBeforeDate(0));
								}
								chargeSonData[i].chmoney = chargeSonData[i].chmoney * num;
//								alert(chargeSonData[i].chmoney);
								
								chargeH = "<tr style='margin:0 auto;'>"
									+ "<td style='margin-left:10px;display:inline-block;' ><label>费用名称</label> <input value='"
									+ chargeSonData[i].chname
									+ "' type='text' readonly='readonly' name='receiptSonFormMap.rsname' id='rsname' style='width:90px;' /></td>"
									+ "<td style='margin-left:10px;display:inline-block;'><label>支付方式</label> "
									+ "<input type='text' readonly='readonly' value='"
									+ chargeSonData[i].chpaytype
									+ "' name='receiptSonFormMap.rsablemoney' id='chpaytype"
									+ i
									+ "' style='width:90px;' /></td>"
									+ "<td style='margin-left:10px;display:inline-block;'><label>应收金额</label> "
									+ "<input type='text' readonly='readonly' value='"
									+ chargeSonData[i].chmoney
									+ "' name='receiptSonFormMap.rsablemoney' id='rsablemoney"
									+ i
									+ "' style='width:90px;' /></td>"
									+ "<td style='margin-left:10px;display:inline-block;'><label>实收金额</label><input type='text' name='receiptSonFormMap.rsfundsmoney' value='' id='rsfundsmoney"
									+ i
									+ "' style='width:90px;' /></td>"
									+ "<td style='margin-left:10px;display:inline-block;'><label>欠款</label><input type='text' readonly='readonly' name='receiptSonFormMap.rrsowemoney' value='' id='rsowemoney"
									+ i + "' style='width:90px;' /></td>" + "</tr>"
//									把拼接好的html追加到表单后面
							$("#Mytable").append(chargeH);
							}
							// alert(formLength);

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
//									if (rsfundsmoney != null) {
										// alert(rsowemoneyId);
										$(rsowemoneyId).val(rsablemoney- rsfundsmoney);
//									}
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

	$("#reredocumentid").val(getDh());
	$('#retimeofreceipt').datetimepicker({
		format : 'yyyy-mm-dd',// 日期格式
		todayBtn : true, // 是否显示今天那个按钮
		language : 'zh-CN', // 设置中文显示 需要引入几个js
		minView : 2, // 最小视图
		maxView : 1
	// 最大视图
	});
	// $("#eqdeviceid").val(getDh());
	$("form").validate({
		submitHandler : function(form) {// 必须写在验证前面，否则无法ajax提交
			ly.ajaxSubmit(form, {// 验证新增是否成功
				type : "post",
				dataType : "json",
				success : function(data) {
					if (data == "success") {
						layer.confirm('添加成功!是否关闭窗口?', function(index) {
							parent.grid.loadData();
							parent.layer.close(parent.pageii);
							return false;
						});
						$("#form")[0].reset();
					} else {
						layer.msg('添加失败！');
					}
				}
			});
		},

		errorPlacement : function(error, element) {// 自定义提示错误位置
			$(".l_err").css('display', 'block');
			// element.css('border','3px solid #FFCCCC');
			$(".l_err").html(error.html());
		},
		success : function(label) {// 验证通过后
			$(".l_err").css('display', 'none');
		}
	});
});
