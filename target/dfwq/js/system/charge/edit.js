	//单独验证某一个input  class="checkpass"
	 /*jQuery.validator.addMethod("checkRole", function(value, element) {
	 	 return this.optional(element) || ( (value.length>=3));
	 }, "设备编号由3至10位字符组合构成");*/

		var url = rootPath + '/charge/select.shtml';
		var data = CommnUtil.ajax(url, null,"json");//表中所有数据
		function selectsFun(value,idcount){
		var s="#"+"chname"+idcount;
		var h = "";
		for(var i = 0;i<data.length;i++) {
			if(data[i].dstypename==value){
				h += "<option value='"+data[i].dstypename+"' selected='selected' data-id='"+data[i].dstypename+"'>"+data[i].dstypename+ "</option>";
			}else{
				h += "<option value='"+data[i].dstypename+"' data-id='"+data[i].dstypename+"'>"+data[i].dstypename+ "</option>";
			}
		}
		$(s).html(h);
	}
			 
	var urltwo = rootPath + '/charge/selecttwo.shtml';
	var datatwo = CommnUtil.ajax(urltwo, null,"json");//表中所有数据
	function selectsFuntwo(value,idcount){
		var s="#"+"chpaytype"+idcount;
		var h = "";
		for(var i = 0;i<datatwo.length;i++) {
			if(datatwo[i].dstypename==value){
				h += "<option value='"+datatwo[i].dstypename+"' selected='selected' data-id='"+datatwo[i].dstypename+"'>"+datatwo[i].dstypename+ "</option>";
			}else{
				h += "<option value='"+datatwo[i].dstypename+"' data-id='"+datatwo[i].dstypename+"'>"+datatwo[i].dstypename+ "</option>";
			}
		}
		$(s).html(h);
	}
	
//	jsp中的一个下拉框  查询支付方式
	var urlthree = rootPath + '/charge/selecttwo.shtml';
	var datathree = CommnUtil.ajax(urlthree, null,"json");//表中所有数据
	function selectpayname(){
//		alert("进来了");
		var cid=$("#selectpaytypebycid").val();
//		alert(cid);
		if(cid){
//			查询日租金的原支付方式
			var urlfour = rootPath + '/charge/selectpaytype.shtml?cid='+cid;
			var datayuanpaytype = CommnUtil.ajax(urlfour, null,"json");//表中所有数据
//			alert(datayuanpaytype);
			var value=datayuanpaytype[0].chpaytype;
//			alert("日租金+"+value);
			var id=datayuanpaytype[0].id;
//			alert(id);
			$("#selectpaytypebycid").val(id);//将查询到的日租金id赋值到影藏域  
//			alert("开始查询首付款");
//			查询首付款的id
			var urlfiver = rootPath + '/charge/selectchfirstmoneyid.shtml?cid='+cid;
			var datayuanpaytypes = CommnUtil.ajax(urlfiver, null,"json");//表中所有数据
//			alert("首付款+"+datayuanpaytype);
//			alert(value);
			var id=datayuanpaytypes[0].id;
//			alert(id);
			$("#selectchfirstmoneybycid").val(id);//将查询到的首付款id赋值到影藏域  
//			console.log(value);
			
			var h = "<option>请选择</option>";
			for(var i = 0;i<datatwo.length;i++) {
				if(datatwo[i].dstypename==value){
					h += "<option value='"+datatwo[i].dstypename+"' selected='selected' data-id='"+datatwo[i].dstypename+"'>"+datatwo[i].dstypename+ "</option>";
				}else{
					h += "<option value='"+datatwo[i].dstypename+"' data-id='"+datatwo[i].dstypename+"'>"+datatwo[i].dstypename+ "</option>";
				}
			}
//			alert(h);
			$("#selectpaytype").html(h);
		}else{
			alert("无车ID。");
		}

		
	}
	
	 $(function() {
		 $("form").validate({
	 		submitHandler : function(form) {//必须写在验证前面，否则无法ajax提交
	 			ly.ajaxSubmit(form,{//验证新增是否成功
	 				type : "post",
	 				dataType:"json",
	 				success : function(data) {
	 					if (data=="success") {
	 						layer.confirm('更新成功!是否关闭窗口?', function(index) {
	 							parent.grid.loadData();
					        	parent.layer.close(parent.pageii);
					        	return false;
	 						});
	 					} else {
	 						layer.alert('添加失败！', 3);
	 					}
	 				}
	 			});
	 		},
	 		/*rules : {
				"chargeFormMap.cid" : {
					required : true
				},
				"chargeFormMap.cplateid" : {
					required : true
				},
				"chargeFormMap.chsetmoney" : {
					required : true
				},
				"chargeFormMap.chfirstmoney" : {
					required : true,
				}
			},
			messages : {
				"acquittanceFormMap.cid" : {
					required : "请输入设备编号"
				},
				"acquittanceFormMap.cplateid" : {
					required : "请输入设备型号"
				},
				"acquittanceFormMap.chsetmoney" : {
					required : "请输入名称"
				},
				"acquittanceFormMap.chfirstmoney" : {
					required : "请输入设备类型"
				}
			},*/
	 		errorPlacement : function(error, element) {//自定义提示错误位置
	 			$(".l_err").css('display','block');
	 			//element.css('border','3px solid #FFCCCC');
	 			$(".l_err").html(error.html());
	 		},
	 		success: function(label) {//验证通过后
	 			$(".l_err").css('display','none');
	 		}
	 	});
	 });
	 function deleteFun(obj){
		 	alert("已经删除！");
		 	var buttonzhi="#"+$(obj).attr("myvalue");
		 	var id=$(buttonzhi).val();
			$(obj).parents("tr").remove();
			var url = rootPath + '/charge/deletechargeson.shtml?id='+id;
			var data = CommnUtil.ajax(url, null,"json");//表中所有数据
	 }
//动态回显chargeson中的数据————
	 function Ctable(row, col) {// 表格的行数与列数
//		 费用名称的选择下拉框————start
	 	var url = rootPath + '/charge/select.shtml';
	 	var data = CommnUtil.ajax(url, null, "json");// 表中所有数据
	 	var h = "<option value=''>请选择费用项</option>";
	 	for (var i = 0; i < data.length; i++) {
	 		h += "<option value='" + data[i].dstypename + "' data-id='"
	 				+ data[i].did + "'>" + data[i].dstypename + "</option>";
	 	}
//		 费用名称的选择下拉框————end
//		 支付方式的选择下拉框————start
	 	var url = rootPath + '/charge/selecttwo.shtml';
	 	var data = CommnUtil.ajax(url, null, "json");// 表中所有数据
	 	// alert(data[0].dstypename);
	 	var h2 = "<option value=''>请选择支付方式</option>";
	 	for (var i = 0; i < data.length; i++) {
	 		h2 += "<option value='" + data[i].dstypename + "' data-id='"
	 				+ data[i].did + "'>" + data[i].dstypename + "</option>";
	 	}
//		  支付方式的选择下拉框————end
//	 	 alert(h2);
	 	var objtable = document.getElementById("Mytable");// 获取table标签
	 	
	 
	 	
	 	for (i = 0; i < row; i++) {
	 		var tr = document.createElement("tr");// 创建行
	 		for (j = 0; j < col; j++) {
	 			if(j==0){
	 				var label = document.createElement("label");// 创建列
	 				label.innerText = "";
	 			}else if(j==1){
	 				var td = document.createElement("td");// 创建列
	 				var label = "<label></label>";
	 				td.innerHTML = label + "<input type='hidden' value='${element.id}'/>";
	 				tr.appendChild(td);// 向行中添加子节点列
	 			}else if (j == 2) {
	 				var label = document.createElement("label");// 创建列
	 				label.innerText = "费用名称";
	 				// tr.appendChild(td);// 向行中添加子节点列
	 			} else if (j == 3) {
	 				var td = document.createElement("td");// 创建列
	 				var label = "<label>费用名称</label>";
	 				td.innerHTML = label + "<select id='idone'>" + h + "</select>";
	 				tr.appendChild(td);// 向行中添加子节点列
	 			} else if (j == 4) {
	 				var td = document.createElement("label");// 创建列
	 				td.innerText = "支付方式";
	 				// tr.appendChild(td);// 向行中添加子节点列
	 			} else if (j == 5) {
	 				var td = document.createElement("td");// 创建列
	 				var label = "<label>支付方式</label>";
	 				td.innerHTML = label + "<select id='idthree' >" + h2
	 						+ "</select>";
	 				tr.appendChild(td);// 向行中添加子节点列
	 			} else if (j == 6) {
	 				var td = document.createElement("label");// 创建列
	 				td.innerText = "金额";
	 				// tr.appendChild(td);// 向行中添加子节点列
	 			} else if (j == 7) {
	 				var td = document.createElement("td");// 创建列
	 				var label = "<label>金额</label>";
	 				td.innerHTML = label + "<input type='text' id='money'/>";
	 				tr.appendChild(td);// 向行中添加子节点列
	 			} else if (j == 8) {
	 				var td = document.createElement("td");// 创建列
	 				td.innerHTML = "<input type='button' onclick='deleteFun(this)' class='removeVar' value=\"删除\"/>";
	 				tr.appendChild(td);// 向行中添加子节点列
	 			}
	 		}
	 		objtable.appendChild(tr);// 添加子节点tr____append追加     
	 	}
	 	// changeColor();//隔行换颜色
	 }
	function saveAlltoBase(){
//	 $("#saveAll").click(function() {
//			定义数组保存表单所有数据
			var chargeList = new Array();
			var charge = new Object();
			charge.id=$("#id").val();
			charge.cplateid = $("#cplateid").val();
			charge.cid = $("#cid").val();
			charge.chsetmoney = $("#chsetmoney").val();
			charge.chfirstmoney = $("#chfirstmoney").val();
			chargeList[0] = charge;
			console.log("固定表单元素值"+chargeList);
//			遍历获取动态的表单元素值
			var otbl = document.getElementById('Mytable'); // 获取table对象，名字为otbl
			var anjianName = "";
			var anjianNum = "";
			var len = otbl.rows.length // 获取otbl的行数
			for (var i = 0; i < len; i++) {
				var chargeSon = new Object();
				// children1为支付方式
				chargeSon.id = otbl.rows[i].cells[0].children[0].value;
				chargeSon.chname = otbl.rows[i].cells[1].children[1].value;
				chargeSon.chpaytype = otbl.rows[i].cells[2].children[1].value;
				chargeSon.chmoney = otbl.rows[i].cells[3].children[1].value;
//				alert(chargeSon.id+"  "+chargeSon.chname+"  "+chargeSon.chpaytype+"  "+chargeSon.chmoney);
				// zhifu = otbl.rows[i].cells[2].children[1].tagName;
				// alert(xiangmu);
				//alert(chargeSon.id+" "+chargeSon.chname+"  "+chargeSon.chpaytype+"  "+chargeSon.chmoney);
				chargeList.push(chargeSon);
			}
			var jsonInfo = JSON.stringify(chargeList);
			console.log("传递JSON总"+jsonInfo);
			var url = rootPath + '/charge/editsaveAllEntity.shtml';
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
//	});
	}
