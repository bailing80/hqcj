//查询车牌照号并且返回
function carAutocomplete(){
	var url = rootPath + '/autocomplete/carplateid.shtml';
	var data = CommnUtil.ajax(url, null,"json");
//	alert(data);
	  $( "#cplateid" ).autocomplete({
	  source: data
	  });
}
//查询有车主的车牌号并返回
function haveOwnerCarAutocomplete(){
	var url = rootPath + '/autocomplete/carplateid.shtml';
	var data = CommnUtil.ajax(url, null,"json");
  $( "#cplateid" ).autocomplete({
  source: data
  });
}
//用车牌照号对应车辆id(cid)
//在此根据车牌号查出车id  赋值给隐藏域
function cplateToCid(obj){
//	alert("已经进入");
	var cplateid=obj.value;
	if (cplateid.trim() != "" && cplateid != null) {
//		alert("车牌号是"+cplateid);
		var url = rootPath + '/autocomplete/cplateidToCid.shtml?cplateid='+cplateid;
		var data = CommnUtil.ajax(url, null,"json");
//		alert(data);
		if (data != "error") {
			var cid=data;
			console.log(cid);
			$("#cid").val(cid);
		} else {
			layer.msg('此车不存在，请添加车辆');
		}
	}

}
//用车牌照号对应车车主-------车辆事故处理中的  修改
function carAndOwner(obj){
//	alert("我能进来！");
	var cplateid=obj.value;
//	alert(cplateid);
	var url = rootPath + '/autocomplete/cplateidToCid.shtml?cplateid='+cplateid;
	var data = CommnUtil.ajax(url, null,"json");
//	alert("sadasd");
	if (data != "error") {
		var cid=data;
		console.log(cid);
		$("#cid").val(cid);
		var urlCarOwner = rootPath + "/autocomplete/carAndOwner.shtml?cplateid="+cplateid;
		var carOwnerData = CommnUtil.ajax(urlCarOwner, null,"json");
//		alert("carOwnerData"+carOwnerData);
		console.log("车主数据"+carOwnerData);
//		$("#coname").val(carOwnerData.coname);til.ajax(urlCarOwner, null, "json");
//		alert(carOwnerData.coname);
//		console.log(carOwnerData);
		$("#coname").val(carOwnerData.coname);
	} else {
		layer.msg('此车不存在，请添加车辆');
	}
	
//	alert(cid);
	
}