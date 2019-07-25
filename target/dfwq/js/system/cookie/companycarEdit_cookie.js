$(document).ready(function() {
	//车辆信息
	
	/**
	 * 定义cookie失效时间，失效时间是7天
	 */
	var date = new Date();
	var time = date - 1;
	date.setTime(date.getTime() + 7 * 24 * 60 * 60 * 1000);
	if (date > (date.getTime() + 7 * 24 * 60 * 60 * 1000)) {
		layer.alert("请重新填写信息！",3);
	}
	
	/*$("#carCookie").click(function() {
		//车辆信息
		$.cookie("cplateid", $("#cplateid").val(), {
			expires : date
		});
		$.cookie("ctype", $("#ctype").val(), {
			expires : date
		});
		$.cookie("ctradetype", $("#ctradetype").val(), {
			expires : date
		});
		$.cookie("cengineid", $("#cengineid").val(), {
			expires : date
		});
		$.cookie("coutputvolume", $("#coutputvolume").val(), {
			expires : date
		});
		$.cookie("cframeid", $("#cframeid").val(), {
			expires : date
		});
		$.cookie("cpurchaseid", $("#cpurchaseid").val(), {
			expires : date
		});
		$.cookie("ccolour", $("#ccolour").val(), {
			expires : date
		});
		$.cookie("cbook", $("#cbook").val(), {
			expires : date
		});
		$.cookie("crecordtime", $("#crecordtime").val(), {
			expires : date
		});
		$.cookie("cisabolish", $("#cisabolish").val(), {
			expires : date
		});
		$.cookie("cabolishtime", $("#cabolishtime").val(), {
			expires : date
		});
		$.cookie("cphoto", $("#cphoto").val(), {
			expires : date
		});
		$.cookie("ciserror", $("#ciserror").val(), {
			expires : date
		});
		$.cookie("cremark", $("#cremark").val(), {
			expires : date
		});
		if(cplateid != null){
			layer.msg('保存成功!');
			} else {
				layer.msg('添加失败！');
			}
		return false;
		
	});*/
	
	$("#caronwerCookie").click(function() {
		// 车主
		$.cookie("coname", $("#comname").val(), {
			expires : date
		});
		$.cookie("coidcard", $("#comidcard").val(), {
			expires : date
		});
		$.cookie("cosex", $("#comsex").val(), {
			expires : date
		});
		$.cookie("cobirthtime", $("#combirthtime").val(), {
			expires : date
		});
		$.cookie("cophone", $("#comphone").val(), {
			expires : date
		});
		$.cookie("cocartype", $("#comcartype").val(), {
			expires : date
		});
		$.cookie("copapertime", $("#compapertime").val(), {
			expires : date
		});
		$.cookie("coaddress", $("#comaddress").val(), {
			expires : date
		});
		$.cookie("coserviceid", $("#comserviceid").val(), {
			expires : date
		});
		$.cookie("coservicename", $("#comservicename").val(), {
			expires : date
		});
		$.cookie("coreputationlevel", $("#comreputationlevel").val(), {
			expires : date
		});
		$.cookie("coworkcardid", $("#comworkcardid").val(), {
			expires : date
		});
		$.cookie("cocardendtime", $("#comcardendtime").val(), {
			expires : date
		});
		$.cookie("cophoto", $("#comphoto").val(), {
			expires : date
		});
		$.cookie("cremark", $("#comremark").val(), {
			expires : date
		});
		if(ccplateid != null){
			layer.msg('保存成功!');
			} else {
				layer.msg('添加失败！');
			}
		return false;
	});
	
	/*$("#runinformationCookie").click(function() {
		//营运信息
		$.cookie("rserviceid", $("#rserviceid").val(), {
			expires : date
		});
		$.cookie("rservicenature", $("#rservicenature").val(), {
			expires : date
		});
		$.cookie("rcontractlevel", $("#rcontractlevel").val(), {
			expires : date
		});
		$.cookie("rcontractstarttime", $("#rcontractstarttime").val(), {
			expires : date
		});
		$.cookie("rcontractendtime", $("#rcontractendtime").val(), {
			expires : date
		});
		$.cookie("rinsuranceplan", $("#rinsuranceplan").val(), {
			expires : date
		});
		$.cookie("rcompany", $("#rcompany").val(), {
			expires : date
		});
		if(cplateid != null){
			layer.msg('保存成功!');
			} else {
				layer.msg('添加失败！');
			}
		return false;
	});
	
	$("#guaranteeCookie").click(function() {
		// 担保人
		$.cookie("gname", $("#gname").val(),{
			expires : date
		});
		$.cookie("gidcard", $("#gidcard").val(),{
			expires : date
		});
		$.cookie("gsex", $("#gsex").val(),{
			expires : date
		});
		$.cookie("gphone", $("#gphone").val(),{
			expires : date
		});
		$.cookie("gaddress", $("#gaddress").val(),{
			expires : date
		});
		$.cookie("gremark", $("#gremark").val(),{
			expires : date
		});
		if(cplateid != null){
			layer.msg('保存成功!');
			} else {
				layer.msg('添加失败！');
			}
		return false;
	});
	
	
	$("#mojorworksCookie").click(function() {
		// 主业人员
		$.cookie("mname", $("#mname").val(),{
			expires : date
		});
		$.cookie("midcard", $("#midcard").val(),{
			expires : date
		});
		$.cookie("msex", $("#msex").val(),{
			expires : date
		});
		$.cookie("mbirthtime", $("#mbirthtime").val(),{
			expires : date
		});
		$.cookie("mcartype", $("#mcartype").val(),{
			expires : date
		});
		$.cookie("mpapertime", $("#mpapertime").val(),{
			expires : date
		});
		$.cookie("mcardid", $("#mcardid").val(),{
			expires : date
		});
		$.cookie("mworkcardid", $("#mworkcardid").val(),{
			expires : date
		});
		$.cookie("mfirstcertificatetime", $("#mfirstcertificatetime").val(),{
			expires : date
		});
		$.cookie("mcertificatetime", $("#mcertificatetime").val(),{
			expires : date
		});
		$.cookie("mcardendtime", $("#mcardendtime").val(),{
			expires : date
		});
		if(cplateid != null){
			layer.msg('保存成功!');
			} else {
				layer.msg('添加失败！');
			}
		return false;
	});
	
	$("#employeeCookie1").click(function() {
		// 从业人员1
		$.cookie("ename1", $("#ename1").val(),{
			expires : date
		});
		
		$.cookie("esex1", $("#esex1").val(),{
			expires : date
		});
		
		$.cookie("etel1", $("#etel1").val(),{
			expires : date
		});
		
		$.cookie("eidcard1", $("#eidcard1").val(),{
			expires : date
		});
		$.cookie("ebirthtime1", $("#ebirthtime1").val(),{
			expires : date
		});
		$.cookie("ecartype1", $("#ecartype1").val(),{
			expires : date
		});
		$.cookie("epapertime1", $("#epapertime1").val(),{
			expires : date
		});
		$.cookie("eworkcardid1", $("#eworkcardid1").val(),{
			expires : date
		});
		$.cookie("efirstcertificatetime1", $("#efirstcertificatetime1").val(),{
			expires : date
		});
		$.cookie("ecertificatetime1", $("#ecertificatetime1").val(),{
			expires : date
		});
		$.cookie("ecardendtime1", $("#ecardendtime1").val(),{
			expires : date
		});
		$.cookie("eserviceid1", $("#eserviceid1").val(),{
			expires : date
		});
		if(cplateid != null){
			layer.msg('保存成功!');
			} else {
				layer.msg('添加失败！');
			}
		return false;
	});
	
	$("#employeeCookie2").click(function() {
		// 从业人员2
		$.cookie("ename2", $("#ename2").val(),{
			expires : date
		});
		
		$.cookie("esex2", $("#esex2").val(),{
			expires : date
		});
		
		$.cookie("etel2", $("#etel2").val(),{
			expires : date
		});
		
		$.cookie("eidcard2", $("#eidcard2").val(),{
			expires : date
		});
		$.cookie("ebirthtime2", $("#ebirthtime2").val(),{
			expires : date
		});
		$.cookie("ecartype2", $("#ecartype2").val(),{
			expires : date
		});
		$.cookie("epapertime2", $("#epapertime2").val(),{
			expires : date
		});
		$.cookie("eworkcardid2", $("#eworkcardid2").val(),{
			expires : date
		});
		$.cookie("efirstcertificatetime2", $("#efirstcertificatetime2").val(),{
			expires : date
		});
		$.cookie("ecertificatetime2", $("#ecertificatetime2").val(),{
			expires : date
		});
		$.cookie("ecardendtime2", $("#ecardendtime2").val(),{
			expires : date
		});
		$.cookie("eserviceid2", $("#eserviceid2").val(),{
			expires : date
		});
		if(cplateid != null){
			layer.msg('保存成功!');
			} else {
				layer.msg('添加失败！');
			}
		return false;
	});*/
	
//	点击提交触发
	$("#submission").click(function() {
		var carInfo = {
			//车辆信息
			car : {
				ccplateid : $("#ccplateid").val(),
				cctype : $("#cctype").val(),
				cctradetype : $("#cctradetype").val(),
				ccengineid : $("#ccengineid").val(),
				ccoutputvolume : $("#ccoutputvolume").val(),
				ccframeid : $("#ccframeid").val(),
				ccpurchaseid : $("#ccpurchaseid").val(),
				cccolour : $("#cccolour").val(),
				ccbook : $("#ccbook").val(),
				ccrecordtime : $("#ccrecordtime").val(),
				ccisabolish : $("#ccisabolish").val(),
				ccabolishtime : $("#ccabolishtime").val(),
				ccphoto : $("#ccphoto").val(),
				cciserror : $("#cciserror").val(),
				ccremark : $("#ccremark").val()
			},
			//车主
			carowner : {
				id : $("#comcarownerid").val(),
				comname : $("#comname").val(),
				comidcard : $("#comidcard").val(),
				comsex : $("#comsex").val(),
				combirthtime : $("#combirthtime").val(),
				comphone : $("#comphone").val(),
				comlicence : $("#comlicence").val(),
				comcartype : $("#comcartype").val(),
				compapertime : $("#compapertime").val(),
				comaddress : $("#comaddress").val(),
				comserviceid : $("#comserviceid").val(),
				comservicename : $("#comservicename").val(),
				comreputationlevel : $("#comreputationlevel").val(),
				comworkcardid : $("#comworkcardid").val(),
				comcardendtime : $("#comcardendtime").val(),
				comphoto : $("#comphoto").val(),
				comremark : $("#comremark").val()
			},
			
			/*// 营运信息
			runinformation : {
					id : $("#runinformationid").val(),
					rserviceid : $("#rserviceid").val(),
					rservicenature : $("#rservicenature").val(),
					rcontractlevel : $("#rcontractlevel").val(),
					rcontractstarttime : $("#rcontractstarttime").val(),
					rcontractendtime : $("#rcontractendtime").val(),
					rinsuranceplan : $("#rinsuranceplan").val(),
					rcompany : $("#rcompany").val()
			},
			
			//从业人员1
			employee1 : {
				id : $("#newemployeeid1").val(),
				ename : $("#ename1").val(),
				
				esex : $("#esex1").val(),
				etel : $("#etel1").val(),
				
				eidcard : $("#eidcard1").val(),
				ebirthtime : $("#ebirthtime1").val(),
				ecartype : $("#ecartype1").val(),
				epapertime : $("#epapertime1").val(),
				eworkcardid : $("#eworkcardid1").val(),
				efirstcertificatetime : $("#efirstcertificatetime1").val(),
				ecertificatetime : $("#ecertificatetime1").val(),
				ecardendtime : $("#ecardendtime1").val(),
				eserviceid : $("#eserviceid1").val()
			},
			
			//从业人员2
			employee2 : {
				id : $("#newemployeeid2").val(),
				ename : $("#ename2").val(),
				
				esex : $("#esex2").val(),
				etel : $("#etel2").val(),
				
				eidcard : $("#eidcard2").val(),
				ebirthtime : $("#ebirthtime2").val(),
				ecartype : $("#ecartype2").val(),
				epapertime : $("#epapertime2").val(),
				eworkcardid : $("#eworkcardid2").val(),
				efirstcertificatetime : $("#efirstcertificatetime2").val(),
				ecertificatetime : $("#ecertificatetime2").val(),
				ecardendtime : $("#ecardendtime2").val(),
				eserviceid : $("#eserviceid2").val()
			},
			//  主业人员
			majorworks : {
				id : $("#majorworksid").val(),
				mname : $("#mname").val(),
				midcard : $("#midcard").val(),
				msex : $("#msex").val(),
				mbirthtime : $("#mbirthtime").val(),
				mcartype : $("#mcartype").val(),
				mpapertime : $("#mpapertime").val(),
				mcardid : $("#mcardid").val(),
				mworkcardid : $("#mworkcardid").val(),
				mfirstcertificatetime : $("#mfirstcertificatetime").val(),
				mcertificatetime : $("#mcertificatetime").val(),
				mcardendtime : $("#mcardendtime").val()
			},
			//担保人
			guarantee : {
				id : $("#guaranteeid").val(),
				gname : $("#gname").val(),
				gidcard : $("#gidcard").val(),
				gsex : $("#gsex").val(),
				gphone : $("#gphone").val(),
				gaddress : $("#gaddress").val(),
				gremark : $("#gremark").val()
			}*/
		};
		 
		var jsonInfo = JSON.stringify(carInfo);
		console.log(jsonInfo);
//		alert(jsonInfo.carowner.clicence);

		var url = rootPath + '/companycar/editAllEntity.shtml';
		var data = CommnUtil.ajax(url, {info : jsonInfo},"json");
		if (data == "success") {
			layer.confirm('添加成功!是否关闭窗口?', function(index) {
				parent.grid.loadData();
				parent.layer.closeAll(parent.pageii.pageii);
				return true;
			});
    
		} else {
			alert(data);
			layer.alert('添加失败！');
		}
	});

});

