		/*按钮对应的事件名
		 车辆档案     			showDialog
		  车辆变更			showChargeDialog
		  多次发包			showContractDialog
		  保险信息			showInsuranceDialog
		  事故信息			showAccidentDialog
		  收费信息			showReceiptDialog
		 */

	
	function showChargeDialog(obj){
//		车辆变更的点击事件**********************************************************车辆变更*******************
		var id=$(obj).attr("id");
		var cid=id.substring(3);
		$.cookie("transfer",cid);
//		alert("变更信息2"+cid);
			var parm = {
					pagId : 'paging_callback',
					l_column : [ {
						colkey : "id",
						name : "id",
					}, {
						colkey : "cplateid",
						name : "车牌号",
						isSort:true,
					}, {
						colkey : "coname",
						name : "车主姓名",
						isSort:true,
					},/* {
						colkey : "coidcard",
						name : "身份证号"
					},*/{
						colkey : "transfertime",
						name : "时间",
						isSort:true,
						/*renderData : function(rowindex,data, rowdata, column) {
							return new Date(data).format("yyyy-MM-dd hh:mm:ss");
						}*/
					}, {
						colkey : "button",
						name : "操作",
					}],
					jsonUrl : rootPath + '/carinformation/findByPageTransfer.shtml?cid='+cid,
					checkbox : true,
					serNumber : true
			}
			
			var grid_c=lyGrid(parm,function(c,d){
				//回调方法
				pageii = layer.open({
					title : "车辆变更", 
					type : 1,
					area : [ "800px", "400px" ],
					content : $("#callback_div"),btn: ['退出']
				  	,cancel: function(index){ //或者使用btn2
						 layer.close(index);
					 }
				});
			});
	}
	function showContractDialog(obj){
//		车辆多次发包点击事件——*********************************************发包***********
		var id=$(obj).attr("id");
		var cid=id.substring(3);
		$.cookie("contractid",cid);
//		alert("多次发包"+cid);
		var parm = {
		pagId : 'paging_callback',
//			pagId : 'paging',
			l_column : [ {
				colkey : "id",
				name : "id",
				hide : true,
				isSort:true,
			}, {
				colkey : "cplateid",
				name : "车牌照号",
				isSort:true,
			}, {
				colkey : "coname",
				name : "车主姓名",
				isSort:true, //排序
				
			}, {
				colkey : "times",
				name : "发包次数",
				isSort:true, //排序
				
			},{
				colkey : "money",
				name : "发包时间",
				isSort:true, //排序
				
			},{
				colkey : "contracttime",
				name : "发包时间",
				isSort:true, //排序
				
			},{
				colkey : "button",
				name : "操作",
			}],
			jsonUrl : rootPath + '/carinformation/findByPageContract.shtml?cid='+cid,
			checkbox : true,
			serNumber : true
		}
		var grid_c=lyGrid(parm,function(c,d){
			//回调方法
			pageii = layer.open({
				title : "发包", 
				type : 1,
				area : [ "800px", "400px" ],
				content : $("#callback_div"),btn: ['退出']
			  	,cancel: function(index){ //或者使用btn2
					 layer.close(index);
				 }
			});
		});
	}	
	function showInsuranceDialog(obj){
//		车辆保险的点击事件*************************************************************保险**********************
		var id=$(obj).attr("id");
		var cid=id.substring(3);
		pageii = layer.open({
			title : "查看保险信息",
			type : 2,
			area : [ "600px", "60%" ],
			content : rootPath + '/carinformation/editinsuranceUI.shtml?id=' + cid,
		});
	}	
	function showAccidentDialog(obj){
//		车辆事故信息的点击事件***************************************事故*****************************
//		alert("已经点击了！");
		var id=$(obj).attr("id");
		var cid=id.substring(3);
		/*var url = rootPath + '/carinformation/accidentlist.shtml?cid='+cid;
		var s = CommnUtil.ajax(url,null,"json");*/
		
		var parm = {
			pagId : 'paging_callback',
			l_column : [ {
				colkey : "id",
				name : "id",
				width : "50px",
				hide : true
			}, {
				colkey : "cplateid",
				name : "车牌照号",
				isSort:true,
			}, {
				colkey : "acower",
				name : "车主",
				isSort:true,
			}, {
				colkey : "actime",
				name : "事故时间",
				isSort:true,
			}, {
				colkey : "acaddress",
				name : "事故地点",
				isSort:true,
			}, {
				colkey : "aclogin",
				name : "登记人",
				isSort:true,
			}, {
				colkey : "aclogintime",
				name : "登记时间",
				isSort:true,
			}, {
				colkey : "acsituation",
				name : "事故情况",
				width : "100px",
				isSort:true,
			},/* {
				colkey : "acliability",
				name : "事故责任",
				isSort:true,
			}, {
				colkey : "acclaimmoney",
				name : "理赔金额",
				isSort:true,
			}, {
				colkey : "aciscompromise",
				name : "是否和解",
				isSort:true,
				renderData : function( rowindex ,data, rowdata, colkeyn) {
					if( data == 0){
						return "否";
					}else if(data==1){
						return "是";
					}
				}
			}, {
				colkey : "court",
				name : "法院",
				isSort:true,
			}, {
				colkey : "aciscourt",
				name : "是否通过法院起诉",
				isSort:true,
				renderData : function( rowindex ,data, rowdata, colkeyn) {
					if( data == 0){
						return "否";
					}else if(data==1){
						return "是";
					}
				}
			}, {
				colkey : "acaccuser",
				name : "原告人",
				width : "100px",
				isSort:true,
			}, {
				colkey : "acacourtmonry",
				name : "法院判决金额",
				isSort:true,
			}, {
				colkey : "acremark",
				name : "备注",
				isSort:true,
			}*/{
				colkey : "button",
				name : "操作",
				isSort:true,
			}],
				jsonUrl:rootPath + '/carinformation/editaccidentUI.shtml?cid='+cid,
				checkbox:true,
				serNumber : true
		}
//		alert("accident_end");
		var grid_c=lyGrid(parm,function(c,d){
			//回调方法
			pageii = layer.open({
				title : "事故信息", 
				type : 1,
				area : [ "1000px", "500px" ],
				content : $("#callback_div"),btn: ['退出']
			  	,cancel: function(index){ //或者使用btn2
					 layer.close(index);
				 }
			});
		});
	}	
	function showReceiptDialog(obj){
//		车辆收费的点击事件********************************************收费*****************
		var id=$(obj).attr("id");
		var cid=id.substring(3);
		var parm = {
		pagId : 'paging_callback',
			l_column : [ {
				colkey : "id",
				name : "id",
				width : "50px",
				hide : true
			}, {
				colkey : "reredocumentid",
				name : "单据号",
				isSort:true,
			}, {
				colkey : "cplateid",
				name : "车牌号",
				width : "100px",
				isSort:true,
			}, {
				colkey : "coname",
				name : "车主姓名",
				isSort:true,
			}, {
				colkey : "rechamberlain",
				name : "收款人",
				isSort:true,
			}, {
				colkey : "reisreceive",
				name : "是否预收",
				isSort : true
			}, {
				colkey : "retimeofreceipt",
				name : "收款日期",
				isSort:true,
			},{
				colkey : "reremark",
				name : "备注",
				isSort:true,
			}, {
				colkey : "button",
				name : "操作",
				isSort:true,
			}],
			jsonUrl : rootPath + '/carinformation/findByPageReceipt.shtml?cid='+cid,
			checkbox : true
		}
		var grid_c=lyGrid(parm,function(c,d){
			//回调方法
			pageii = layer.open({
				title : "收费信息", 
				type : 1,
				area : [ "1000px", "500px" ],
				content : $("#callback_div"),btn: ['退出']
			  	,cancel: function(index){ //或者使用btn2
					 layer.close(index);
				 }
			});
		});
	}
	
	function showcontractDialog(obj){
		var yid=$(obj).attr("id");
		var id=yid.substring(3);
		pageii = layer.open({
			title : "发包信息详情",
			type : 2,
			area : [ "900px", "85%" ],
			content : rootPath + '/carinformation/editContractUI.shtml?id='+id
		});
	}
	function accidentDialog(obj){
		var id=$(obj).attr("id");
		var cid=id.substring(3);
		pageii = layer.open({
			title : "事故信息详情",
			type : 2,
			area : [ "700px", "80%" ],
			content : rootPath + '/carinformation/showeditaccidentUI.shtml?cid='+cid
		});
	}
	
	function showDialog(obj) {
		var id = $(obj).attr("id");
		
		if (id.indexOf("car") >= 0) {
			id = id.substr(3);
		} 
		pageii = layer.open({
			title : "车辆档案详情",
			type : 2,
			area : [ "900px", "85%" ],
			content : rootPath + '/car/showAllUI.shtml?id=' + id
		});
	}
	
	function showTransferDialog(obj) {
		var id = $(obj).attr("id");
		$.cookie("transferid",id);
		if (id.indexOf("car") >= 0) {
			id = id.substr(3);
		} 
		pageii = layer.open({
			title : "车辆变更详情",
			type : 2,
			area : [ "900px", "85%" ],
			content : rootPath + '/carinformation/carChange.shtml?id=' + id
		});
	}
	
	function showrs(obj) {
		var reredocumentid = $(obj).attr("id");
		pageii = layer.open({
			title : "收款明细",
			type : 2,
			area : [ "1200px", "85%" ],
			content : rootPath + '/receipt/showrsUI.shtml?reredocumentid=' + reredocumentid
		});
	};