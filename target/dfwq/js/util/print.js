var LODOP; // 声明为全局变量
function ReSumMoney() {
	var fSumvalue = 0;
	for (i = 1; i < 8; i++) {
		if (document.getElementById("CK" + i).checked) {
			fSumvalue = fSumvalue
					+ parseFloat(document.getElementById("DJ" + i).value);
		}
	}
	document.getElementById("HJ").value = fSumvalue.toFixed(2);
};
function MyPreview(jsonData) {
//	alert("sadas");
	AddTitle();
	var iCurLine = 100;// 标题行之后的数据从位置80px开始打印
//	获取传过来的json长度
		var length = 0;
		for(var ever in jsonData) {
		    length++;
		}
		console.log(length);
		//第一行
		LODOP.ADD_PRINT_TEXT(50, 155, 100, 20, "车牌照号：");
		LODOP.ADD_PRINT_TEXT(50, 265, 100, 20, "车主姓名：");
		LODOP.ADD_PRINT_TEXT(50, 355, 100, 20, "单据号：");
		
		LODOP.ADD_PRINT_TEXT(50, 215, 100, 20, jsonData[0].cplateid);
		LODOP.ADD_PRINT_TEXT(50, 320, 100, 20, jsonData[0].coname);
		LODOP.ADD_PRINT_TEXT(50, 400, 200, 20, jsonData[0].reredocumentid);
		LODOP.ADD_PRINT_TEXT(50, 560, 100, 20, jsonData[0].retimeofreceipt);
		
		//第二行
		LODOP.ADD_PRINT_TEXT(85, 155, 100, 20, "费用名称");
		LODOP.ADD_PRINT_TEXT(85, 275, 100, 20, "应交款");
		LODOP.ADD_PRINT_TEXT(85, 395, 100, 20, "实收款");
		LODOP.ADD_PRINT_TEXT(85, 515, 100, 20, "欠款");
		var sumMoney = 0;
		var iCurLine=110;//标题行之后的数据从位置80px开始打印
		var shoufei = "";
		for (i = 1; i < length; i++) {
				LODOP.ADD_PRINT_TEXT(iCurLine,155,100,20,jsonData[i].rsname);
				LODOP.ADD_PRINT_TEXT(iCurLine,275,100,20,jsonData[i].rsablemoney);
				LODOP.ADD_PRINT_TEXT(iCurLine,410,100,20,jsonData[i].rsfundsmoney);
				LODOP.ADD_PRINT_TEXT(iCurLine,515,100,20,jsonData[i].rsowemoney);
				iCurLine=iCurLine+25;//每行占25px
				sumMoney = sumMoney + jsonData[i].rsfundsmoney
				if (jsonData[i].rsname=="日租金") {
					shoufei = jsonData[i].resummary; 
				}
		}
		//第二行
		/*LODOP.ADD_PRINT_TEXT(110, 15, 100, 20, "1");
		LODOP.ADD_PRINT_TEXT(110, 135, 100, 20, "1");
		LODOP.ADD_PRINT_TEXT(110, 255, 100, 20, "实收款");
		LODOP.ADD_PRINT_TEXT(110, 375, 100, 20, "欠款");*/
	//	alert(iCurLine);
		//第三行
		LODOP.ADD_PRINT_TEXT(iCurLine, 155, 100, 20, "小写：");
		/*LODOP.SET_PRINT_STYLEA(9, "FontSize", 11);
		LODOP.SET_PRINT_STYLEA(9, "Bold", 1);*/
		LODOP.ADD_PRINT_TEXT(iCurLine, 405, 100, 20, "大写：");
		/*LODOP.SET_PRINT_STYLEA(10, "FontSize", 11);
		LODOP.SET_PRINT_STYLEA(10, "Bold", 1);*/
//		大小写值
		LODOP.ADD_PRINT_TEXT(iCurLine, 190, 240, 20, sumMoney);
		LODOP.ADD_PRINT_TEXT(iCurLine, 440, 240, 20, convertCurrency(sumMoney));
		
		//收费区间
		LODOP.ADD_PRINT_TEXT(iCurLine+20, 155, 100, 20, "收费区间：");
		/*LODOP.SET_PRINT_STYLEA(11, "FontSize", 11);
		LODOP.SET_PRINT_STYLEA(11, "Bold", 1);*/
//		收费区间值
		LODOP.ADD_PRINT_TEXT(iCurLine+20, 220, 200, 20, shoufei);
		
		/*//第五行
		LODOP.ADD_PRINT_TEXT(iCurLine+50, 90, 100, 20, "备注信息");*/
		
		//第六行
		LODOP.ADD_PRINT_TEXT(iCurLine+35, 155, 100, 20, "制单：");
		/*LODOP.SET_PRINT_STYLEA(13, "FontSize", 11);
		LODOP.SET_PRINT_STYLEA(13, "Bold", 1);*/
		LODOP.ADD_PRINT_TEXT(iCurLine+35, 275, 100, 20, "会计：");
		/*LODOP.SET_PRINT_STYLEA(14, "FontSize", 11);
		LODOP.SET_PRINT_STYLEA(14, "Bold", 1);*/
		LODOP.ADD_PRINT_TEXT(iCurLine+35, 395, 100, 20, "出纳：");
		/*LODOP.SET_PRINT_STYLEA(15, "FontSize", 11);
		LODOP.SET_PRINT_STYLEA(15, "Bold", 1);*/
		
		//第六行
		LODOP.ADD_PRINT_TEXT(iCurLine+35, 185, 100, 20, jsonData[0].rechamberlain);
		LODOP.ADD_PRINT_TEXT(iCurLine+35, 315, 100, 20,"");
		LODOP.ADD_PRINT_TEXT(iCurLine+35, 435, 100, 20,"");
		
		//第七行
		/*LODOP.ADD_PRINT_TEXT(295, 15, 100, 20, "打印时间：");
		LODOP.SET_PRINT_STYLEA(16, "FontSize", 11);
		LODOP.SET_PRINT_STYLEA(16, "Bold", 1);
		LODOP.ADD_PRINT_TEXT(295, 255, 100, 20, "合计金额：");
		LODOP.SET_PRINT_STYLEA(17, "FontSize", 11);
		LODOP.SET_PRINT_STYLEA(17, "Bold", 1);
		LODOP.ADD_PRINT_LINE(100, 14, 100, 510, 0, 1);*/
		
		
		//第七行
		/*LODOP.ADD_PRINT_TEXT(297, 90, 100, 20, (new Date()).toLocaleDateString() + " "+ (new Date()).toLocaleTimeString());
		LODOP.ADD_PRINT_TEXT(297, 330, 100, 20,"合计金额");*/
//		iCurLine = iCurLine + 25;// 每行占25px
//		}
//	}
	LODOP.ADD_PRINT_LINE(iCurLine+15, 144, iCurLine+15, 640, 0, 1);
//	LODOP.ADD_PRINT_TEXT(iCurLine + 195, 15, 300, 20, "打印时间："
//			+ (new Date()).toLocaleDateString() + " "+ (new Date()).toLocaleTimeString());
//	LODOP.ADD_PRINT_TEXT(iCurLine + 195, 205, 150, 20, "合计金额："
//		+ 1);
	LODOP.SET_PRINT_PAGESIZE(3, 1385, 45, "");// 这里3表示纵向打印且纸高“按内容的高度”；1385表示纸宽138.5mm；45表示页底空白4.5mm
	LODOP.PREVIEW();
};
function AddTitle() {
	LODOP = getLodop();
	LODOP.PRINT_INIT("打印控件功能演示_Lodop功能_不同高度幅面");
	LODOP.ADD_PRINT_TEXT(15, 390, 355, 30, "收款单据");
	LODOP.SET_PRINT_STYLEA(1, "FontSize", 15);
	LODOP.SET_PRINT_STYLEA(1, "Bold", 1);	
	
	/*//第一行
	LODOP.ADD_PRINT_TEXT(50, 15, 100, 20, "车牌照号：");
	LODOP.SET_PRINT_STYLEA(2, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(2, "Bold", 1);
	
	LODOP.ADD_PRINT_TEXT(50, 160, 100, 20, "车主姓名：");
	LODOP.SET_PRINT_STYLEA(2, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(2, "Bold", 1);
	
	LODOP.ADD_PRINT_TEXT(50, 300, 100, 20, "单据号：");
	LODOP.SET_PRINT_STYLEA(4, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(4, "Bold", 1);
	
	//第二行
	LODOP.ADD_PRINT_TEXT(85, 15, 100, 20, "费用名称");
	LODOP.SET_PRINT_STYLEA(5, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(5, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(85, 135, 100, 20, "应交款");
	LODOP.SET_PRINT_STYLEA(6, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(6, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(85, 255, 100, 20, "实收款");
	LODOP.SET_PRINT_STYLEA(7, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(7, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(85, 375, 100, 20, "欠款");
	LODOP.SET_PRINT_STYLEA(8, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(8, "Bold", 1);*/
    //第三行
	/*LODOP.ADD_PRINT_TEXT(200, 15, 100, 20, "小写：");
	LODOP.SET_PRINT_STYLEA(9, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(9, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(200, 255, 100, 20, "大写：");
	LODOP.SET_PRINT_STYLEA(10, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(10, "Bold", 1);*/
	
	/*//第五行
	LODOP.ADD_PRINT_TEXT(225, 15, 100, 20, "备注信息：");
	LODOP.SET_PRINT_STYLEA(12, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(12, "Bold", 1);*/
	//第六行
	/*LODOP.ADD_PRINT_TEXT(260, 15, 100, 20, "制单：");
	LODOP.SET_PRINT_STYLEA(13, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(13, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(260, 135, 100, 20, "会计：");
	LODOP.SET_PRINT_STYLEA(14, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(14, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(260, 255, 100, 20, "出纳：");
	LODOP.SET_PRINT_STYLEA(15, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(15, "Bold", 1);
	//第七行
	LODOP.ADD_PRINT_TEXT(295, 15, 100, 20, "打印时间：");
	LODOP.SET_PRINT_STYLEA(16, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(16, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(295, 255, 100, 20, "合计金额：");
	LODOP.SET_PRINT_STYLEA(17, "FontSize", 11);
	LODOP.SET_PRINT_STYLEA(17, "Bold", 1);*/
	LODOP.ADD_PRINT_LINE(100, 144, 100, 640, 0, 1);
};

//代码如下所示：
function convertCurrency(money) {
  //汉字的数字
  var cnNums = new Array('零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖');
  //基本单位
  var cnIntRadice = new Array('', '拾', '佰', '仟');
  //对应整数部分扩展单位
  var cnIntUnits = new Array('', '万', '亿', '兆');
  //对应小数部分单位
  var cnDecUnits = new Array('角', '分', '毫', '厘');
  //整数金额时后面跟的字符
  var cnInteger = '整';
  //整型完以后的单位
  var cnIntLast = '元';
  //最大处理的数字
  var maxNum = 999999999999999.9999;
  //金额整数部分
  var integerNum;
  //金额小数部分
  var decimalNum;
  //输出的中文金额字符串
  var chineseStr = '';
  //分离金额后用的数组，预定义
  var parts;
  if (money == '') { return ''; }
  money = parseFloat(money);
  if (money >= maxNum) {
    //超出最大处理数字
    return '';
  }
  if (money == 0) {
    chineseStr = cnNums[0] + cnIntLast + cnInteger;
    return chineseStr;
  }
  //转换为字符串
  money = money.toString();
  if (money.indexOf('.') == -1) {
    integerNum = money;
    decimalNum = '';
  } else {
    parts = money.split('.');
    integerNum = parts[0];
    decimalNum = parts[1].substr(0, 4);
  }
  //获取整型部分转换
  if (parseInt(integerNum, 10) > 0) {
    var zeroCount = 0;
    var IntLen = integerNum.length;
    for (var i = 0; i < IntLen; i++) {
      var n = integerNum.substr(i, 1);
      var p = IntLen - i - 1;
      var q = p / 4;
      var m = p % 4;
      if (n == '0') {
        zeroCount++;
      } else {
        if (zeroCount > 0) {
          chineseStr += cnNums[0];
        }
        //归零
        zeroCount = 0;
        chineseStr += cnNums[parseInt(n)] + cnIntRadice[m];
      }
      if (m == 0 && zeroCount < 4) {
        chineseStr += cnIntUnits[q];
      }
    }
    chineseStr += cnIntLast;
  }
  //小数部分
  if (decimalNum != '') {
    var decLen = decimalNum.length;
    for (var i = 0; i < decLen; i++) {
      var n = decimalNum.substr(i, 1);
      if (n != '0') {
        chineseStr += cnNums[Number(n)] + cnDecUnits[i];
      }
    }
  }
  if (chineseStr == '') {
    chineseStr += cnNums[0] + cnIntLast + cnInteger;
  } else if (decimalNum == '') {
    chineseStr += cnInteger;
  }
  return chineseStr;
}
