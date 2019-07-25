//单独验证某一个input  class="checkpass"
jQuery.validator.addMethod("checkRole", function(value, element) {
	return this.optional(element)
			|| ((value.length <= 10) && (value.length >= 3));
}, "角色名由3至10位字符组合构成");
$(function() {

// 根据车牌号查询车的日租金和首付款添加进下面列表
	/*var urlCar = rootPath + '/charge/selectthree.shtml';
	var dataCar = CommnUtil.ajax(urlCar, null, "json");// 表中所有数据
	var h = "<option value=''>请选择车辆牌照号</option>";
	var cid = 0;
	for (var i = 0; i < dataCar.length; i++) {
		h += "<option value='" + dataCar[i].cplateid + "' data-id='" + dataCar[i].id
				+ "'>" + dataCar[i].cplateid + "</option>";
	}
	$("#cplateid").html(h);*/
	$("#cplateid").change(function() {
//		var data = $(this).children("option:selected").attr("data-id");
		cplateToCid(this);
		var data = $("#cid").val();
//		alert(data);
		if (data != "" && data != "null") {
			// 获取车的日租金信息和首付款
			var urlRents = rootPath + '/charge/selectrents.shtml?cid='+data;
			var dataRents = CommnUtil.ajax(urlRents, null, "json");
//			alert(dataRents);
			if (typeof(dataRents.id) != "undefined") {
				console.log("当前车日租金"+dataRents.daymoney);
				$("#rents").val(dataRents.daymoney);
				$("#chsetmoney").val(dataRents.daymoney);
				
				console.log("当前车首付款"+dataRents.firstmoney);
				$("#chfirstmoney").val(dataRents.firstmoney);
				$("#firstmoney").val(dataRents.firstmoney);
			}else {
				layer.msg('请在日租金设置里添加此车辆信息');
			}
		}
	});
	
	// 点击提交按钮触发，获取表单元素的值
	$("#addAll").click(function() {
//		定义数组保存表单所有数据
		var chargeList = new Array();
		
		var charge = new Object();
		charge.cplateid = $("#cplateid").val();
		charge.cid = $("#cid").val();
		charge.chsetmoney = $("#chsetmoney").val();
		charge.chfirstmoney = $("#chfirstmoney").val();
		chargeList[0] = charge;
		
		console.log("固定表单元素值"+chargeList);
//		遍历获取动态的表单元素值
		var otbl = document.getElementById('Mytable'); // 获取table对象，名字为otbl
		var anjianName = "";
		var anjianNum = "";
		var len = otbl.rows.length // 获取otbl的行数
		// alert(len);
		
		for (var i = 0; i < len; i++) {
			var chargeSon = new Object();
			// children1为支付方式
			chargeSon.chname = otbl.rows[i].cells[0].children[1].value;
			chargeSon.chpaytype = otbl.rows[i].cells[1].children[1].value;
			chargeSon.chmoney = otbl.rows[i].cells[2].children[1].value;
			// zhifu = otbl.rows[i].cells[2].children[1].tagName;
			// alert(xiangmu);
			console.log(chargeSon.chname + "+" + chargeSon.chpaytype + "+" + chargeSon.chmoney);
			chargeList.push(chargeSon);
		}
		var jsonInfo = JSON.stringify(chargeList);
		console.log("传递JSON总"+jsonInfo);
		var url = rootPath + '/charge/saveAllEntity.shtml';
		var data = CommnUtil.ajax(url, {info : jsonInfo},"json");
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


	 
});
//动态添加表单元素
function Ctable(row, col) {// 表格的行数与列数
// alert("我在js中了");
	var url = rootPath + '/charge/select.shtml';
	var data = CommnUtil.ajax(url, null, "json");// 表中所有数据
	// alert(data[0].dstypename);
	var h = "<option value=''>请选择费用项</option>";
	for (var i = 0; i < data.length; i++) {
		h += "<option value='" + data[i].dstypename + "' data-id='"
				+ data[i].did + "'>" + data[i].dstypename + "</option>";
	}
	// alert(h);
	var url = rootPath + '/charge/selecttwo.shtml';
	var data = CommnUtil.ajax(url, null, "json");// 表中所有数据
	// alert(data[0].dstypename);
	var h2 = "<option value='一次性结'>一次性结</option>";
	/*for (var i = 0; i < data.length; i++) {
		h2 += "<option value='" + data[i].dstypename + "' data-id='"
				+ data[i].did + "'>" + data[i].dstypename + "</option>";
	}*/
	
	// alert(h2);
	var objtable = document.getElementById("Mytable");// 获取table标签
	for (i = 0; i < row; i++) {
		var tr = document.createElement("tr");// 创建行
		for (j = 0; j < col; j++) {
			if (j == 0) {
				var label = document.createElement("label");// 创建列
				label.innerText = "费用名称";
				// tr.appendChild(td);// 向行中添加子节点列
			} else if (j == 1) {
				var td = document.createElement("td");// 创建列
				var label = "<label>费用名称</label>";
				td.innerHTML = label + "<select id='idone'>" + h + "</select>";
				tr.appendChild(td);// 向行中添加子节点列

			} else if (j == 2) {
				var td = document.createElement("label");// 创建列
				td.innerText = "支付方式";
				// tr.appendChild(td);// 向行中添加子节点列
			} else if (j == 3) {
				var td = document.createElement("td");// 创建列
				var label = "<label>支付方式</label>";
				td.innerHTML = label + "<select id='idthree' >" + h2
						+ "</select>";
				tr.appendChild(td);// 向行中添加子节点列
			} else if (j == 4) {
				var td = document.createElement("label");// 创建列
				td.innerText = "金额";
				// tr.appendChild(td);// 向行中添加子节点列
			} else if (j == 5) {
				var td = document.createElement("td");// 创建列
				var label = "<label>金额</label>";
				td.innerHTML = label + "<input type='text' id='money'/>";
				tr.appendChild(td);// 向行中添加子节点列
			} else if (j == 6) {
				var td = document.createElement("td");// 创建列
				td.innerHTML = "<input type='button' onclick='deleteFun(this)' class='removeVar' value=\"删除\"/>";
				tr.appendChild(td);// 向行中添加子节点列
			}
		}
		objtable.appendChild(tr);// 添加子节点tr
	}
}
//删除按钮
function deleteFun(obj) {
	alert("要删除吗？");
	// alert($(this).parent().);
	$(obj).parents("tr").remove();
	/*
	 * var objtable=document.getElementById("Mytable");//获取table标签
	 * objtable.removeChild();
	 */
}
// 删除按钮点击
/*
 * $('form').on('click', '.removeVar', function(){ alert("asd");
 * $(this).parent().remove(); //varCount--; });
 */
/*function changeColor() {
	var tr = document.getElementsByTagName("tr");
	for (var i = 0; i < tr.length; i++) {
		if (i % 2 == 0) {
			tr[i].style.backgroundColor = "blue";
		}
	}
}*/
//刚打开增加按钮出来的数据
/*$(function() {
	var url = rootPath + '/charge/select.shtml';
	var data = CommnUtil.ajax(url, null, "json");// 表中所有数据
	var h = "<option value=''>请选择费用项</option>";
	for (var i = 0; i < data.length; i++) {
		h += "<option value='" + data[i].dstypename + "' data-id='"
				+ data[i].did + "'>" + data[i].dstypename + "</option>";
	}
	$("#idone").html(h);
	$("#idone").change(function() {
		var data = $(this).children("option:selected").attr("data-id");
		$("#idtwo").val(data);
	});
});*/

$(function() {
	var url = rootPath + '/charge/selecttwo.shtml';
	var data = CommnUtil.ajax(url, null, "json");// 表中所有数据
	var h = "<option >请选择支付方式</option>";
	for (var i = 0; i < data.length; i++) {
		h += "<option value='" + data[i].dstypename + "' data-id='"
				+ data[i].did + "'>" + data[i].dstypename + "</option>";
	}
	$("#idthree").html(h);
	$("#idthree").change(function() {
		var data = $(this).children("option:selected").attr("data-id");
		$("#idfour").val(data);
	});
});

$(function() {
	$("#eqdeviceid").val(getDh());
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
		/*
		 * rules : { "chargeFormMap.cid" : { required : true },
		 * "chargeFormMap.cplateid" : { required : true },
		 * "chargeFormMap.chsetmoney" : { required : true },
		 * "chargeFormMap.chfirstmoney" : { required : true, } }, messages : {
		 * "acquittanceFormMap.cid" : { required : "请输入设备编号" },
		 * "acquittanceFormMap.cplateid" : { required : "请输入设备型号" },
		 * "acquittanceFormMap.chsetmoney" : { required : "请输入名称" },
		 * "acquittanceFormMap.chfirstmoney" : { required : "请输入设备类型" } },
		 */

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
