$(function() {
	// jQuery根据ip获取城市
//	$("#cplateid").val(getCP());
	getCP("#ccplateid");
	$('#ccrecordtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	$('#combirthtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	$('#comcardendtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
/*$('#cabolishtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
$('#crecordtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
	//车辆信息
$('#cobirthtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});

$('#copapertime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#cocardendtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#rcontractstarttime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
$('#rcontractendtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#mbirthtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#mpapertime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#mfirstcertificatetime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#mcertificatetime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#mcardendtime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#ebirthtime1').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#epapertime1').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#efirstcertificatetime1').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#ecertificatetime1').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#ecardendtime1').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#ebirthtime2').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#epapertime2').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#efirstcertificatetime2').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#ecertificatetime2').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
	
$('#ecardendtime2').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});*/
	
	$("#cplateid").val($.cookie("cplateid"));
	$("#coname").val($.cookie("coname"));
	$("#ctradetype").val($.cookie("ctradetype"));
	$("#cengineid").val($.cookie("cengineid"));
	$("#coutputvolume").val($.cookie("coutputvolume"));
	$("#cframeid").val($.cookie("cframeid"));
	$("#cpurchaseid").val($.cookie("cpurchaseid"));
	$("#ccolour").val($.cookie("ccolour"));
	$("#cbook").val($.cookie("cbook"));
	$("#crecordtime").val($.cookie("crecordtime"));
	$("#cisabolish").val($.cookie("cisabolish"));
	$("#cabolishtime").val($.cookie("cabolishtime"));
	$("#cphoto").val($.cookie("cphoto"));
	$("#ciserror").val($.cookie("ciserror"));
	$("#cremark").val($.cookie("cremark"));
	
	//车主表
	$("#coname").val($.cookie("coname"));
	$("#coidcard").val($.cookie("coidcard"));
	$("#cosex").val($.cookie("cosex"));
	$("#cobirthtime").val($.cookie("cobirthtime"));
	$("#cophone").val($.cookie("cophone"));
	$("#cocartype").val($.cookie("cocartype"));
	$("#copapertime").val($.cookie("copapertime"));
	$("#coaddress").val($.cookie("coaddress"));
	$("#coserviceid").val($.cookie("coserviceid"));
	$("#coservicename").val($.cookie("coservicename"));
	$("#coreputationlevel").val($.cookie("coreputationlevel"));
	$("#coworkcardid").val($.cookie("coworkcardid"));
	$("#cocardendtime").val($.cookie("cocardendtime"));
	$("#cophoto").val($.cookie("cophoto"));
	$("#cremark").val($.cookie("cremark"));
	
	//营运信息
	$("#rserviceid").val($.cookie("rserviceid"));
	$("#rservicenature").val($.cookie("rservicenature"));
	$("#rcontractlevel").val($.cookie("rcontractlevel"));
	$("#rcontractstarttime").val($.cookie("rcontractstarttime"));
	$("#rcontractendtime").val($.cookie("rcontractendtime"));
	$("#rinsuranceplan").val($.cookie("rinsuranceplan"));
	$("#rcompany").val($.cookie("rcompany"));
	
	// 担保人
	$("#gname").val($.cookie("gname"));
	$("#gidcard").val($.cookie("gidcard"));
	$("#gsex").val($.cookie("gsex"));
	$("#gphone").val($.cookie("gphone"));
	$("#gaddress").val($.cookie("gaddress"));
	$("#gremark").val($.cookie("gremark"));
	
	// 主业人员
	$("#mname").val($.cookie("mname"));
	$("#midcard").val($.cookie("midcard"));
	$("#msex").val($.cookie("msex"));
	$("#mbirthtime").val($.cookie("mbirthtime"));
	$("#mcartype").val($.cookie("mcartype"));
	$("#mpapertime").val($.cookie("mpapertime"));
	$("#mcardid").val($.cookie("mcardid"));
	$("#mworkcardid").val($.cookie("mworkcardid"));
	$("#mfirstcertificatetime").val($.cookie("mfirstcertificatetime"));
	$("#mcertificatetime").val($.cookie("mcertificatetime"));
	$("#mcardendtime").val($.cookie("mcardendtime"));

	// 从业人员1
	$("#ename1").val($.cookie("ename1"));
	$("#eidcard1").val($.cookie("eidcard1"));
	
	$("#esex1").val($.cookie("esex1"));
	$("#etel1").val($.cookie("etel1"));
	
	$("#ebirthtime1").val($.cookie("ebirthtime1"));
	$("#ecartype1").val($.cookie("ecartype1"));
	$("#epapertime1").val($.cookie("epapertime1"));
	$("#eworkcardid1").val($.cookie("eworkcardid1"));
	$("#efirstcertificatetime1").val($.cookie("efirstcertificatetime1"));
	$("#ecertificatetime1").val($.cookie("ecertificatetime1"));
	$("#ecardendtime1").val($.cookie("ecardendtime1"));
	$("#eserviceid1").val($.cookie("eserviceid1"));
	
	// 从业人员2
	$("#ename2").val($.cookie("ename2"));
	
	$("#esex2").val($.cookie("esex2"));
	$("#etel2").val($.cookie("etel2"));
	
	$("#eidcard2").val($.cookie("eidcard2"));
	$("#ebirthtime2").val($.cookie("ebirthtime2"));
	$("#ecartype2").val($.cookie("ecartype2"));
	$("#epapertime2").val($.cookie("epapertime2"));
	$("#eworkcardid2").val($.cookie("eworkcardid2"));
	$("#efirstcertificatetime2").val($.cookie("efirstcertificatetime2"));
	$("#ecertificatetime2").val($.cookie("ecertificatetime2"));
	$("#ecardendtime2").val($.cookie("ecardendtime2"));
	$("#eserviceid2").val($.cookie("eserviceid2"));
	
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
