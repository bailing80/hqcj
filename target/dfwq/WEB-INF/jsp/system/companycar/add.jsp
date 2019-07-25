<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background-color:#fff">
<head>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<%@include file="/common/common.jspf"%>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/js/system/companycar/add.js"></script>
<script type="text/javascript" src="${ctx}/js/system/cookie/companycar_cookie.js"></script>
<style type="text/css">
.col-sm-3 {
	width: 15%;
	float: left;
	text-align: right;
}

.col-sm-9 {
	width: 85%;
	float: left;
	text-align: left;
}

label[class^="btn btn-default"] {
	margin-top: -4px;
}

#myTab {
	margin: 10px 0 0 20px;
}

.row {
	margin-left: 13px;
}
.col {
	padding: 0px;
}

#guarantee input {
	width: 65%;
}

#runinformation input {
	width: 65%;
}

#guarantee label, #runinformation label {
	width: 60px;
	display: inline-block;
	padding: 0px;
}

.panel--padding {
	padding: 30px;
}
.tab-content .container-fluid label {
text-align:left;
display:block;
}
.form-horizontal .form-group {
margin-left:8px;
}
.row {
margin-right:20px;
}
</style>
</head>
<body style="position: relative;">
<div class="l_err" style="width: 100%; margin-top: 2px;"></div>
	<!-- 上面的标签选项卡 -->
	<ul id="myTab" class="nav nav-tabs" style="border: none;">
		<li class="active"><a href="#car" data-toggle="tab">公司车辆信息</a></li>
 		<li id="caronwertab"><a href="#caronwer" data-toggle="tab" >车主</a></li>
 		<li id="picturetab"><a href="#picture" data-toggle="tab">车辆图片</a></li>
	</ul>
	<form id="" name="" method="" action=""
		style="position: absolute; right: 17px; top: 0px;">
		<button type="button" class="btn btn-success btn-s-xs" id="submission">提交</button>
	</form>
<!-- 下面的内容 -->

	<div id="myTabContent" class="tab-content">
		
		<!-- 车辆信息 -->
		<div class="tab-pane fade<!--  in active -->" id="car">

			<form id="carform" name="form" class="form-horizontal" method="post"
				action="${ctx}/companycar/addEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
									<label class="control-label" style="display:block">车辆牌照</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入车辆牌照"
									name="comcarFormMap.ccplateid" id="ccplateid">
							</div>	
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
									<label class="control-label">车辆类型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入车辆类型"
									id="cctype" name="comcarFormMap.cctype">
							</div>
						</div>
					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
									<label class=" control-label">厂牌类型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入厂牌类型" name="comcarFormMap.cctradetype"
									id="cctradetype">
							</div>
						</div>
					
						<div class="form-group col-sm-6">
							<div class="row">
									<label class=" control-label">发动机号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入发动机号" name="comcarFormMap.ccengineid"
									id="ccengineid">
							</div>
						</div>						
					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">排量</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入排量" name="comcarFormMap.ccoutputvolume"
									id="ccoutputvolume">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">车架号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入车架号" name="comcarFormMap.ccframeid" id="ccframeid">
							</div>
						</div>
					</div>
					
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
									<label class=" control-label">购置证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入购置证号" name="comcarFormMap.ccpurchaseid"
									id="ccpurchaseid">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">车辆颜色</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入车辆颜色" name="comcarFormMap.cccolour" id="cccolour">
							</div>
						</div>
					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">								
								<label class="control-label">车籍</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入车籍" name="comcarFormMap.ccbook" id="ccbook">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">登记日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入登记日期" name="comcarFormMap.ccrecordtime"
									id="ccrecordtime">
							</div>
						</div>
						
					</div>
					
					<!-- 第八行 -->
					<div class="" style="float: left; margin-left: 50px; margin-right: 15px;">
						<label class="control-label">备注</label>
					</div>
					<div class="" style="float: left;margin-left:50px;">
						<textarea class="form-control checkacc" placeholder="请输入备注"
							name="comcarFormMap.ccremark" id="ccremark" style="width: 729px;resize:none"></textarea>
					</div>

				</div>
				<footer class="panel-footer text-right bg-light lter">
				<button type="submit" class="btn btn-success btn-s-xs"
					id="carCookie">保存</button>
				</footer> </section>
			</form>
		</div>



 <!-- 车主-->
		<div class="tab-pane fade" id="caronwer">

			<form id="form" name="form" class="form-horizontal" method="post"
				action="<%--  ${ctx}/comcarowner/addEntity.shtml --%> ">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">
						 <div class="form-group col-sm-6" hidden>
							<div class="row">
								<label class="control-label">车牌号</label>
							</div>
							<div class="col-sm-9">
								<input type="text" class="form-control checkacc"
									placeholder="请输入车牌号" name="comcarownerFormMap.cocid" id="cocid">
							</div>
						</div>					
						<div class="form-group col-sm-6">
							<div class="row">								
								<label class="control-label">姓名</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入姓名" name="comcarownerFormMap.coname" id="comname">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">身份证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc"
									placeholder="请输入身份证号" name="comcarownerFormMap.comidcard"
									id="comidcard">
							</div>
						</div>				
					</div>
					<!-- 第二行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">性别</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入性别"
									name="comcarownerFormMap.comsex" id="comsex">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">出生日期</label>
							</div>
							<div class="row">
								<input type="text" class="form-control checkacc" placeholder="请输入出生日期"
									name="comcarownerFormMap.combirthtime" id="combirthtime">
							</div>
						</div>	
					</div>
					<!-- 第三行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class=" control-label">手机</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入手机"
									name="comcarownerFormMap.comphone" id="comphone">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">驾驶证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入驾驶证号"
									name="comcarownerFormMap.comlicence" id="comlicence">
							</div>
						</div>
					</div>
					<!-- 第四行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">准驾车型</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入准驾车型"
									name="comcarownerFormMap.comcartype" id="comcartype">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">初领驾证</label>
							</div>
							<div class="row">
								<input type="text" class="form-control"
									placeholder="请输入初领驾驶证日期" name="comcarownerFormMap.compapertime"
									id="compapertime">
							</div>
						</div>
					</div>
					<!-- 第五行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">地址</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入地址"
									name="comcarownerFormMap.comaddress" id="comaddress">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">服务卡号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入服务卡号"
									name="comcarownerFormMap.comserviceid" id="comserviceid">
							</div>
						</div>
					</div>
					<!-- 第六行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">服务卡名</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入服务卡姓名"
									name="comcarownerFormMap.comservicename" id="comservicename">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">信誉等级</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入服务信誉等级"
									name="comcarownerFormMap.comreputationlevel"
									id="comreputationlevel">
							</div>
						</div>
					</div>
					<!-- 第七行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">资格证号</label>
							</div>
							<div class="row">
								<input type="text" class="form-control" placeholder="请输入从业资格证号"
									name="comcarownerFormMap.comworkcardid" id="comworkcardid">
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">从业截止</label>
							</div>
							<div class="row">
								<input type="text" class="form-control"
									placeholder="请输入从业证截止日期" name="comcarownerFormMap.comcardendtime"
									id="comcardendtime">
							</div>
						</div>
					</div>
					<!-- 第八行 -->
					<div class="row" style="">
						<div class="form-group col-sm-6">
							<div class="row">
								<label class="control-label">照片</label>
							</div>
						<div class="row">
								<input type="file" id="picfile" name="picfile" onchange="showpic(this)"/>
							</div>
							<div id="img-follow">
							</div>	
						</div>
					</div>
					<!--  -->
					<div class=""
						style="float: left; margin-left: 50px; margin-right: 15px;">
						<label class="control-label">备注</label>
					</div>
					<div class="" style="float: left;margin-left:50px;">
						<textarea class="form-control checkacc" placeholder="请输入备注"
							name="comcarownerFormMap.comremark" id="comremark" style="width: 729px;resize:none;"></textarea>
					</div>

				</div>
				<footer class="panel-footer text-right bg-light lter">
				<button type="button" class="btn btn-success btn-s-xs" id="caronwersubmit">保存</button>
				</footer> </section>
			</form>
		</div>
		
				<!-- 图片 -->
		<div class="tab-pane fade" id="picture">
		<h4>车辆图片上传</h4>
			<form class="inpform" id="uploadForm" method="post" enctype="multipart/form-data" <%-- action="${ctx}/car/upload.shtml" --%> multipart="">
				<div id="detail-img">
					<input type="file" id="file" multiple="multiple" name="file" onchange="xmTanUploadImg(this)"/>
				</div>
			</form>
			<div id="img-follow2">
			</div>
		    	<div class="msg" style="display: none;"></div>
				<footer class="panel-footer text-right bg-light lter"
						style="margin-top:102px;">
					<button type="button" id="upload" class="btn btn-success btn-s-xs">上传</button>
					</footer>
			<form>
		</form>
	</div>

	</div>
	<script type="text/javascript">
		onloadurl();
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
	                $("#img-follow2").append(
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
	    
	    function showpic(obj) {
            var file = obj.files[0];
            //FileReader用来把文件读入内存，并且读取文件中的数据。
            // FileReader接口提供了一个异步API，使用该API可以在浏览器主线程中异步访问文件系统，读取文件中的数据。
            var reader = new FileReader();
            //读取文件过程方法
            reader.onload = function (e) {
                //不太明白e.target.result代表什么（一大串数字）好像是图片转化为base64
                var imgstr = '<img  style="width:200px;height:200px;" src="' + e.target.result + '"/>';
                $("div").remove(".img");
                $("#img-follow").append(
                    "<div class=\"img\">" +
                    "<div class=\"img-bg\">" +
                    "" + imgstr + "" 
                )
            };
            //读取文件内容，结果用data:url的字符串形式表示
            reader.readAsDataURL(file);
    };
	    /*删除功能*/
	    function delbtn(obj){
	    	/* alert("dsad"); */
	    	var _this = $(obj);
	    	_this.parents(".img").remove();
	    };
	    
		$("#upload").click(function(){
			var formData = new FormData($("#uploadForm")[0]);
			formData.append("ccplateid", $("#ccplateid").val());
			 $.ajax({
	                type: "post",
	                url: rootPath + '/companycar/upload.shtml',
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
		
		$("#caronwersubmit").click(function(){
			
			var formData = new FormData();
			var picfile = $('#picfile').get(0).files[0];

			formData.append("picfile", picfile);
			formData.append("ccplateid", $("#ccplateid").val());
			 $.ajax({
	                type: "post",
	                url: rootPath + '/companycar/picupload.shtml',
	                data: formData,
	                async: false,
	                contentType: false,// jQuery不要去设置Content-Type请求头
	                processData: false,// jQuery不要去处理发送的数据
	                dataType : "json",
	                success: function (data) {
	                	if(data == "success"){
	                		layer.msg("上传成功");
	                	}else{
	                		layer.msg("上传失败");
	                	}
	                }
	            })
	 
	    });
	</script>
	<script type="text/javascript"
		src="${ctx}/notebook/notebook_files/bootstrap-filestyle.min.js">
		
	</script>
</body>
</html>