$(function() {
	$('#fixtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	var url = rootPath + '/equipment/selectEquipment.shtml';
	var data = CommnUtil.ajax(url, null, "json");
	var h = "<option>请选择设备</option>";
	for (var i = 0; i < data.length; i++) {
		h += "<option value='" + data[i].eqdeviceid + "' data-id='" + data[i].id
				+ "'>" + data[i].eqdeviceid + "</option>";
	}
	$("#eqdeviceid").html(h);

	$("#eqdeviceid").change(function() {
//		$("#Mytable").empty();
		var data = $(this).children("option:selected").attr("data-id");
		$("#eqid").val(data);
		// 动态获取设备信息
		var url = rootPath + '/equipment/selectFixEquipment.shtml?id=' + data;
		var fix = CommnUtil.ajax(url, null, "json");
		$("#eqequipmenttype").val(fix.eqequipmenttype);
//		$("#eqid").val(fix.id);
		$("#eqname").val(fix.eqname);

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

