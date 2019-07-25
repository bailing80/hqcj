	//单独验证某一个input  class="checkpass"
	 jQuery.validator.addMethod("checkRole", function(value, element) {
	 	 return this.optional(element) || ( (value.length>=3));
	 }, "设备编号由3至10位字符组合构成");
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
	 		rules : {
				"equipmentFormMap.eqdeviceid" : {
					required : true
				},
				"equipmentFormMap.eqequipmenttype" : {
					required : true
				},
				"equipmentFormMap.eqname" : {
					required : true
				},
				"equipmentFormMap.eqtype" : {
					required : true,
				},
				"equipmentFormMap.eqfactory" : {
					required : true
				},
				"equipmentFormMap.sbstatus" : {
					required : true
				}
			},
			messages : {
				"acquittanceFormMap.actime" : {
					required : "请输入设备编号"
				},
				"acquittanceFormMap.acname" : {
					required : "请输入设备型号"
				},
				"acquittanceFormMap.acup" : {
					required : "请输入名称"
				},
				"acquittanceFormMap.acmoney" : {
					required : "请输入设备类型"
				},
				"acquittanceFormMap.accompany" : {
					required : "请输入设备厂家"
				},
				"acquittanceFormMap.accompany" : {
					required : "请选择设备类型"
				}
			},
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

