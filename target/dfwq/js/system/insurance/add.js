	//单独验证某一个input  class="checkpass"
	 jQuery.validator.addMethod("checkRole", function(value, element) {
	 	 return this.optional(element) || ((value.length <= 10) && (value.length>=3));
	 }, "角色名由3至10位字符组合构成");
$(function(){ 
    $('#iinsurancestarttime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
    $('#iinsuranceendtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
});
	 $(function(){
			var url = rootPath + '/insurance/select.shtml';
			var data = CommnUtil.ajax(url, null, "json");
			var h = "<option value='0'>请选择车牌号</option>";
			for(var i=0; i<data.length; i++){
				h += "<option value='"+data[i].cplateid+"' data_id='"+data[i].id+"'>"+data[i].cplateid+ "</option>";
			}
			$("#cplateid").html(h);
			$("#cplateid").change(function(){
				var data = $(this).children("option:selected").attr("data_id");  
				$("#cid").val(data);
			});
		});

	 
	 $(function() {
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

