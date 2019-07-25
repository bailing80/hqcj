$(document).ready(function() {

//	点击车主保存按钮
	$("#caronwerCookie").click(function() {
		if(cplateid != null){
			layer.msg('保存成功!');
			} else {
				layer.msg('添加失败！');
			}
		return false;
	});
	
	// 点击提交触发
	$("#submission").click(function() {

		// alert($("#coname").val();
		// alert("da");
		
//		获取新的变更信息
		var carInfo = {

			//车主
			carowner : {
				id : $("#newcarownerid").val(),
				coname : $("#newconame").val(),
				coidcard : $("#newcoidcard").val(),
				cosex : $("#newcosex").val(),
				cobirthtime : $("#newcobirthtime").val(),
				cophone : $("#newcophone").val(),
				clicence : $("#newclicence").val(),
				cocartype : $("#newcocartype").val(),
				copapertime : $("#newcopapertime").val(),
				coaddress : $("#newcoaddress").val(),
				coserviceid : $("#newcoserviceid").val(),
				coservicename : $("#newcoservicename").val(),
				coreputationlevel : $("#newcoreputationlevel").val(),
				coworkcardid : $("#newcoworkcardid").val(),
				cocardendtime : $("#newcocardendtime").val(),
				cophoto : $("#newcophoto").val(),
				cremark : $("#newcremark").val()
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
				id : $("#newmajorworksid").val(),
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
				id : $("#newguaranteeid").val(),
				gname : $("#newgname").val(),
				gidcard : $("#newgidcard").val(),
				gsex : $("#newgsex").val(),
				gphone : $("#newgphone").val(),
				gaddress : $("#newgaddress").val(),
				gremark : $("#newgremark").val()
			}
			
		};

		var jsonInfo = JSON.stringify(carInfo);
		console.log(jsonInfo);
		var url = rootPath + '/transfer/editAllEntity.shtml';
		var data = CommnUtil.ajax(url, {
			info : jsonInfo
		}, "json");
		console.log(data);
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

	});

});