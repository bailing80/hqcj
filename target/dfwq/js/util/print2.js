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
	var iCurLine = 80;// 标题行之后的数据从位置80px开始打印
//	获取传过来的json长度
		var length = 0;
		for(var ever in jsonData) {
		    length++;
		}
		console.log(length);

//	for (i = 1; i < length; i++) {
//		if (document.getElementById("CK" + i).checked) {
			LODOP.ADD_PRINT_TEXT(iCurLine, 15, 100, 20, jsonData.acnumbers);
			LODOP.ADD_PRINT_TEXT(iCurLine, 149, 100, 20, jsonData.actime);
			LODOP.ADD_PRINT_TEXT(iCurLine, 289, 100, 20, jsonData.acname);
			LODOP.ADD_PRINT_TEXT(iCurLine, 409, 100, 20, jsonData.acup);
			LODOP.ADD_PRINT_TEXT(iCurLine, 549, 100, 20, jsonData.acmoney);
			LODOP.ADD_PRINT_TEXT(iCurLine, 669, 100, 20, jsonData.accompany);
			iCurLine = iCurLine + 25;// 每行占25px
//		}
//	}
	LODOP.ADD_PRINT_LINE(iCurLine, 14, iCurLine, 510, 0, 1);
	LODOP.ADD_PRINT_TEXT(iCurLine + 5, 20, 300, 20, "打印时间："
			+ (new Date()).toLocaleDateString() + " "
			+ (new Date()).toLocaleTimeString());
	LODOP.ADD_PRINT_TEXT(iCurLine + 5, 346, 150, 20, "合计金额："
			+ 1);
	LODOP.SET_PRINT_PAGESIZE(3, 1385, 45, "");// 这里3表示纵向打印且纸高“按内容的高度”；1385表示纸宽138.5mm；45表示页底空白4.5mm
	LODOP.PREVIEW();
};
function AddTitle() {
	LODOP = getLodop();
	LODOP.PRINT_INIT("打印控件功能演示_Lodop功能_不同高度幅面");
	LODOP.ADD_PRINT_TEXT(15, 102, 355, 30, "收款单据");
	LODOP.SET_PRINT_STYLEA(1, "FontSize", 13);
	LODOP.SET_PRINT_STYLEA(1, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(50, 15, 100, 20, "单据号");
	LODOP.SET_PRINT_STYLEA(2, "FontSize", 10);
	LODOP.SET_PRINT_STYLEA(2, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(50, 149, 100, 20, "收款日期");
	LODOP.SET_PRINT_STYLEA(3, "FontSize", 10);
	LODOP.SET_PRINT_STYLEA(3, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(50, 289, 100, 20, "名称");
	LODOP.SET_PRINT_STYLEA(4, "FontSize", 10);
	LODOP.SET_PRINT_STYLEA(4, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(50, 409, 100, 20, "上款系");
	LODOP.SET_PRINT_STYLEA(5, "FontSize", 10);
	LODOP.SET_PRINT_STYLEA(5, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(15, 102, 355, 30, "金额");
	LODOP.SET_PRINT_STYLEA(1, "FontSize", 13);
	LODOP.SET_PRINT_STYLEA(1, "Bold", 1);
	LODOP.ADD_PRINT_TEXT(15, 102, 355, 30, "收款单位");
	LODOP.SET_PRINT_STYLEA(1, "FontSize", 13);
	LODOP.SET_PRINT_STYLEA(1, "Bold", 1);
	LODOP.ADD_PRINT_LINE(72, 14, 73, 510, 0, 1);
};
