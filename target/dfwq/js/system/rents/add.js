jQuery.validator.addMethod("firstmoney",function(value,element){
                var score = /^[0-9]*$/;
                return this.optional(element) || (score.test(value));
            },"请输入大于0的数字");
$(function() {
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
						layer.alert('添加失败！', 3);
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
	
	var url = rootPath + '/rents/select.shtml';
	var data = CommnUtil.ajax(url, null,"json");//表中所有数据
	var h = "<option value='0'>请选择车辆牌照号</option>";
	for(var i = 0;i<data.length;i++) {
		h += "<option value='"+data[i].cplateid+"' data-id='" + data[i].id + "'>"+data[i].cplateid+ "</option>";
	}
	$("#cplateid").html(h);
	$("#cplateid").change(function(){
		var data = $(this).children("option:selected").attr("data-id");
		$("#idtwo").val(data);
		$("#cid").val(data);
	});
	
});
