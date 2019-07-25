//单独验证某一个input  class="checkpass"

$(function() {

	$("form").validate({
		submitHandler : function(form) {// 必须写在验证前面，否则无法ajax提交
			ly.ajaxSubmit(form, {// 验证新增是否成功
				type : "post",
				dataType : "json",//ajaxSubmi带有文件上传的。不需要设置json
				success : function(data) {
					if (data == "success") {
						layer.confirm('更新成功!是否关闭窗口?', function(index) {
							parent.grid.loadData();
							parent.layer.close(parent.pageii);
							return false;
						});
					} else {
						layer.msg('更新失败！', 3);
					}
				}
			});
		},
 		rules : {
			"dictionarysonFormMap.did" : {
				required : true
			},
			"dictionarysonFormMap.dsorder" : {
				required : true
			},
			"dictionarysonFormMap.dstypename" : {
				required : true
			},
			"dictionarysonFormMap.dsremark" : {
				required : true,
			}
		},
		messages : {
			"dictionarysonFormMap.did" : {
				required : "请输入字典编号"
			},
			"dictionarysonFormMap.dsorder" : {
				required : "请输入序号"
			},
			"dictionarysonFormMap.dstypename" : {
				required : "请输入类型名称"
			},
			"dictionarysonFormMap.dsremark" : {
				required : "请输入备注"
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
 	$("#did").change(function(){
 		var option = $(this).find("option:selected").text();
 		$("#hide_did").val($(this).val());
 		$("#hide_typename").val(option);
		})
});
