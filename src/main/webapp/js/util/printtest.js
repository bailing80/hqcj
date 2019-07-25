var LODOP; //声明为全局变量
function PrintMytable(){
	alert("PrintMytable");
		LODOP=getLodop();  
		LODOP.PRINT_INIT("打印控件功能演示_Lodop功能_打印表格");
		LODOP.ADD_PRINT_TABLE(100,1,"99.8%",250,"dsasad");
		LODOP.PREVIEW();			
};