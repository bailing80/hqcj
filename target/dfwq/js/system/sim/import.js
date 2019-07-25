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
 					} else if(data == "error") {
						layer.msg('上传文件格式有误或者Excel工作薄为空！', {icon: 7, time: 5000});
					}else if(data == "errorbucunzai") {
						layer.msg('上传文件不存在！', {icon: 7, time: 5000});
					}
					else if(data == "errornotsim") {
						layer.msg('导入表格中sim编号不能为空！', {icon: 7, time: 5000});
					}
					else if(data == "errorsnoty") {
						layer.msg('导入表格中运营商不能为空！', {icon: 7, time: 5000});
					}
					else if(data == "errornotk") {
						layer.msg('导入表格中卡号不能为空！', {icon: 7, time: 5000});
					}
					else if(data == "errornotl") {
						layer.msg('导入表格中类型不能为空！', {icon: 7, time: 5000});
					}
					else if(data == "errornotz") {
						layer.msg('导入表格中状态不能为空！', {icon: 7, time: 5000});
					}
					else if(data == "errornot5") {
						layer.msg('Excel表格列数必须是5列！', {icon: 7, time: 5000});
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
