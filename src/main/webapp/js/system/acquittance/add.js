	//单独验证某一个input  class="checkpass"
	jQuery.validator.addMethod("acmoney",function(value,element){
    var score = /^[+]{0,1}(\d+)$|^[+]{0,1}(\d+\.\d+)$/;
    return this.optional(element) || (score.test(value));
},"请输入大于0的数字");
$(function() {
	$("#actime").val(getNowDate());
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

		$("#acnumbers").val(getDh());
		
		var url = rootPath + '/accident/select.shtml';
		var data = CommnUtil.ajax(url, null,"json");
		var h = "";
		for(var i = 0;i<data.length;i++) {
			h += "<option value='"+data[i].cplateid+"' data-id='"+data[i].id+"'>"+data[i].cplateid+ "</option>";
		}
		$("#cplateid").html(h);
		
		$("#cplateid").change(function(){
			var data = $(this).children("option:selected").attr("data-id");
			$("#idtwo").val(data);
		});
		
	 	$("form").validate({
	 		submitHandler : function(form) {//必须写在验证前面，否则无法ajax提交
	 			ly.ajaxSubmit(form,{//验证新增是否成功
	 				type : "post",
	 				dataType:"json",
	 				success : function(data) {
	 					if (data=="success") {
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
	 		rules : {
				"acquittanceFormMap.acnumbers" : {
					required : true
				},
				"acquittanceFormMap.actime" : {
					required : true
				},
				"acquittanceFormMap.acname" : {
					required : true
				},
				"acquittanceFormMap.acup" : {
					required : true
				},
				"acquittanceFormMap.acmoney" : {
					required : true
				},
				"acquittanceFormMap.accompany" : {
					required : true
				},
				"acquittanceFormMap.acpayee" : {
					required : true
				},
			
			},
			messages : {
				"acquittanceFormMap.acnumbers" : {
					required : "请输入单据号"
				},
				"acquittanceFormMap.actime" : {
					required : "请输入收款日期"
				},
				"acquittanceFormMap.acname" : {
					required : "请输入名称"
				},
				"acquittanceFormMap.acup" : {
					required : "请输入上款系"
				},
				"acquittanceFormMap.acmoney" : {
					required :"请输入金额"
				},
				"acquittanceFormMap.accompany" : {
					required : "请输入收款单位"
				},
				"acquittanceFormMap.acpayee" : {
					required : "请输入收款人"
				},
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

