$(function() {
	// jQuery根据ip获取城市
//	$("#cplateid").val(getCP());
	getCP("#cplateid");
	$('#crecordtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		minView : 2,
		maxView : 1
	});
	$('#cabolishtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		minView : 2,
		maxView : 1
	});
	$("#carform").validate({
		submitHandler : function(form) {// 必须写在验证前面，否则无法ajax提交
			ly.ajaxSubmit(form, {// 验证新增是否成功
				type : "post",
				dataType : "json",
				success : function(data) {
//					alert(data);
					if (data == "success") {
						layer.confirm('保存成功!是否关闭窗口?'/*, function(index) {
							parent.grid.loadData();
							parent.layer.close(parent.pageii);
							return true;
						}*/);
//						$("#form")[0].reset();
					} else {
						layer.alert('添加失败！', 3);
					}
				}
			});
		},
		rules : {
			"carFormMap.cplateid" : {
				required : true,
				remote : { // 异步验证是否存在
					type : "POST",
					url : 'isExist.shtml',
					data : {
						name : function() {
							return $("#cplateid").val();
						}
					}
				}
			}
		},
		messages : {
			"carFormMap.cplateid" : {//校验
				required : "请输入车牌号",
				remote : "该车牌号已经存在"
			}
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
