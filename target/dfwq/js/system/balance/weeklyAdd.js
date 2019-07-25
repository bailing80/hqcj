//单独验证某一个input  class="checkpass"
jQuery.validator.addMethod("checkRole", function(value, element) {
	return this.optional(element)
			|| ((value.length <= 10) && (value.length >= 3));
}, "角色名由3至10位字符组合构成");

// 点击提交按钮触发，获取表单元素的值

$(function() {
	var formLength = 0;

	// 动态生成车牌号下拉框
	var url = rootPath + '/receipt/selectcar.shtml';
	var data = CommnUtil.ajax(url, null, "json");
	var h = "<option>请选择车辆</option>";
	for (var i = 0; i < data.length; i++) {
		h += "<option value='" + data[i].cplateid + "' data-id='" + data[i].id
				+ "'>" + data[i].cplateid + "</option>";
	}
	$("#cplateid").html(h);

	$("#cplateid")
			.change(
					function() {
						$("#Mytable").empty();
						var data = $(this).children("option:selected").attr(
								"data-id");
						$("#cid").val(data);
						// 动态获取车主信息
						var urlCarOwner = rootPath
								+ '/receipt/selectcarowner.shtml?id=' + data;
						var carOwnerData = CommnUtil.ajax(urlCarOwner, null,
								"json");
						console.log(carOwnerData);
						$("#coname").val(carOwnerData.coname);
						// 动态获取车的收费信息各种
						var urlChargeSon = rootPath
								+ '/receipt/selectchargeson.shtml?id=' + data;
						var chargeSonData = CommnUtil.ajax(urlChargeSon, null,
								"json");
						console.log("收费的各种信息:" + chargeSonData.length);
						var chargeH = "";
						formLength = chargeSonData.length;
						// 把应收金额存进去
						for (var i = 0; i < formLength; i++) {
							chargeH = "<tr  style='margin:0 auto;'>"
								+ "<td style='margin-left:10px;display:inline-block;'><label>费用名称</label> <input value='"
								+ chargeSonData[i].chname
								+ "' type='text' readonly='readonly' name='receiptSonFormMap.rsname' id='rsname' style='width:90px;' /></td>"
								+ "<td style='margin-left:10px;display:inline-block;'><label>应收金额</label> "
								+ "<input type='text' readonly='readonly' value='"
								+ chargeSonData[i].chmoney
								+ "' name='receiptSonFormMap.rsablemoney' id='rsablemoney"
								+ i
								+ "' style='width:90px;'/></td>"
								+ "<td style='margin-left:10px;display:inline-block;'><label>实收金额</label><input type='text' name='receiptSonFormMap.rsfundsmoney' value='' id='rsfundsmoney"
								+ i
								+ "' style='width:90px;'/></td>"
								+ "<td style='margin-left:10px;display:inline-block;'><label>欠款</label><input type='text' readonly='readonly' name='receiptSonFormMap.rrsowemoney' value='' id='rsowemoney"
								+ i + "' style='width:90px;' /></td>" + "</tr>"
//								把拼接好的html追加到表单后面
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
//								if (rsfundsmoney != null) {
									// alert(rsowemoneyId);
									$(rsowemoneyId).val(rsablemoney- rsfundsmoney);
//								}
							});
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
							receiptSon.rsablemoney = otbl.rows[i].cells[1].children[1].value;
							receiptSon.rsfundsmoney = otbl.rows[i].cells[2].children[1].value;
							receiptSon.rsowemoney = otbl.rows[i].cells[3].children[1].value;

							console.log(receiptSon.rsname + "+"
									+ receiptSon.rsablemoney + "+"
									+ receiptSon.rsfundsmoney + "+"
									+ receiptSon.rsowemoney);
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
							$("#form")[0].reset();
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
