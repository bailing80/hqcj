<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf" %>
<script type="text/javascript" src="${ctx}/js/system/accident/add.js">
</script>
<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
	text-align:right;
}

.col-sm-9 {
	width: 85%;
	float: left;
}
label[class^="btn btn-default"]{
	margin-top: -4px;
}
</style>
</head>
<body>
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
		<!-- 上面的标签选项卡 -->
	<ul id="myTab" class="nav nav-tabs" style="border: none;">
		<li class="active"><a href="#car" data-toggle="tab">事故信息</a></li>
		<li id="caronwertab"><a href="#picture" data-toggle="tab" >图片上传</a></li>
	</ul>
	
	<button type="button" class="btn btn-success btn-s-xs" style="position: absolute; right: 17px; top: 0px;" id="submission">提交</button>

	<div id="myTabContent" class="tab-content">
		<!-- 车辆信息 -->
		<div class="tab-pane fade<!--  in active -->" id="car">
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/accident/addEntity.shtml">
		<section class="panel panel-default">
		<div class="panel-body">
			
			<div class="form-group">
				<label class="col-sm-3 control-label">车牌照号</label>
				<div class="col-sm-9">
					<!-- input type="text" class="form-control checkacc" 
						placeholder="请输入车牌照号" name="accidentFormMap.cplateid" id="cplateid"> -->
						<!-- <select id="cplateid" name="accidentFormMap.cplateid" class="form-control checkacc"></select> -->
						<input type="text" id="cplateid" name='accidentFormMap.cplateid' onkeyup="carAutocomplete()"
				  onblur="carAndOwner(this)" class="form-control checkacc"/>
						<input type="hidden" id = "cid" name="accidentFormMap.cid" class="form-control checkacc"  />
				</div>
			</div>
			<div class="form-group">
					<label class="col-sm-3 control-label">车主</label>
					<div class="col-sm-9">
						<input type="text" class="form-control checkacc"
							placeholder="请输入车主" readonly="readonly" name="accidentFormMap.acower" id="coname">
					</div>
				</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="line line-dashed line-lg pull-in"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label">事故时间</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入事故时间"
						name="accidentFormMap.actime" id="actime">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">事故地点</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入事故地点"
						name="accidentFormMap.acaddress" id="acaddress">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">登记人</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入登记人"
						name="accidentFormMap.aclogin" id="aclogin">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">登记时间</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入登记时间"
						name="accidentFormMap.aclogintime" id="aclogintime">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">事故情况</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入事故情况"
						name="accidentFormMap.acsituation" id="acsituation">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">事故责任</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入事故责任"
						name="accidentFormMap.acliability" id="acliability">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">理赔金额</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入理赔金额"
						name="accidentFormMap.acclaimmoney" id="acclaimmoney">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否和解</label>
				<div class="col-sm-9" class="form-control">
						<input type="radio" name="accidentFormMap.aciscompromise" value="1" />是
						<input type="radio" name="accidentFormMap.aciscompromise" value="0" style="margin-left:20px;"/>否
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">法院</label>
				<div class="col-sm-9" class="form-control">
				<input type="text" class="form-control" placeholder="请输入法院"
						name="accidentFormMap.court" id="court">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否起诉</label>
				<div class="col-sm-9" class="form-control">
						<input type="radio" name="accidentFormMap.aciscourt" value="1"/>是
						<input type="radio" name="accidentFormMap.aciscourt" value="0" style="margin-left:20px;"/>否
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">原告人</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入原告人"
						name="accidentFormMap.acaccuser" id="acaccuser">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">判决金额</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入判决金额"
						name="accidentFormMap.acacourtmonry" id="acacourtmonry">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div style="clear:both;"></div>
			<div class=""
						style="float: left; margin-left: 55px; margin-right: 15px;">
						<label class="control-label">备注</label>
					</div>
					<div class="" style="float: left; margin-left:18px;">
						<textarea class="form-control checkacc" placeholder="请输入备注"
							name="accidentFormMap.acremark" id="acremark" style="width:532px; resize:none;"></textarea>
					</div>
			
		</div>
		<footer class="panel-footer text-right bg-light lter">
			<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> 
		</section>
	</form>
	
	</div>
	
			<!-- 图片 -->
		<div class="tab-pane fade" id="picture">
		<h1>Hello world</h1>
			<form class="inpform" id="uploadForm" method="post" enctype="multipart/form-data" <%-- action="${ctx}/car/upload.shtml" --%> multipart="">
				<div id="detail-img">
					<input type="file" id="file" multiple="multiple" name="file" onchange="xmTanUploadImg(this)"/>
				</div>
		</form>
					<div id="img-follow">
			</div>
		    	<div class="msg" style="display: none;"></div>
				<footer class="panel-footer text-right bg-light lter"
						style="margin-top:102px;">
					<button type="button" id="upload" class="btn btn-success btn-s-xs">上传</button>
					</footer>
	</div>
	</div>
	
	<script type="text/javascript">
/* 		onloadurl(); */
		//显示选择的图片
	    function xmTanUploadImg(obj) {
			/* alert("asdasdasd"); */
			var fileInput = "<input type=’file' multiple='multiple' name='file' onchange='xmTanUploadImg(this)'/>";
			console.log(fileInput);
			/* $("#uploadForm").append(fileInput); */
			$('#detail-img').append('<input type="file" multiple="multiple" name="file" onchange="xmTanUploadImg(this)" class="detail-img"/>');
	        var fl = obj.files.length;
	        for (var i = 0; i < fl; i++) {
	            var file = obj.files[i];
	            //FileReader用来把文件读入内存，并且读取文件中的数据。
	            // FileReader接口提供了一个异步API，使用该API可以在浏览器主线程中异步访问文件系统，读取文件中的数据。
	            var reader = new FileReader();
	            //读取文件过程方法
	            reader.onload = function (e) {
	                //不太明白e.target.result代表什么（一大串数字）好像是图片转化为base64
	                var imgstr = '<img  style="width:77px;height:77px;" src="' + e.target.result + '"/>';
	                $("#img-follow").append(
	                    "<div class=\"img\">" +
	                    "<div class=\"img-bg\">" +
	                    "" + imgstr + "" +
	                    "</div><button type=\"button\" onclick=\"delbtn(this)\" >删除</button>"
	                )
	            };
	            //读取文件内容，结果用data:url的字符串形式表示
	            reader.readAsDataURL(file);
	        }
	    };
	    /*删除功能*/
	    function delbtn(obj){
	    	/* alert("dsad"); */
	    	var _this = $(obj);
	    	_this.parents(".img").remove();
	    };
	    
		$("#upload").click(function(){
			var formData = new FormData($("#uploadForm")[0]);
			formData.append("cplateid", $("#cplateid").val());
			 $.ajax({
	                type: "post",
	                url: rootPath + '/accident/upload.shtml',
	                data: formData,
	                async: false,
	                contentType: false,// jQuery不要去设置Content-Type请求头
	                processData: false,// jQuery不要去处理发送的数据
	                dataType : "json",
	                success: function (data) {
	                	if(data == "success"){
	            			layer.msg('上传成功!');
	            			} else {
	            				layer.msg('添加失败！');
	            			}
	                }
	            })
	 
	    });
	</script>
</body>
</html>