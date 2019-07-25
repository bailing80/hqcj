//单独验证某一个input  class="checkpass"
/*jQuery.validator.addMethod("checkRole", function(value, element) {
 return this.optional(element)
 || ((value.length <= 10) && (value.length >= 3));
 }, "角色名由3至10位字符组合构成");*/
/*jQuery.validator.addMethod("form-control", function(value, element) {
	value = parseInt(value);
	return this.optional(element) || value > 0;
}, "金额必须大于0");*/
/*
 * jQuery.validator.addMethod("form-control", function(value, element) { var
 * returnVal = true; // inputZ=value; // var ArrMen= inputZ.split("."); //截取字符串
 * if (value > 0) {
 * 
 * if(ArrMen.length==2){ if(ArrMen[1].length>2){ //判断小数点后面的字符串长度 returnVal =
 * false; return false; } }
 * 
 * return false; } return returnVal; }, "金额必须是数字");
 */

$(function() {
	$('#actime').datetimepicker({
		format : 'yyyy-mm-dd',
		todayBtn : true,
		language : 'zh-CN',
		autoclose : true,	//选中时间后自动关闭
		todayHighlight : true,	//当天时间高亮
		minView : 2,
		maxView : 1
	});
//	随机生成数
	$("#acnumbers").val(getDh());
	// bootstrap的datetimepicker插件使用http://www.bootcss.com/p/bootstrap-datetimepicker/
	$('#actime').datetimepicker({
		format : 'yyyy-mm-dd',// 日期格式
		todayBtn : true, // 是否显示今天那个按钮
		language : 'zh-CN', // 设置中文显示 需要引入几个js
		minView : 2, // 最小视图
		maxView : 1	// 最大视图
	});
	
	// jQuery根据ip获取城市
	$("#acname").val(getCP());

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
						layer.msg('添加失败！');
					}
				}
			});
		},
		/*rules : {
			"acquittanceFormMap.actime" : {
				required : true
			},
			"acquittanceFormMap.acname" : {
				required : true
			},
			"acquittanceFormMap.acup" : {
				required : true
			},
			"acquittanceFormMap.acmoney" : {
				required : true,
				number : true
			},
			"acquittanceFormMap.accompany" : {
				required : true
			}
		},
		messages : {
			"acquittanceFormMap.actime" : {
				required : "请输入时间"
			},
			"acquittanceFormMap.acname" : {
				required : "请输入名称"
			},
			"acquittanceFormMap.acup" : {
				required : "请输入上款系"
			},
			"acquittanceFormMap.acmoney" : {
				required : "请输入金额"
			},
			"acquittanceFormMap.accompany" : {
				required : "请输入收款单位"
			}
		},*/
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
