$(function() {
	// 异步加载所有菜单列表
	$("form").validate({
		submitHandler : function(form) {// 必须写在验证前面，否则无法ajax提交
			ly.ajaxSubmit(form,{//验证新增是否成功
				type : "post",
				dataType : "json",
				success : function(data) {
					if (data == "success") {
						layer.confirm('编辑成功!是否关闭窗口?', function(index) {
							parent.grid.loadData();
				        	parent.layer.close(parent.pageii);
				        	return false;
						});
					} else {
						layer.alert('编辑失败！', 3);
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
	
	var url = rootPath + '/department/select.shtml';
	var data = CommnUtil.ajax(url, null,"json");//表中所有数据
	var h = "";
	var zhi=$("#laoda").val();

	for(var i = 0;i<data.length;i++) {
		alert(data[i].id);
		if(zhi==data[i].id){
			var str="true";
			
			h += "<option value='"+data[i].id + "' selected=\""+str+"\">" + data[i].dname+ "</option>";
			
		}else{
			h += "<option value='"+data[i].id + "'>" + data[i].dname+ "</option>";
		}
			
	}
	$("#dlastid").html(h);
	
});
