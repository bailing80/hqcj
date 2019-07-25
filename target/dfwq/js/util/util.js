//获取下个月的天数
function getNextMonthDay(date) {  
    var arr = date.split('-');  //用-将获取到的日期分割
    var year = arr[0]; //获取当前日期的年份  
    var month = arr[1]; //获取当前日期的月份  
    var day = arr[2]; //获取当前日期的日   
    var month2 = parseInt(month) + 1;  //获取下个月的月份
    if (month2 == 13) {  
        year = parseInt(year) + 1;  //获取下个月的年份
        month2 = 1;  
    }  
    var days2 = new Date(year, month2, 0);  //获取当前日期中月的天数
    return days2.getDate();
}

// 默认生成当前的日期到日
function getNowDate() {
	return new Date().format("yyyy-MM-dd");
} 

//默认生成当前的日期到秒
function getNowDateToSs() {
	return new Date().format("yyyy-MM-dd hh:mm:ss");
}

//jQuery获取当前日期及前一周或者后一周的日期

//获取下周的周三和下下周二
function getNextWeek() {
	var now = new Date(); 
	var nowTime = now.getTime() ; 
	var day = now.getDay();
	var oneDayLong = 24*60*60*1000 ; 
	var data = [];
	
	var MondayTime = nowTime + (10-day)*oneDayLong ; 
	var SundayTime =  nowTime + (16-day)*oneDayLong ; 

	var monday = new Date(MondayTime).format("yyyy-MM-dd");
	var sunday = new Date(SundayTime).format("yyyy-MM-dd");
//	console.log(now.format("yyyy-MM-dd"));
	console.log(new Date().format("yyyy-MM-dd"));
	console.log(monday);
	console.log(sunday);
	data[0] = monday;
	data[1] = sunday;
	return data;
}

function getBeforeDate(n){//n为你要传入的参数，当前为0，前一天为-1，后一天为1
      var date = new Date() ;
      var year,month,day ;
      date.setDate(date.getDate()+n);
      year = date.getFullYear();
      month = date.getMonth()+1;
      day = date.getDate() ;
      s = year + '-' + ( month < 10 ? ( '0' + month ) : month ) + '-' + ( day < 10 ? ( '0' + day ) : day) ;
      return s ;
}
//获取下周的第一天
function getNextStartWeek(){
	var year = new Date().getFullYear();
	const week = [];
//    for (let i = 0; i < 7; i++) {
	    let Stamp = new Date(2018,11,27);
//	    let day = (7 - Stamp.getDay())+1;  
	    let num = 8 - Stamp.getDay();
	    Stamp.setDate(Stamp.getDate() + num);
	    week[0] = (Stamp.getMonth()) + '.' + Stamp.getDate() ;
//	    console.log(week[0]);
	    
//    }
    return year+"."+week[0];
}
/*function getNextStartWeek(){
	var year = new Date().getFullYear();
	const week = [];
    for (let i = 0; i < 7; i++) {
	    let Stamp = new Date();
	    let num = Stamp.getDay() + 1 + i;
	    Stamp.setDate(Stamp.getDate() + num);
	    week[i] = (Stamp.getMonth() + 1) + '.' + Stamp.getDate() ;
	    console.log(week[i]);
    }
    return year+"."+week[0];
}*/
//获取下周的最后一天
function getNextLastWeek(date){
	var year = new Date().getFullYear();
	const week = [];
    for (let i = 0; i < 7; i++) {
	    let Stamp = new Date();
	    let num = Stamp.getDay() + 1 + i;
	    Stamp.setDate(Stamp.getDate() + num);
	    week[i] = (Stamp.getMonth() + 1) + '.' + Stamp.getDate();
	    console.log(week[i]);
    }
    return year + "."+week[6];
}

//获取下个月的第一天
function getNextStartMonth(date) {  
    var arr = date.split('-');  //用-将获取到的日期分割
    var year = arr[0]; //获取当前日期的年份  
    var month = arr[1]; //获取当前日期的月份  
    var day = arr[2]; //获取当前日期的日   
    var month2 = parseInt(month) + 1;  //获取下个月的月份
    if (month2 == 13) {  
        year = parseInt(year) + 1;  //获取下个月的年份
        month2 = 1;  
    }  
    var days2 = new Date(year, month2, 0);  //获取当前日期中月的天数
    days2 = days2.getDate();  //天数
    if (day > days2) {  
        day = days2;  
    }  
    if (month2 < 10) {  //如果月份小于10  则月份格式为 01 02 .. 09 10 11 12
        month2 = '0' + month2;  
    }  
    var NewsDate = year + '.' + month2 + '.' + 1;  //将新的年月日用-拼接起来
    return NewsDate;  
}
//获取下个月的最后一天
function getNextLastMonth(date) {  
    var arr = date.split('-');  //用-将获取到的日期分割
    var year = arr[0]; //获取当前日期的年份  
    var month = arr[1]; //获取当前日期的月份  
    var day = arr[2]; //获取当前日期的日   
    var month2 = parseInt(month) + 1;  //获取下个月的月份
    if (month2 == 13) {  
        year = parseInt(year) + 1;  //获取下个月的年份
        month2 = 1;  
    }  
    var days2 = new Date(year, month2, 0);  //获取当前日期中月的天数
    days2 = days2.getDate();  //天数
    if (day > days2) {  
        day = days2;  
    }  
    if (month2 < 10) {  //如果月份小于10  则月份格式为 01 02 .. 09 10 11 12
        month2 = '0' + month2;  
    }  
    var NewsDate = year + '.' + month2 + '.' + days2;  //将新的年月日用-拼接起来
    return NewsDate;  
}
//生成随机数
function getDh() {
	var date = new Date();

	var y = date.getFullYear().toString();

	var M = (date.getMonth() + 1).toString();

	var d = date.getDate().toString();

	var H = date.getHours().toString();

	var m = date.getMinutes().toString();

	var s = date.getSeconds().toString();

	var S = date.getMilliseconds().toString();

	if (M.length < 2) {
		M = '0' + M;
	}

	if (d.length < 2) {
		d = '0' + d;
	}

	if (H.length < 2) {
		H = '0' + H;
	}

	if (m.length < 2) {
		m = '0' + m;
	}

	if (s.length < 2) {
		s = '0' + s;
	}

	if (S.length < 4) {
		if (S.length == 3)
			S = '0' + S;
		else if (S.length == 2)
			S = '00' + S;
		else if (S.length == 1)
			S = '000' + S;
	}

	var jh_jhdh = y + M + d + H + m + s + S;

	for (var count = 0; count < 1; count++) {
		jh_jhdh += (Math.floor(10 * Math.random())).toString();
	}
	return jh_jhdh;
}

//jQuery根据ip获取城市
function getCP(id) {
//	alert("getCP");
	$.ajax({
		url : 'http://api.map.baidu.com/location/ip?ak=ia6HfFL660Bvh43exmH9LrI6',
		type : 'GET',
		dataType : 'jsonp',
		async: false,
		success : function(data) {
			// 判断城市属于哪个城市，再给input框赋值
//			alert(data.content.address_detail.city);
			if (data.content.address_detail.city == "长春市") {
//				alert(data.content.address_detail.city);
				$(id).val("吉A");
			}
			if (data.content.address_detail.city == "吉林市") {
				$(id).val("吉B");
			}
			if (data.content.address_detail.city == "四平市") {
				$(id).val("吉C");
			}
			if (data.content.address_detail.city == "辽源市") {
				$(id).val("吉D");
			}
			if (data.content.address_detail.city == "通化市") {
				$(id).val("吉E");
			}
			if (data.content.address_detail.city == "白山市") {
				$(id).val("吉F");
			}
			if (data.content.address_detail.city == "白城市") {
				$(id).val("吉G");
			}
			if (data.content.address_detail.city == "延边朝鲜族自治州") {
				$(id).val("吉H");
			}
			if (data.content.address_detail.city == "松原市") {
				$(id).val("吉J");
			}
			if (data.content.address_detail.city == "长白山") {
				$(id).val("吉K");
			}
		}
	});
}
//点击查询按钮，进行操作
function showDialog(obj) {
	var id = $(obj).attr("id");
	
	if(id.indexOf("car") >= 0){
		id = id.split("add")[1]; 
		ajax_url = rootPath + '/car/editUI.shtml?id=' + id;
	} /*else if(id.indexOf("edit") >= 0){
		id = id.split("edit")[1]; 
		ajax_url += "editUI.shtml?tmx_thid=" + id;
	} else if(id.indexOf("delete") >= 0){
		id = id.split("delete")[1]; 
		ajax_url += "deleteUI.shtml?tmx_thid=" + id;
	} */
	pageii = layer.open({
		title : "编辑",
		type : 2,
		area : [ "900px", "85%" ],
		content : rootPath + '/car/editUI.shtml?id=' + id
	});
}