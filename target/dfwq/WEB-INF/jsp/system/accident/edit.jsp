<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/common.jspf"%>
<script type="text/javascript" src="${ctx}/js/system/accident/edit.js">
	
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

label[class^="btn btn-default"] {
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
<!-- 	<form id="" name="" method="" action=""
		style="position: absolute; right: 17px; top: 0px;"> -->
		<button type="button" style="position: absolute; right: 17px; top: 0px;" class="btn btn-success btn-s-xs" id="submission">提交</button>
	<!-- </form> -->

		<div id="myTabContent" class="tab-content">
		<!-- 车辆信息 -->
		<div class="tab-pane fade<!--  in active -->" id="car">
	<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<form id="form" name="form" class="form-horizontal" method="post"
		action="${ctx}/accident/editEntity.shtml">
		<input type="hidden" class="form-control checkacc"
			value="${accident.id}" name="accidentFormMap.id" id="id">
		<section class="panel panel-default">
		<div class="panel-body">
		<div class="form-group">
				<label class="col-sm-3 control-label">车主</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						value="${accident.acower}" placeholder="请输入车主"
						name="accidentFormMap.acower" id="acower">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">车牌照号</label>
				<div class="col-sm-9">
					<input type="text" class="form-control checkacc"
						value="${accident.cplateid}" readonly="readonly" placeholder="请输入车牌照号"
						name="accidentFormMap.cplateid" id="cplateid">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label">事故时间</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入事故时间"
						value="${accident.actime}"
						<fmt:formatDate value="${accident.actime}"
					 type="both" pattern="yyyy-MM-dd HH:mm:ss"/>
						name="accidentFormMap.actime" id="actime">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">事故地点</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入事故地点"
						value="${accident.acaddress}" name="accidentFormMap.acaddress"
						id="acaddress">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">登记人</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入登记人"
						value="${accident.aclogin}" name="accidentFormMap.aclogin"
						id="aclogin">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">登记时间</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入登记时间"
						value="${accident.aclogintime}" name="accidentFormMap.aclogintime"
						id="aclogintime">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">事故情况</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入事故情况"
						value="${accident.acsituation}" name="accidentFormMap.acsituation"
						id="acsituation">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">事故责任</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入事故责任"
						value="${accident.acliability}" name="accidentFormMap.acliability"
						id="acliability">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">理赔金额</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入理赔金额"
						value="${accident.acclaimmoney}"
						name="accidentFormMap.acclaimmoney" id="acclaimmoney">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否和解</label>
				<div class="col-sm-9" class="form-control">
					<input type="radio" name="accidentFormMap.aciscompromise" value="1"
						<c:if test="${accident.aciscompromise eq 1 }">checked="checked"</c:if> />是
					<input type="radio" name="accidentFormMap.aciscompromise" value="0"
						<c:if test="${accident.aciscompromise eq 0 }">checked="checked"</c:if>  style="margin-left:20px;" />否
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">法院</label>
				<div class="col-sm-9" class="form-control">
				<input type="text" class="form-control" placeholder="请输入法院"
						name="accidentFormMap.court" value="${accident.court}" id="court">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">是否起诉</label>
				<div class="col-sm-9" class="form-control">
					<input type="radio" name="accidentFormMap.aciscourt" value="1"
						<c:if test="${accident.aciscourt eq 1 }">checked="checked"</c:if> />是
					<input type="radio" name="accidentFormMap.aciscourt" value="0"
						<c:if test="${accident.aciscourt eq 0 }">checked="checked"</c:if>  style="margin-left:20px;" />否
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">原告人</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入原告人"
						value="${accident.acaccuser}" name="accidentFormMap.acaccuser"
						id="acaccuser">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label">判决金额</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" placeholder="请输入判决金额"
						value="${accident.acacourtmonry}"
						name="accidentFormMap.acacourtmonry" id="acacourtmonry">
				</div>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
			<div class=""
				style="float: left; margin-left: 55px; margin-right: 15px;">
				<label class="control-label">备注</label>
			</div>
			<div class="" style="float: left; margin-left:18px;">
				<textarea class="form-control checkacc" placeholder="请输入备注"
					value="" name="accidentFormMap.acremark"
					id="acremark" style="width: 532px; resize:none">${accident.acremark}</textarea>
			</div>
			<div class="line line-dashed line-lg pull-in"></div>
		</div>
		<footer class="panel-footer text-right bg-light lter">
		<button type="submit" class="btn btn-success btn-s-xs">提交</button>
		</footer> </section>
	</form>
	</div>
		<div class="tab-pane fade" id="picture">
		<h1>Hello world</h1>
			<form class="inpform" id="uploadForm" method="post" enctype="multipart/form-data" <%-- action="${ctx}/car/upload.shtml" --%> multipart="">
			<div id="detail-img">
					<input type="file" id="file" multiple="multiple" name="file" onchange="xmTanUploadImg(this)"/>
			</div>
			<div id="detail2-img">	
			</div>
			
			<div id="img-follow">
			</div>
				
			<div class="msg" style="display: none;"></div>
				<footer class="panel-footer text-right bg-light lter"
						style="margin-top:102px;">
					<button type="button" id="upload" class="btn btn-success btn-s-xs">上传</button>
					</footer>
		</form>
	</div>
	</div>
	
		<script type="text/javascript">
		$(function(){
			var cbox = $.cookie("cbox");
			var urlcp = rootPath + '/accident/selectCplateid.shtml?id=' + cbox;
			var Id = CommnUtil.ajax(urlcp, null, "json");
			var accid = Id.cplateid;
			var urlcid = rootPath + '/accident/selectCid.shtml?id=' + accid;
		    var cid = CommnUtil.ajax(urlcid, null, "json");
		    var id = cid.id;
			var url = rootPath + '/accident/selectPic.shtml?id=' + id;
			var data = CommnUtil.ajax(url, null, "json");
			for(var i=0; i<data.length; i++){
				var showImg = "<img src=" + "${ctx}/uploadFile/" + data[i].imgurl +" width='160' height='100' />";
				$('#detail2-img').append(showImg);
			}

		});
		
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