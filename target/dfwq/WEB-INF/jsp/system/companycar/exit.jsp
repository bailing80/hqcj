<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background-color:#fff">
<head>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<%@include file="/common/common.jspf"%>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/js/system/car/exit.js"></script>
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

label {
	width: 60px;
	display: inline-block;
	text-align: justify;
	text-align-last: justify;
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
	text-align: justify;
	text-align-last: justify;
	padding: 0px;
}

.panel--padding {
	padding: 30px;
}
</style>
</head>
<body style="position: relative;">

	<div id="myTabContent" class="tab-content">
		<!-- 车辆信息 -->
		<div class="tab-pane fade in active" id="car">

			<form id="carform" name="form" class="form-horizontal" method="post"
				action="${ctx}/car/exitEntity.shtml">
				<section class="panel panel-default">
				<div class="panel-body container-fluid panel--padding">
					<!-- 第一行 -->
					<div class="row" style="">

						<input type="hidden" class="form-control checkacc"
							value="${car.id}" name="carFormMap.id" id="id">
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">车辆牌照</label>
								</div>
								<div class="col-sm-9">
									<input type="text" readonly="readonly" class="form-control"
										name="carFormMap.cplateid" id="cplateid"
										value="${car.cplateid } ">
								</div>
							</div>
						</div>
						<div class="form-group col-sm-6">
							<div class="row">
								<div class="col-sm-3 col">
									<label class="control-label">废止时间</label>

								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" placeholder="废止时间"
										id="cabolishtime" name="carFormMap.cabolishtime"
										value="${car.cabolishtime }">
								</div>
							</div>
						</div>
					</div>

					<footer class="panel-footer text-right bg-light lter">
					<button type="submit" class="btn btn-success btn-s-xs"
						id="carCookie">废止</button>
					</footer>
				</section>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		onloadurl();
	</script>
	<script type="text/javascript"
		src="${ctx}/notebook/notebook_files/bootstrap-filestyle.min.js">
		
	</script>
</body>
</html>