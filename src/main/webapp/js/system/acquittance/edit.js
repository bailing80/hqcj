	//单独验证某一个input  class="checkpass"
	jQuery.validator.addMethod("acmoney",function(value,element){
    var score = /^[+]{0,1}(\d+)$|^[+]{0,1}(\d+\.\d+)$/;
    return this.optional(element) || (score.test(value));
},"请输入大于0的数字");
	 $(function() {
		 $('#actime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
		 $('#aclogintime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
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
				"accidentFormMap.cplateid" : {
					required : true
				},
				"accidentFormMap.acower" : {
					required : true
				},
				"accidentFormMap.actime" : {
					required : true
				},
				"accidentFormMap.acaddress" : {
					required : true,
				},
				"accidentFormMap.aclogin" : {
					required : true
				},
				"accidentFormMap.aclogintime" : {
					required : true
				},
				/*"accidentFormMap.acsituation" : {
					required : true
				},
				"accidentFormMap.acliability" : {
					required : true
				},
				"accidentFormMap.acclaimmoney" : {
					required : true
				},
				"accidentFormMap.aciscompromise" : {
					required : true,
				},
				"accidentFormMap.aciscourt" : {
					required : true
				},
				"accidentFormMap.acaccuser" : {
					required : true
				},
				"accidentFormMap.acacourtmonry" : {
					required : true
				},
				"accidentFormMap.acremark" : {
					required : true
				}*/
			},
			messages : {
				"accidentFormMap.cplateid" : {
					required : "请输入车牌照号"
				},
				"accidentFormMap.acower" : {
					required : "请输入车主"
				},
				"accidentFormMap.actime" : {
					required : "请输入事故时间"
				},
				"accidentFormMap.acaddress" : {
					required : "请输入事故地点"
				},
				"accidentFormMap.aclogin" : {
					required : "请输入登记人"
				},
				"accidentFormMap.aclogintime" : {
					required : "请选输入登记日期"
				},
			/*	"accidentFormMap.acsituation" : {
					required : "请输入事故情况"
				},
				"accidentFormMap.acliability" : {
					required : "请输入事故责任"
				},
				"accidentFormMap.acclaimmoney" : {
					required : "请输入理赔金额"
				},
				"accidentFormMap.aciscompromise" : {
					required : "请选择是否和解"
				},
				"accidentFormMap.aciscourt" : {
					required : "请选择是否起诉"
				},
				"accidentFormMap.acaccuser" : {
					required : "请输入原告人"
				},
				"accidentFormMap.acacourtmonry" : {
					required : "请输入判决金额"
				},
				"accidentFormMap.acremark" : {
					required : "请输入评价"
				}*/
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
		 
			$("#submission").click(function() {
				var data = "success";
				if (data == "success") {
					layer.confirm('添加成功!是否关闭窗口?', function(index) {
						parent.grid.loadData();
						parent.layer.closeAll(parent.pageii.pageii);
						return true;
					});
		    
				} else {
					alert(data);
					layer.alert('添加失败！');
				}
			});
	 });

