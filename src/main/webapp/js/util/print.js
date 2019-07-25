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
function MyPreviewReceipt(jsonData) {

//	ADD_PRINT_TABLE(30, 20, 30, 60, "sadas");
	// alert("sadas");
	AddTitle();
	var iCurLine = 100;// 标题行之后的数据从位置80px开始打印
	// 获取传过来的json长度
	var length = 0;
	for ( var ever in jsonData) {
		length++;
	}
	console.log(length);
	// 第一行
	LODOP.ADD_PRINT_TEXT(50, 155, 100, 20, "车牌照号：");
	LODOP.ADD_PRINT_TEXT(50, 265, 100, 20, "车主姓名：");
	LODOP.ADD_PRINT_TEXT(50, 355, 100, 20, "单据号：");

	LODOP.ADD_PRINT_TEXT(50, 215, 100, 20, jsonData[0].cplateid);
	LODOP.ADD_PRINT_TEXT(50, 320, 100, 20, jsonData[0].coname);
	LODOP.ADD_PRINT_TEXT(50, 400, 200, 20, jsonData[0].reredocumentid);
	LODOP.ADD_PRINT_TEXT(50, 560, 100, 20, jsonData[0].retimeofreceipt);

	// 第二行
	LODOP.ADD_PRINT_TEXT(85, 155, 100, 20, "费用名称");
	LODOP.ADD_PRINT_TEXT(85, 275, 100, 20, "应交款");
	LODOP.ADD_PRINT_TEXT(85, 395, 100, 20, "实收款");
	LODOP.ADD_PRINT_TEXT(85, 515, 100, 20, "欠款");
	var sumMoney = 0;
	var iCurLine = 110;// 标题行之后的数据从位置80px开始打印
	var shoufei = "";
	for (i = 1; i < length; i++) {
		LODOP.ADD_PRINT_TEXT(iCurLine, 155, 100, 20, jsonData[i].rsname);
		LODOP.ADD_PRINT_TEXT(iCurLine, 275, 100, 20, jsonData[i].rsablemoney);
		LODOP.ADD_PRINT_TEXT(iCurLine, 410, 100, 20, jsonData[i].rsfundsmoney);
		LODOP.ADD_PRINT_TEXT(iCurLine, 515, 100, 20, jsonData[i].rsowemoney);
		iCurLine = iCurLine + 25;// 每行占25px
		sumMoney = sumMoney + jsonData[i].rsfundsmoney
		if (jsonData[i].rsname == "日租金") {
			shoufei = jsonData[i].resummary;
		}
	}
	// 第二行
	/*
	 * LODOP.ADD_PRINT_TEXT(110, 15, 100, 20, "1"); LODOP.ADD_PRINT_TEXT(110,
	 * 135, 100, 20, "1"); LODOP.ADD_PRINT_TEXT(110, 255, 100, 20, "实收款");
	 * LODOP.ADD_PRINT_TEXT(110, 375, 100, 20, "欠款");
	 */
	// alert(iCurLine);
	// 第三行
	LODOP.ADD_PRINT_TEXT(iCurLine, 155, 100, 20, "小写：");
	/*
	 * LODOP.SET_PRINT_STYLEA(9, "FontSize", 11); LODOP.SET_PRINT_STYLEA(9,
	 * "Bold", 1);
	 */
	LODOP.ADD_PRINT_TEXT(iCurLine, 405, 100, 20, "大写：");
	/*
	 * LODOP.SET_PRINT_STYLEA(10, "FontSize", 11); LODOP.SET_PRINT_STYLEA(10,
	 * "Bold", 1);
	 */
	// 大小写值
	LODOP.ADD_PRINT_TEXT(iCurLine, 190, 240, 20, sumMoney);
	LODOP.ADD_PRINT_TEXT(iCurLine, 440, 240, 20, convertCurrency(sumMoney));

	// 收费区间
	LODOP.ADD_PRINT_TEXT(iCurLine + 20, 155, 100, 20, "收费区间：");
	/*
	 * LODOP.SET_PRINT_STYLEA(11, "FontSize", 11); LODOP.SET_PRINT_STYLEA(11,
	 * "Bold", 1);
	 */
	// 收费区间值
	LODOP.ADD_PRINT_TEXT(iCurLine + 20, 220, 200, 20, shoufei);

	/*
	 * //第五行 LODOP.ADD_PRINT_TEXT(iCurLine+50, 90, 100, 20, "备注信息");
	 */

	// 第六行
	LODOP.ADD_PRINT_TEXT(iCurLine + 35, 155, 100, 20, "制单：");
	/*
	 * LODOP.SET_PRINT_STYLEA(13, "FontSize", 11); LODOP.SET_PRINT_STYLEA(13,
	 * "Bold", 1);
	 */
	LODOP.ADD_PRINT_TEXT(iCurLine + 35, 275, 100, 20, "会计：");
	/*
	 * LODOP.SET_PRINT_STYLEA(14, "FontSize", 11); LODOP.SET_PRINT_STYLEA(14,
	 * "Bold", 1);
	 */
	LODOP.ADD_PRINT_TEXT(iCurLine + 35, 395, 100, 20, "出纳：");
	/*
	 * LODOP.SET_PRINT_STYLEA(15, "FontSize", 11); LODOP.SET_PRINT_STYLEA(15,
	 * "Bold", 1);
	 */

	// 第六行
	LODOP
			.ADD_PRINT_TEXT(iCurLine + 35, 185, 100, 20,
					jsonData[0].rechamberlain);
	LODOP.ADD_PRINT_TEXT(iCurLine + 35, 315, 100, 20, "");
	LODOP.ADD_PRINT_TEXT(iCurLine + 35, 435, 100, 20, "");

	// 第七行
	/*
	 * LODOP.ADD_PRINT_TEXT(295, 15, 100, 20, "打印时间：");
	 * LODOP.SET_PRINT_STYLEA(16, "FontSize", 11); LODOP.SET_PRINT_STYLEA(16,
	 * "Bold", 1); LODOP.ADD_PRINT_TEXT(295, 255, 100, 20, "合计金额：");
	 * LODOP.SET_PRINT_STYLEA(17, "FontSize", 11); LODOP.SET_PRINT_STYLEA(17,
	 * "Bold", 1); LODOP.ADD_PRINT_LINE(100, 14, 100, 510, 0, 1);
	 */

	// 第七行
	/*
	 * LODOP.ADD_PRINT_TEXT(297, 90, 100, 20, (new Date()).toLocaleDateString() + " "+
	 * (new Date()).toLocaleTimeString()); LODOP.ADD_PRINT_TEXT(297, 330, 100,
	 * 20,"合计金额");
	 */
	// iCurLine = iCurLine + 25;// 每行占25px
	// }
	// }
	LODOP.ADD_PRINT_LINE(iCurLine + 15, 144, iCurLine + 15, 640, 0, 1);
	// LODOP.ADD_PRINT_TEXT(iCurLine + 195, 15, 300, 20, "打印时间："
	// + (new Date()).toLocaleDateString() + " "+ (new
	// Date()).toLocaleTimeString());
	// LODOP.ADD_PRINT_TEXT(iCurLine + 195, 205, 150, 20, "合计金额："
	// + 1);
	LODOP.SET_PRINT_PAGESIZE(3, 1385, 45, "");// 这里3表示纵向打印且纸高“按内容的高度”；1385表示纸宽138.5mm；45表示页底空白4.5mm
	LODOP.PREVIEW();
};
function AddTitle() {
	LODOP = getLodop();
	LODOP.PRINT_INIT("打印控件功能演示_Lodop功能_不同高度幅面");
	LODOP.ADD_PRINT_TEXT(15, 390, 355, 30, "收款单据");
	LODOP.SET_PRINT_STYLEA(1, "FontSize", 15);
	LODOP.SET_PRINT_STYLEA(1, "Bold", 1);
	LODOP.ADD_PRINT_LINE(100, 144, 100, 640, 0, 1);
};

function MyPreviewReceiptBefore(jsonData) {

//	ADD_PRINT_TABLE(30, 20, 30, 60, "sadas");
	// alert("sadas");
	AddTitle();
	var iCurLine = 100;// 标题行之后的数据从位置80px开始打印
	// 获取传过来的json长度
	var length = 0;
	for ( var ever in jsonData) {
		length++;
	}
	console.log(length);
	// 第一行
	LODOP.ADD_PRINT_TEXT(50, 155, 100, 20, "车牌照号：");
	LODOP.ADD_PRINT_TEXT(50, 265, 100, 20, "车主姓名：");
	LODOP.ADD_PRINT_TEXT(50, 355, 100, 20, "单据号：");

	LODOP.ADD_PRINT_TEXT(50, 215, 100, 20, jsonData[0].cplateid);
	LODOP.ADD_PRINT_TEXT(50, 320, 100, 20, jsonData[0].coname);
	LODOP.ADD_PRINT_TEXT(50, 400, 200, 20, jsonData[0].reredocumentid);
	LODOP.ADD_PRINT_TEXT(50, 560, 100, 20, jsonData[0].retimeofreceipt);

	// 第二行
	LODOP.ADD_PRINT_TEXT(85, 155, 100, 20, "费用名称");
	LODOP.ADD_PRINT_TEXT(85, 275, 100, 20, "应交款");
	LODOP.ADD_PRINT_TEXT(85, 395, 100, 20, "实收款");
	LODOP.ADD_PRINT_TEXT(85, 515, 100, 20, "欠款");
	var sumMoney = 0;
	var iCurLine = 110;// 标题行之后的数据从位置80px开始打印
	var shoufei = "";
	for (i = 1; i < length; i++) {
		LODOP.ADD_PRINT_TEXT(iCurLine, 155, 100, 20, jsonData[i].rsname);
		LODOP.ADD_PRINT_TEXT(iCurLine, 275, 100, 20, jsonData[i].rsablemoney);
		LODOP.ADD_PRINT_TEXT(iCurLine, 410, 100, 20, jsonData[i].rsfundsmoney);
		LODOP.ADD_PRINT_TEXT(iCurLine, 515, 100, 20, jsonData[i].rsowemoney);
		iCurLine = iCurLine + 25;// 每行占25px
		sumMoney = sumMoney + jsonData[i].rsfundsmoney
		if (jsonData[i].rsname == "日租金") {
			shoufei = jsonData[i].resummary;
		}
	}
	// 第二行
	/*
	 * LODOP.ADD_PRINT_TEXT(110, 15, 100, 20, "1"); LODOP.ADD_PRINT_TEXT(110,
	 * 135, 100, 20, "1"); LODOP.ADD_PRINT_TEXT(110, 255, 100, 20, "实收款");
	 * LODOP.ADD_PRINT_TEXT(110, 375, 100, 20, "欠款");
	 */
	// alert(iCurLine);
	// 第三行
	LODOP.ADD_PRINT_TEXT(iCurLine, 155, 100, 20, "小写：");
	/*
	 * LODOP.SET_PRINT_STYLEA(9, "FontSize", 11); LODOP.SET_PRINT_STYLEA(9,
	 * "Bold", 1);
	 */
	LODOP.ADD_PRINT_TEXT(iCurLine, 405, 100, 20, "大写：");
	/*
	 * LODOP.SET_PRINT_STYLEA(10, "FontSize", 11); LODOP.SET_PRINT_STYLEA(10,
	 * "Bold", 1);
	 */
	// 大小写值
	LODOP.ADD_PRINT_TEXT(iCurLine, 190, 240, 20, sumMoney);
	LODOP.ADD_PRINT_TEXT(iCurLine, 440, 240, 20, convertCurrency(sumMoney));

	// 收费区间
	LODOP.ADD_PRINT_TEXT(iCurLine + 20, 155, 100, 20, "收费区间：");
	/*
	 * LODOP.SET_PRINT_STYLEA(11, "FontSize", 11); LODOP.SET_PRINT_STYLEA(11,
	 * "Bold", 1);
	 */
	// 收费区间值
	LODOP.ADD_PRINT_TEXT(iCurLine + 20, 220, 200, 20, shoufei);

	/*
	 * //第五行 LODOP.ADD_PRINT_TEXT(iCurLine+50, 90, 100, 20, "备注信息");
	 */

	// 第六行
	LODOP.ADD_PRINT_TEXT(iCurLine + 35, 155, 100, 20, "制单：");
	/*
	 * LODOP.SET_PRINT_STYLEA(13, "FontSize", 11); LODOP.SET_PRINT_STYLEA(13,
	 * "Bold", 1);
	 */
	LODOP.ADD_PRINT_TEXT(iCurLine + 35, 275, 100, 20, "会计：");
	/*
	 * LODOP.SET_PRINT_STYLEA(14, "FontSize", 11); LODOP.SET_PRINT_STYLEA(14,
	 * "Bold", 1);
	 */
	LODOP.ADD_PRINT_TEXT(iCurLine + 35, 395, 100, 20, "出纳：");
	/*
	 * LODOP.SET_PRINT_STYLEA(15, "FontSize", 11); LODOP.SET_PRINT_STYLEA(15,
	 * "Bold", 1);
	 */

	// 第六行
	LODOP
			.ADD_PRINT_TEXT(iCurLine + 35, 185, 100, 20,
					jsonData[0].rechamberlain);
	LODOP.ADD_PRINT_TEXT(iCurLine + 35, 315, 100, 20, "");
	LODOP.ADD_PRINT_TEXT(iCurLine + 35, 435, 100, 20, "");

	// 第七行
	/*
	 * LODOP.ADD_PRINT_TEXT(295, 15, 100, 20, "打印时间：");
	 * LODOP.SET_PRINT_STYLEA(16, "FontSize", 11); LODOP.SET_PRINT_STYLEA(16,
	 * "Bold", 1); LODOP.ADD_PRINT_TEXT(295, 255, 100, 20, "合计金额：");
	 * LODOP.SET_PRINT_STYLEA(17, "FontSize", 11); LODOP.SET_PRINT_STYLEA(17,
	 * "Bold", 1); LODOP.ADD_PRINT_LINE(100, 14, 100, 510, 0, 1);
	 */

	// 第七行
	/*
	 * LODOP.ADD_PRINT_TEXT(297, 90, 100, 20, (new Date()).toLocaleDateString() + " "+
	 * (new Date()).toLocaleTimeString()); LODOP.ADD_PRINT_TEXT(297, 330, 100,
	 * 20,"合计金额");
	 */
	// iCurLine = iCurLine + 25;// 每行占25px
	// }
	// }
	LODOP.ADD_PRINT_LINE(iCurLine + 15, 144, iCurLine + 15, 640, 0, 1);
	// LODOP.ADD_PRINT_TEXT(iCurLine + 195, 15, 300, 20, "打印时间："
	// + (new Date()).toLocaleDateString() + " "+ (new
	// Date()).toLocaleTimeString());
	// LODOP.ADD_PRINT_TEXT(iCurLine + 195, 205, 150, 20, "合计金额："
	// + 1);
	LODOP.SET_PRINT_PAGESIZE(3, 1385, 45, "");// 这里3表示纵向打印且纸高“按内容的高度”；1385表示纸宽138.5mm；45表示页底空白4.5mm
	LODOP.PREVIEW();
};
function AddTitle() {
	LODOP = getLodop();
	LODOP.PRINT_INIT("打印控件功能演示_Lodop功能_不同高度幅面");
	LODOP.ADD_PRINT_TEXT(15, 390, 355, 30, "预收款单据");
	LODOP.SET_PRINT_STYLEA(1, "FontSize", 15);
	LODOP.SET_PRINT_STYLEA(1, "Bold", 1);
	LODOP.ADD_PRINT_LINE(100, 144, 100, 640, 0, 1);
};




// 代码如下所示：
function convertCurrency(money) {
	// 汉字的数字
	var cnNums = new Array('零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖');
	// 基本单位
	var cnIntRadice = new Array('', '拾', '佰', '仟');
	// 对应整数部分扩展单位
	var cnIntUnits = new Array('', '万', '亿', '兆');
	// 对应小数部分单位
	var cnDecUnits = new Array('角', '分', '毫', '厘');
	// 整数金额时后面跟的字符
	var cnInteger = '整';
	// 整型完以后的单位
	var cnIntLast = '元';
	// 最大处理的数字
	var maxNum = 999999999999999.9999;
	// 金额整数部分
	var integerNum;
	// 金额小数部分
	var decimalNum;
	// 输出的中文金额字符串
	var chineseStr = '';
	// 分离金额后用的数组，预定义
	var parts;
	if (money == '') {
		return '';
	}
	money = parseFloat(money);
	if (money >= maxNum) {
		// 超出最大处理数字
		return '';
	}
	if (money == 0) {
		chineseStr = cnNums[0] + cnIntLast + cnInteger;
		return chineseStr;
	}
	// 转换为字符串
	money = money.toString();
	if (money.indexOf('.') == -1) {
		integerNum = money;
		decimalNum = '';
	} else {
		parts = money.split('.');
		integerNum = parts[0];
		decimalNum = parts[1].substr(0, 4);
	}
	// 获取整型部分转换
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
				// 归零
				zeroCount = 0;
				chineseStr += cnNums[parseInt(n)] + cnIntRadice[m];
			}
			if (m == 0 && zeroCount < 4) {
				chineseStr += cnIntUnits[q];
			}
		}
		chineseStr += cnIntLast;
	}
	// 小数部分
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

// 打印收据
function printacquittance(acquittanceData) {
	// alert("saddas");
	acquittanceTitle();
	var iCurLine = 100;// 标题行之后的数据从位置80px开始打印
	// 获取传过来的json长度
	// 第一行
	LODOP.ADD_PRINT_TEXT(50, 155, 100, 20, "单据号：");
	LODOP.ADD_PRINT_TEXT(50, 355, 100, 20, "收款日期：");

	LODOP.ADD_PRINT_TEXT(50, 215, 200, 20, acquittanceData.acnumbers);
	LODOP.ADD_PRINT_TEXT(50, 420, 200, 20, acquittanceData.actime);

	// 第二行
	LODOP.ADD_PRINT_TEXT(85, 155, 100, 20, "名  称：");
	LODOP.ADD_PRINT_TEXT(85, 210, 100, 20, acquittanceData.acname);
	LODOP.ADD_PRINT_LINE(100, 144, 100, 640, 0, 1);// 间隔15

	// 第三行
	LODOP.ADD_PRINT_TEXT(115, 155, 100, 20, "上款系：");
	LODOP.ADD_PRINT_TEXT(115, 210, 100, 20, acquittanceData.acup);
	LODOP.ADD_PRINT_LINE(130, 144, 130, 640, 0, 1); // 间隔15

	// 第四行
	LODOP.ADD_PRINT_TEXT(145, 155, 100, 20, "金额");
	LODOP.ADD_PRINT_TEXT(145, 190, 100, 20, "小写：");
	LODOP.ADD_PRINT_TEXT(145, 230, 100, 20, acquittanceData.acmoney);

	LODOP.ADD_PRINT_TEXT(145, 350, 100, 20, "大写：");
	LODOP.ADD_PRINT_TEXT(145, 390, 100, 20,
			convertCurrency(acquittanceData.acmoney));
	LODOP.ADD_PRINT_LINE(160, 144, 160, 640, 0, 1);
	// 第五行
	LODOP.ADD_PRINT_TEXT(175, 155, 100, 20, "收款单位：");
	LODOP.ADD_PRINT_TEXT(175, 220, 300, 20, "吉林省寰旗科技有限公司");
	// 第六行
	LODOP.ADD_PRINT_TEXT(205, 155, 100, 20, "制单：");
	LODOP.ADD_PRINT_TEXT(205, 275, 100, 20, "会计：");
	LODOP.ADD_PRINT_TEXT(205, 395, 100, 20, "出纳：");

	LODOP.ADD_PRINT_TEXT(205, 195, 100, 20, acquittanceData.acpayee);
	LODOP.ADD_PRINT_TEXT(205, 315, 100, 20, "");
	LODOP.ADD_PRINT_TEXT(205, 435, 100, 20, "");

	LODOP.SET_PRINT_PAGESIZE(3, 1385, 45, "");// 这里3表示纵向打印且纸高“按内容的高度”；1385表示纸宽138.5mm；45表示页底空白4.5mm
	LODOP.PREVIEW();
};
function acquittanceTitle() {
	// alert("acquittanceTitle");
	LODOP = getLodop();
	LODOP.PRINT_INIT("打印控件功能演示_Lodop功能_不同高度幅面");
	LODOP.ADD_PRINT_TEXT(15, 340, 355, 30, "收款单据");
	LODOP.SET_PRINT_STYLEA(1, "FontSize", 15);
	LODOP.SET_PRINT_STYLEA(1, "Bold", 1);

	// LODOP.ADD_PRINT_LINE(100, 144, 100, 640, 0, 1);
};

var LODOP; // 声明为全局变量

function createdate(dayReportData) {

	// ------循环画线例子begin-----
	LODOP = getLodop();
	LODOP.PRINT_INITA(0, 0, 577, 10000, "打印控件功能演示_Lodop功能_不同高度幅面");
	LODOP.SET_PRINT_PAGESIZE(3, 2500, 45, "");
	LODOP.ADD_PRINT_TEXT(8, 300, 275, 30, "收款日报");
	LODOP.SET_PRINT_STYLEA(0, "FontSize", 12);
	LODOP.SET_PRINT_STYLEA(0, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(50, 15, 100, 20, "日期");
	LODOP.ADD_PRINT_TEXT(50, 137, 100, 20, "合同工本费");
	LODOP.ADD_PRINT_TEXT(50, 225, 100, 20, "合同公证费");
	LODOP.ADD_PRINT_TEXT(50, 313, 100, 20, "日租金");
	LODOP.ADD_PRINT_TEXT(50, 401, 100, 20, "杂费");
	LODOP.ADD_PRINT_TEXT(50, 489, 100, 20, "租赁费");
	LODOP.ADD_PRINT_TEXT(50, 577, 100, 20, "合计");
	// LODOP.ADD_PRINT_TEXT(50,665,100,20,"合计");

	LODOP.ADD_PRINT_LINE(45, 14, 43, 661, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 14, 44, 16, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 132, 44, 134, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 220, 44, 222, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 308, 44, 310, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 396, 44, 398, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 484, 44, 486, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 572, 44, 574, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 660, 44, 662, 0, 2);
	// LODOP.ADD_PRINT_LINE(76,748,44,750,0,2);
	LODOP.ADD_PRINT_LINE(78, 14, 76, 661, 0, 2);

	// --行内容
	// var j=1;
	// for (i = 0; i < j; i++) {
	// 第二行数据
	LODOP.ADD_PRINT_TEXT(81, 15, 120, 20, dayReportData.date);
	LODOP.ADD_PRINT_TEXT(81, 137, 81, 20, dayReportData.contractcost);
	LODOP.ADD_PRINT_TEXT(81, 225, 81, 20, dayReportData.contractfee);
	LODOP.ADD_PRINT_TEXT(81, 313, 81, 20, dayReportData.rent);
	LODOP.ADD_PRINT_TEXT(81, 401, 81, 20, dayReportData.other);
	LODOP.ADD_PRINT_TEXT(81, 489, 81, 20, dayReportData.rentalfee);
	LODOP.ADD_PRINT_TEXT(81, 577, 81, 20, dayReportData.account);
	// LODOP.ADD_PRINT_TEXT(81,665,81,20,"商品A");

	// --格子画线
	LODOP.ADD_PRINT_LINE(111, 14, 76, 15, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 132, 76, 133, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 220, 76, 221, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 308, 76, 309, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 396, 76, 397, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 484, 76, 485, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 572, 76, 573, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 660, 76, 661, 0, 2);
	// LODOP.ADD_PRINT_LINE(111,748,76,750,0,2);
	LODOP.ADD_PRINT_LINE(111, 14, 110, 661, 0, 2);
	// 第三行数据
	LODOP.ADD_PRINT_TEXT(114, 15, 81, 20, "合  计");
	LODOP.ADD_PRINT_TEXT(114, 137, 81, 20, dayReportData.contractcost);
	LODOP.ADD_PRINT_TEXT(114, 225, 81, 20, dayReportData.contractfee);
	LODOP.ADD_PRINT_TEXT(114, 313, 81, 20, dayReportData.rent);
	LODOP.ADD_PRINT_TEXT(114, 401, 81, 20, dayReportData.other);
	LODOP.ADD_PRINT_TEXT(114, 489, 81, 20, dayReportData.rentalfee);
	LODOP.ADD_PRINT_TEXT(114, 577, 81, 20, dayReportData.account);
	// LODOP.ADD_PRINT_TEXT(114,665,81,20,"商品A");

	LODOP.ADD_PRINT_LINE(144, 14, 76, 15, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 132, 76, 132, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 220, 76, 220, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 308, 76, 308, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 396, 76, 396, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 484, 76, 484, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 572, 76, 572, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 660, 76, 660, 0, 2);
	// LODOP.ADD_PRINT_LINE(144,748,76,748,0,2);
	LODOP.ADD_PRINT_LINE(146, 14, 146, 661, 0, 2);
	// }
	// 横线
	// LODOP.ADD_PRINT_LINE(176,14,176,661,0,2);

	LODOP.ADD_PRINT_TEXT(186, 15, 100, 20, "制单：");
	LODOP.ADD_PRINT_TEXT(186, 135, 100, 20, "会计：");
	LODOP.ADD_PRINT_TEXT(186, 255, 100, 20, "出纳：");

	LODOP.ADD_PRINT_TEXT(186, 55, 100, 20, "");
	LODOP.ADD_PRINT_TEXT(186, 175, 100, 20, "");
	LODOP.ADD_PRINT_TEXT(186, 295, 100, 20, "");
	// LODOP.ADD_PRINT_TEXT(180,20,300,20,"打印时间：‎2015‎-‎12‎-‎15 ‎12‎:‎19‎");
	// LODOP.ADD_PRINT_TEXT(180,489,150,20,"合计金额：");
	// ------------end-------------

};

// 打印日报
function printDayReport(dayReportData) {

	LODOP = getLodop();
	createdate(dayReportData);
	LODOP.PREVIEW();// 打印预览
}


function createmonthdate(dayReportData) {

	// ------循环画线例子begin-----
	LODOP = getLodop();
	LODOP.PRINT_INITA(0, 0, 577, 10000, "打印控件功能演示_Lodop功能_不同高度幅面");
	LODOP.SET_PRINT_PAGESIZE(3, 2500, 45, "");
	LODOP.ADD_PRINT_TEXT(8, 300, 275, 30, "收款月报");
	LODOP.SET_PRINT_STYLEA(0, "FontSize", 12);
	LODOP.SET_PRINT_STYLEA(0, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(50, 15, 100, 20, "日期");
	LODOP.ADD_PRINT_TEXT(50, 137, 100, 20, "合同工本费");
	LODOP.ADD_PRINT_TEXT(50, 225, 100, 20, "合同公证费");
	LODOP.ADD_PRINT_TEXT(50, 313, 100, 20, "日租金");
	LODOP.ADD_PRINT_TEXT(50, 401, 100, 20, "杂费");
	LODOP.ADD_PRINT_TEXT(50, 489, 100, 20, "租赁费");
	LODOP.ADD_PRINT_TEXT(50, 577, 100, 20, "合计");
	// LODOP.ADD_PRINT_TEXT(50,665,100,20,"合计");

	LODOP.ADD_PRINT_LINE(45, 14, 43, 661, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 14, 44, 16, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 132, 44, 134, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 220, 44, 222, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 308, 44, 310, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 396, 44, 398, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 484, 44, 486, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 572, 44, 574, 0, 2);
	LODOP.ADD_PRINT_LINE(76, 660, 44, 662, 0, 2);
	// LODOP.ADD_PRINT_LINE(76,748,44,750,0,2);
	LODOP.ADD_PRINT_LINE(78, 14, 76, 661, 0, 2);

	// --行内容
	// var j=1;
	// for (i = 0; i < j; i++) {
	// 第二行数据
	LODOP.ADD_PRINT_TEXT(81, 15, 120, 20, dayReportData.date);
	LODOP.ADD_PRINT_TEXT(81, 137, 81, 20, dayReportData.contractcost);
	LODOP.ADD_PRINT_TEXT(81, 225, 81, 20, dayReportData.contractfee);
	LODOP.ADD_PRINT_TEXT(81, 313, 81, 20, dayReportData.rent);
	LODOP.ADD_PRINT_TEXT(81, 401, 81, 20, dayReportData.other);
	LODOP.ADD_PRINT_TEXT(81, 489, 81, 20, dayReportData.rentalfee);
	LODOP.ADD_PRINT_TEXT(81, 577, 81, 20, dayReportData.account);
	// LODOP.ADD_PRINT_TEXT(81,665,81,20,"商品A");

	// --格子画线
	LODOP.ADD_PRINT_LINE(111, 14, 76, 15, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 132, 76, 133, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 220, 76, 221, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 308, 76, 309, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 396, 76, 397, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 484, 76, 485, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 572, 76, 573, 0, 2);
	LODOP.ADD_PRINT_LINE(111, 660, 76, 661, 0, 2);
	// LODOP.ADD_PRINT_LINE(111,748,76,750,0,2);
	LODOP.ADD_PRINT_LINE(111, 14, 110, 661, 0, 2);
	// 第三行数据
	LODOP.ADD_PRINT_TEXT(114, 15, 81, 20, "合  计");
	LODOP.ADD_PRINT_TEXT(114, 137, 81, 20, dayReportData.contractcost);
	LODOP.ADD_PRINT_TEXT(114, 225, 81, 20, dayReportData.contractfee);
	LODOP.ADD_PRINT_TEXT(114, 313, 81, 20, dayReportData.rent);
	LODOP.ADD_PRINT_TEXT(114, 401, 81, 20, dayReportData.other);
	LODOP.ADD_PRINT_TEXT(114, 489, 81, 20, dayReportData.rentalfee);
	LODOP.ADD_PRINT_TEXT(114, 577, 81, 20, dayReportData.account);
	// LODOP.ADD_PRINT_TEXT(114,665,81,20,"商品A");

	LODOP.ADD_PRINT_LINE(144, 14, 76, 15, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 132, 76, 132, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 220, 76, 220, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 308, 76, 308, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 396, 76, 396, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 484, 76, 484, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 572, 76, 572, 0, 2);
	LODOP.ADD_PRINT_LINE(144, 660, 76, 660, 0, 2);
	// LODOP.ADD_PRINT_LINE(144,748,76,748,0,2);
	LODOP.ADD_PRINT_LINE(146, 14, 146, 661, 0, 2);
	// }
	// 横线
	// LODOP.ADD_PRINT_LINE(176,14,176,661,0,2);

	LODOP.ADD_PRINT_TEXT(186, 15, 100, 20, "制单：");
	LODOP.ADD_PRINT_TEXT(186, 135, 100, 20, "会计：");
	LODOP.ADD_PRINT_TEXT(186, 255, 100, 20, "出纳：");

	LODOP.ADD_PRINT_TEXT(186, 55, 100, 20, "");
	LODOP.ADD_PRINT_TEXT(186, 175, 100, 20, "");
	LODOP.ADD_PRINT_TEXT(186, 295, 100, 20, "");
	// LODOP.ADD_PRINT_TEXT(180,20,300,20,"打印时间：‎2015‎-‎12‎-‎15 ‎12‎:‎19‎");
	// LODOP.ADD_PRINT_TEXT(180,489,150,20,"合计金额：");
	// ------------end-------------

};

// 打印月报
function printMonthReport(dayReportData) {

	LODOP = getLodop();
	createmonthdate(dayReportData);
	LODOP.PREVIEW();// 打印预览
}
