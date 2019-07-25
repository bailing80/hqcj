$(function() {
//	下拉框从数据的回显
		/* var url = rootPath + '/carerror/select.shtml';
			var data = CommnUtil.ajax(url, null,"json");
			var h = "<option value=''>请选择车辆牌照号</option>";
//			alert(data);
			for(var i = 0;i<data.length;i++) {
				h += "<option name=\"carErrorFormMap.cplateid\" value='"+data[i].cplateid+"' data-id='"+data[i].cplateid+"'>"+data[i].cplateid+ "</option>";
			}
			$("#idone").html(h);
			
			$("#idone").change(function(){
				var data = $(this).children("option:selected").attr("data-id");
				$("#cplateid").val(data);
			});*/
	
$('#ceerrortime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	$("#form").validate({
		submitHandler : function(form) {// 必须写在验证前面，否则无法ajax提交
			ly.ajaxSubmit(form, {// 验证新增是否成功
				type : "post",
				dataType : "json",
				success : function(data) {
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
