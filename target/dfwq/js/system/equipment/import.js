$(function() {
	$("#import").validate({
		
		submitHandler : function(form) {// 必须写在验证前面，否则无法ajax提交
			ly.ajaxSubmit(form, {// 验证新增是否成功
				type : "post",
				dataType : "json",
				success : function(data){
	 					if (data=="success") {
	 						layer.confirm('导入Excel成功!是否关闭窗口?', function(index) {
	 							parent.grid.loadData();
					        	parent.layer.close(parent.pageii);
					        	return false;
	 						});
	 						$("#form")[0].reset();
	 					} else if(data == "error1") {
						layer.msg('上传文件格式有误或者Excel工作薄为空！', {icon: 7, time: 5000});
					}else if(data == "error") {
						layer.msg('上传文件不存在！', {icon: 7, time: 5000});
					}
					else if(data == "error3") {
						layer.msg('设备编号不能为空！', {icon: 7, time: 5000});
					}
					else if(data == "error4") {
						layer.msg('设备型号不能为空！', {icon: 7, time: 5000});
					}
					else if(data == "error5") {
						layer.msg('设备名称不能为空！', {icon: 7, time: 5000});
					}
					else if(data == "error6") {
						layer.msg('类型不能为空！', {icon: 7, time: 5000});
					}
					else if(data == "error7") {
						layer.msg('厂家不能为空！', {icon: 7, time: 5000});
					}
					else if(data == "error8") {
						layer.msg('设备状态不能为空！', {icon: 7, time: 5000});
					}
					else if(data == "error2") {
						layer.msg('Excel表格列数必须是6列！', {icon: 7, time: 5000});
					}
					else {
						layer.msg('导入失败，检测到为未识别错误！', {icon: 2, time: 5000});
					}
					
				},
			error : function(data){
				layer.msg('导入表格中存在数据格式不对！', {icon: 7, time: 5000});
			}
			
			});
		}
	
	});
	
});
