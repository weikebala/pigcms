<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo ($info["title"]); ?></title>
<meta name="keywords" content="<?php echo ($info["title"]); ?>">
<meta name="description" content="">
<link rel="stylesheet" href="/tpl/static/wall/style/css/common.css" />
<link rel="stylesheet" href="/tpl/static/wall/style/css/3375_default.css" />
<link rel="stylesheet" href="/tpl/static/wall/style/css/3375_4-3.css" />
<link rel="stylesheet" href="/tpl/static/wall/style/css/3375_default01.css" />
<link rel="stylesheet" href="/tpl/static/wall/style/css/3375_4-4.css" />
<script type="text/javascript" src="/tpl/static/wall/style/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/tpl/static/wall/style/js/highcharts.js"></script>
<script type="text/javascript" src="/tpl/static/wall/style/js/exporting.js"></script>
</head>

<body onload="screen_init();">




<script>
var catid = 101;
var id = 1;
var getModule = 'dapingmu';

// 底部控制栏
var boxConSta=0;
function boxCon(status){
	if(boxConSta==0){
		$("#boxControl").animate({height:'40px'},200);
		$("#boxContGuide").attr("src","/tpl/static/wall/menu_guide_down.png");
		boxConSta = 1;
	}else{
		$("#boxControl").animate({height:'10px'},200);
		$("#boxContGuide").attr("src","/tpl/static/wall/style/images/menu_guide_up.png");
		boxConSta = 0;
	}
}

// 当前显示的模块名称
var now_module_name = '';



/*
 * 底部控制部分
 * name	 		String 模块名称
 */
function boxConItem(name){
	var boxContent = $("#boxContent .boxitem");
	for (var i = 0; i < boxContent.size(); i++) {
		$(boxContent.get(i)).slideUp("slow");
	}
	$("#"+name).slideDown("slow");
	eval(name+"(0);");
	
	// 更改当前模块名称
	now_module_name = name;
	
	eval("detectClickControl();");
}

/*
 * 获取随机数
 */
function GetRandomNum(Min,Max){
	var Range = Max - Min;
	var Rand = Math.random();
	//var Rand = Math.round(Math.random());
	return(Min + Math.round(Rand * Range));   
}

/*
 * 从一个给定的数组arr中,随机返回num个不重复项
 */
function getNotRepeatArray(items, num) {
    //新建一个数组,将传入的数组复制过来,用于运算,而不要直接操作传入的数组;
	var arr = new Array();
	for(var i=0; i<items; i++){
		arr[i] = i+1;
	}
    var temp_array = new Array();
    for (var index in arr) {
        temp_array.push(arr[index]);
    }
    //取出的数值项,保存在此数组
    var return_array = new Array();
    for (var i = 0; i<num; i++) {
        //判断如果数组还有可以取出的元素,以防下标越界
        if (temp_array.length>0) {
            //在数组中产生一个随机索引
            var arrIndex = Math.floor(Math.random()*temp_array.length);
            //将此随机索引的对应的数组元素值复制出来
            return_array[i] = temp_array[arrIndex];
            //然后删掉此索引的数组元素,这时候temp_array变为新的数组
            temp_array.splice(arrIndex, 1);
        } else {
            //数组中数据项取完后,退出循环,比如数组本来只有10项,但要求取出20项.
            break;
        }
    }
    return return_array;
}

/*
 * 将13位的时间戳转换为 11.26 13:55 的形式
 */
function formatDateTime(now, format){
	var d = new Date(parseInt(now));
	var year = d.getYear();
	var month = d.getMonth()+1;
	var date = d.getDate();
	var hour = d.getHours();
	var minute = d.getMinutes();
	var second = d.getSeconds();
	if(month<10) month = '0'+month;
	if(date<10) date = '0'+date;
	if(hour<10) hour = '0'+hour;
	if(minute<10) minute = '0'+minute;
	if(second<10) second = '0'+second;
	
	if(format=='mdhm') return month+'.'+date+' '+hour+":"+minute;
	else if(format=='md') return month+'.'+date;
	else if(format=='hms') return hour+':'+minute+':'+second;
	else if(format=='hm') return hour+':'+minute;
	
	
}
</script>
<div>
        <img id="login_bg" src="<?php if($info["background"] != ''): echo ($info["background"]); else: ?>/tpl/static/wall/style/css/img/body_bg.jpg<?php endif; ?>" style="display:block;width:100%;height:auto;margin-left:0;opacity:1;visibility:visible;" />
</div>
<div id="top" style="height:0; line-height:0; font-size:1px; overflow:hidden;position:absolute; top:0; left:0"></div>
<script language="javascript" type="text/javascript">
	var wh = window.screen.availHeight;
	if(wh>768){
		var setH = Math.round((wh-768)/2);
		//$("#top").css('height',setH);
		$("#top").css('height',50);
	}
</script>
<div style="position:absolute; top:40px;left:0;width:100%">
<div id="boxMain" style="margin:0 auto;width:1024px;postion:relative">
    
    <div id="boxTop">
        <ul>
        <li id="boxTop_logo"><?php if($info["logo"] != ''): ?><img src="<?php echo ($info["logo"]); ?>" /><?php endif; ?></li>
            <li id="boxTop_scroll">
                <div style="white-space:nowrap; overflow:hidden;" id="boxTop_scroll_div" class="none"> 
                    <div id="boxTop_scroll_begin"><?php echo ($info["title"]); ?></div>
                    <div id="boxTop_scroll_end"></div> 
                </div> 
            </li>
            <li id="boxTop_time">
            	<div class="qr">
                	<dl class="qr1" onClick="topQR('wx')"><dt style="line-height:14px;"><img src="/tpl/static/wall/style/images/boxTop_wx.gif" title="显示/隐藏 微信二维码"></dt><dd></dd></dl>
                </div>
                <p id="nowTime" class="font30">00:00:00</p>
				<script language="javascript" type="text/javascript">
                    var qr_time = 500;
                    var qr_status = 0;
                    function topQR(type){
                        if(qr_status){
                            $("#boxQR_"+type).animate({width:'0px', height:'0px'},qr_time);
                            qr_status = 0;
                        }else{
                            $("#boxQR_"+type).animate({width:'1024px', height:'666px'},qr_time);
                            qr_status = 1;
                        }
                    }
                    function boxQR(type){
                        qr_status = 0;
                        $("#boxQR_"+type).animate({width:'0px', height:'0px'},qr_time);
                    }
                    setInterval("document.getElementById('nowTime').innerHTML = formatDateTime(new Date().getTime(),'hms');",1000);
                </script>
            </li>
        </ul>
        <script>
			
		function ScrollImgLeft(){
			
			var abt_boxTop_width = parseInt($("#boxTop ul").css("width"));
			var abt_boxTop_logo_width = parseInt($("#boxTop_logo").css("width"));
			var abt_boxTop_time_width = 140;
			var abt_boxTop_scroll_width = abt_boxTop_width-abt_boxTop_logo_width-abt_boxTop_time_width-30;
			$("#boxTop_scroll").css("width",abt_boxTop_scroll_width+'px');
			

			var abt_wait_time = 20; 
			var boxTop_scroll = document.getElementById("boxTop_scroll"); 
			var boxTop_scroll_begin = document.getElementById("boxTop_scroll_begin"); 
			var boxTop_scroll_end = document.getElementById("boxTop_scroll_end"); 
			var boxTop_scroll_div = document.getElementById("boxTop_scroll_div"); 
			function Marquee(){ 
				// 字体缩小代码
				var boxTop_scroll_begin_fontsize = parseInt($(boxTop_scroll_begin).css("font-size"));
				if(boxTop_scroll_begin.offsetWidth > boxTop_scroll.offsetWidth){
					while(boxTop_scroll_begin.offsetWidth > boxTop_scroll.offsetWidth && boxTop_scroll_begin_fontsize>1){
						boxTop_scroll_begin_fontsize--;
						$("#boxTop_scroll_begin").css("font-size",boxTop_scroll_begin_fontsize+"px");
					}
				}else if(boxTop_scroll_begin.offsetWidth < boxTop_scroll.offsetWidth){
					while(boxTop_scroll_begin.offsetWidth > boxTop_scroll.offsetWidth && boxTop_scroll_begin_fontsize<80){
						boxTop_scroll_begin_fontsize--;
						$("#boxTop_scroll_begin").css("font-size",boxTop_scroll_begin_fontsize+"px");
					}
				}
			}
			Marquee();
		}
		
		$(document).ready(function(){
			$("#boxTop_scroll_div").removeClass("none");
		});
        </script>
    </div>
	
	<div id="boxQR_wx" class="boxQR" onClick="boxQR('wx')">
        <table border="0" cellspacing="0" cellpadding="0" align="center" width="100%" height="100%">
            <tr><td valign="middle" align="center"><img src="<?php echo ($info["qrcode"]); ?>"></td></tr>
        </table>
    </div>
	<div id="boxQR_wb" class="boxQR" onClick="boxQR('wb')">
        <table border="0" cellspacing="0" cellpadding="0" align="center" width="100%" height="100%">
            <tr><td valign="middle" align="center"><img src=""></td></tr>
        </table>
    </div>
    
	<div id="boxContent">
    <script src="/tpl/static/wall/style/js/json.js"></script>
                <!-- 开幕墙 -->
                <div id="kaimuqiang" class="boxitem">
                <div id="kmq"><?php if($info["startbackground"] != ''): ?><img src="<?php echo ($info["startbackground"]); ?>" /><?php endif; ?></div>
        <script language="javascript">
		/* 开幕墙 JS*/
		var KAIMUQIANG_SWITCH = 1;	// 开关
		var KAIMUQIANG_STATUS = 0;	// 状态，0表示停止，1表示正在运行
		
		function kaimuqiang(jsonStr){
			if(jsonStr.length>0 && jsonStr!=0){
				// 将JSON字符串转换为JSON对象
				var jsonObj = JSON.parse(jsonStr);
				var objUpdate = jsonObj.update;		// 更新数据
				var objType = jsonObj.type;		// 数据类型：empty空的，restart重载
				var objRemove = jsonObj.remove;		// 清除数据
				
				// 开始处理数据
				// 处理要更新的数据
				if(objUpdate!=''){
					$("#kmq").html(objUpdate);
					if(objType=='restart' && now_module_name=='kaimuqiang') boxConItem('kaimuqiang');
				}
				// 处理要删除的数据
				if(objRemove!=''){
				}
			}else if(jsonStr==0){
				kmq();
			}
		}
		
		function kmq(){
		}
		</script>        </div>
                <!-- end 开幕墙 -->
                
                
            	<!--大屏幕-->
                <div id="dapingmu" class="boxitem">
                
                
        <!--* 无右侧 START *-->
        <div id="dpm">
        	<div class="dpm_left">
                <ul id="dpm_list_stop" class="none">
                </ul>
                <ul class="dpm_list">
				<!--message start-->
				
                
					<!--message end-->
					</ul>
            </div>
        </div>
        <script>
		/* 大屏幕 JS*/
		var DAPINGMU_SWITCH = 1;	// 开关
		var DAPINGMU_STATUS = 0;	// 状态，0停止，1正在运行
		var DAPINGMU_CLICK = 1;		// 底部控制栏播放器状态，0停止，1运行
		
		var dpm_sn = 1;
		var dpm_run_time = 500;	// 运行时间
		var dpm_wait_time = 3000;	// 等待时间
		var dpm_up_px = 636;
		
		var dpm_show_time = 0;	// 内容前面是否显示时间
		
		$(document).ready(function(){
			setInterval("dpm();", dpm_wait_time); 
		});
				
		function dapingmu(jsonStr){
			if(jsonStr.length>0 && jsonStr!=0){
				// 将JSON字符串转换为JSON对象
				var jsonObj = JSON.parse(jsonStr);
				var objUpdate = jsonObj.update;		// 更新数据
				var objType = jsonObj.type;		// 数据类型：empty空的，restart重载
				var objRemove = jsonObj.remove;		// 清除数据
				// 开始处理数据
				$("#test2").text('dapingmu:'+jsonStr);
				$("#test_dapingmu").text('进入dapingmu()');
				// 处理要更新的数据
				if(objUpdate!=''){
					DAPINGMU_SWITCH = 0;
					$("#test5").text('遍历前'+new Date().getTime()+';');
					var qdq_update = 0;	// 
					$.each(objUpdate, function(k, v){
						$("#test_dapingmu").text('content='+v.content);
						var timestr = '';
						var timeFormat = '';
						if(dpm_show_time==1) timeFormat = 'hm'; else if(dpm_show_time==2) timeFormat = 'md'; else if(dpm_show_time==3) timeFormat = 'mdhm';
						if(dpm_show_time) timestr = '['+formatDateTime(v.caudit,timeFormat)+'] ';	// 判断是否需要显示时间
						var img = '';
						var liClass = '';
						var picStype = '';
						if(!v.content) picStype = ' style="max-height:606px;"';
						if(v.picture){ img = '<img src="'+v.picture+'" class="picture"'+picStype+' />'; liClass = ' class="img"'; }
						var msgtype = '';
						if(v.cmedia) msgtype = '<img src="/tpl/static/wall/style/images/msg_type_voice.png" /> ';
						if(v.content.indexOf('我在:')==0) msgtype = '<img src="/tpl/static/wall/style/images/msg_type_location.png" /> ';
						var info = '<li'+liClass+' id="cid'+v.cid+'"><div class="fl"><dl><dt><img src="'+v.avatar+'" title="'+v.nickname+'" />'+v.from_mark+'</dt><dd class="font30">'+v.nickname+'</dd></dl></div><div class="fr"><dl><dd>'+img+timestr+msgtype+v.content+'</dd></dl></div></li>';
						//$(info).prependTo(".dpm_list").hide().slideDown('slow');
						if(DAPINGMU_CLICK){
							$(".dpm_list").prepend(info);
						}else{
							$("#dpm_list_stop").prepend(info);
						}
						$("#test5").text($("#test5").text()+'遍历中'+new Date().getTime());
						
						// 更新签到墙部分
						var qdq_uid = $("#qdq_list #uid"+v.uid+" dt").text();
						var avatar = '';
						if(qdq_uid=='none'){
							avatar = v.avatar;
							if(avatar.indexOf("avatar.gif")>0) avatar = 'none';
							//alert('大屏幕 更新'+v.uid+' 的头像'+avatar+',呢称'+v.nickname)
							$("#qdq_list #uid"+v.uid+" dt").text(avatar);
							$("#qdq_list #uid"+v.uid+" dd").text(v.nickname);
							qdq_update = 1;
						}
						
					});
					
					if(now_module_name=='qiandaoqiang' && qdq_update) qdq_player(1);
					
					$("#test5").text($("#test5").text()+';遍历后'+new Date().getTime());
					if(DAPINGMU_CLICK){
						dpm_reorder();
						dpm_del_dpm_list();
					}
				}
				// 处理要删除的数据
				if(objRemove!=''){
					$("#test_dapingmu").text('objRemove存在 objRemove='+objRemove);
					
					DAPINGMU_SWITCH = 0;
					$.each(objRemove, function(k, v){
						$(".dpm_list #cid"+v.cid).remove();
					});
					dpm_reorder();
					DAPINGMU_SWITCH = 1;
				}
				
			}else if(jsonStr==0){
				DAPINGMU_STATUS = 1;
			}
		}
		
		// 对所有dpm_list中的li重新计算
		function dpm_reorder(){
			// 删除占位LI
			$(".dpm_list li.block").remove();
			// 删除隐藏LI
			$(".dpm_list li.none").remove();
			var dpm_list = $(".dpm_list li");
			// 清空dpm_list
			// 重新设置占位与隐藏LI
			var dpm_list_html = '';
			var dpm_list_i = 1;
			for(var i=0; i<dpm_list.size(); i++){
				var html = '';
				var li = $(dpm_list.get(i)).html();
				var liclass = $(dpm_list.get(i)).attr('class');
				var cls = '';
				var liid = $(dpm_list.get(i)).attr('id');
				var id = ' id="'+liid+'"';
				if(liclass=='img'){
					if(dpm_list_i%3==1){
						html = '';
					}else if(dpm_list_i%3==2){
						html = '<li class="block">&nbsp;</li><li class="block">&nbsp;</li>';
						dpm_list_i++; dpm_list_i++;
					}else{
						html = '<li class="block">&nbsp;</li>';
						dpm_list_i++;
					}
					cls = ' class="img"';
					
				}
				html = html + '<li'+cls+id+'>'+li+'</li>';
				if(liclass=='img'){
					html = html+'<li class="none">&nbsp;</li><li class="none">&nbsp;</li>';
					dpm_list_i++; dpm_list_i++;
				}
				dpm_list_html = dpm_list_html+html;
				dpm_list_i++;
			}
			$(".dpm_list").html(dpm_list_html);
			
		}
		
		// 删除多余的内容，随着上墙内容的动态更新，越来越多的内容导致滚动次数过多，因此在这里只保留20个内容
		var retain_page = 10;
		retain_page = retain_page * 3;
		function dpm_del_dpm_list(){
			for( ; $(".dpm_list li").size()>retain_page ; ){
				$("#test4").text($(".dpm_list li").size());
				$(".dpm_list li:last").remove();
			}
			
			var dpm_list = $(".dpm_list");
			dpm_list.animate({'margin-top':'0px'},dpm_run_time);
		}
		
		var dpm_bug_px = 15;
		//if(!-[1,]) dpm_bug_px = 30;
		//alert(dpm_bug_px);
		
		function dpm(){
			if(!DAPINGMU_CLICK) return false;
			if(DAPINGMU_SWITCH && DAPINGMU_STATUS){
				var dpm_list = $(".dpm_list");
				var dpm_list_size = $(".dpm_list li").size();	// 调查项目数
				var dpm_screen = Math.ceil(dpm_list_size / 3);
				$("#test2").text("dpm_list_size="+dpm_list_size+",dpm_screen="+dpm_screen+",dpm_sn="+dpm_sn+",height="+$(".dpm_list").css("height"));
				/* 方式一 *
				if(dpm_sn >= dpm_screen){
					dpm_list.animate({'margin-top':'0px'},dpm_run_time);
					dpm_sn=1;
				}else{
					var px = dpm_sn*dpm_up_px+dpm_sn*13;
					dpm_list.animate({'margin-top':'-'+px+'px'},dpm_run_time);
					dpm_sn++;
				}
				/* 方式二 */
				var dpmHeight = parseInt($(".dpm_list").css("height"))-dpm_sn*dpm_bug_px;
				var dpmRemain = dpmHeight-dpm_sn*dpm_up_px;
				if(dpmRemain > 0){
					//var px = dpm_sn*dpm_up_px+13;
					var px = dpm_sn*dpm_up_px+dpm_sn*dpm_bug_px;
					dpm_list.animate({'margin-top':'-'+px+'px'},dpm_run_time);
					dpm_sn++;
					$("#test1").text('dpmHeight='+dpmHeight+',dpm_sn='+dpm_sn+',px='+px+', dpmRemain='+dpmRemain);
				}else{
					dpm_list.animate({'margin-top':'0px'},dpm_run_time);
					dpm_sn=1;
					$("#test1").text('dpmHeight='+dpmHeight+',dpm_sn='+dpm_sn+',dpmRemain='+dpmRemain);
				}
				//window.setTimeout(dpm, dpm_wait_time);
			}else{
				dpm_sn = 1;
				DAPINGMU_SWITCH = 1;
			}
		}
		
		// 响应底部播放栏
		function dapingmu_click(button){
			//alert(button)
			
			if(button=='change'){
				if(DAPINGMU_CLICK){
					DAPINGMU_CLICK = 0;
				}else{
					$(".dpm_list").prepend( $("#dpm_list_stop").html() );
					$("#dpm_list_stop").html('');
					dpm_reorder();
					dpm_del_dpm_list();
					DAPINGMU_CLICK = 1;
				}
				return true;
			}
			
			if(button=='top' && dpm_sn>1){ dpm_sn--;dpm_sn--;}
			
			var dpm_list = $(".dpm_list");
			var dpm_list_size = $(".dpm_list li").size();	// 调查项目数
			var dpm_screen = Math.ceil(dpm_list_size / 3);
			
			var dpmHeight = parseInt($(".dpm_list").css("height"))-dpm_sn*dpm_bug_px;
			var dpmRemain = dpmHeight-dpm_sn*dpm_up_px;
			if(dpmRemain > 0){
				//alert(dpm_sn)
				//alert(dpm_sn)
				var px = dpm_sn*dpm_up_px+dpm_sn*dpm_bug_px;
				dpm_list.animate({'margin-top':'-'+px+'px'},dpm_run_time);
				dpm_sn++;
			}else{
				dpm_list.animate({'margin-top':'0px'},dpm_run_time);
				dpm_sn = 1;
			}
		}
		</script>
        <!--* 无右侧 END *-->
        
                        </div>
                
                <!-- 抽奖 -->
                <div id="choujiang" class="boxitem">
        		<div id="cj_scroll" class="choujiang_2">
        	<div id="cj_show">
                <!--奖项及抽奖-->
                <div id="cj_lottery_box">
                    <ul id="cj_lottery_list">
                                                                <li>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr><th colspan="3">三等奖 <b><?php echo ($info["thirdprizecount"]); ?></b>名</th></tr>
                            <tr>
                            	<td class="img" valign="middle"><img src="<?php echo ($info["thirdprizepic"]); ?>" /><p class="font40"><?php echo ($info["thirdprizename"]); ?></p></td>
                                <td width="10">&nbsp;</td>
                                <td class="list" align="center" valign="middle" id="cj_lottery_list_0">
                                    <table border="0" cellspacing="0" cellpadding="0" align="center" class="imgbox"><tr><td>
                                                                                                            </td></tr></table>
                                </td>
                            </tr>
                        </table>
                        </li>
                                                                <li>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr><th colspan="3">二等奖 <b><?php echo ($info["secondprizecount"]); ?></b>名</th></tr>
                            <tr>
                            	<td class="img" valign="middle"><img src="<?php echo ($info["secondprizepic"]); ?>" /><p class="font40"><?php echo ($info["secondprizename"]); ?></p></td>
                                <td width="10">&nbsp;</td>
                                <td class="list" align="center" valign="middle" id="cj_lottery_list_1">
                                    <table border="0" cellspacing="0" cellpadding="0" align="center" class="imgbox"><tr><td>
                                                                                                            </td></tr></table>
                                </td>
                            </tr>
                        </table>
                        </li>
                                                                <li>
                         <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr><th colspan="3">一等奖 <b><?php echo ($info["firstprizecount"]); ?></b>名</th></tr>
                            <tr>
                            	<td class="img" valign="middle"><img src="<?php echo ($info["firstprizepic"]); ?>" /><p class="font40"><?php echo ($info["firstprizename"]); ?></p></td>
                                <td width="10">&nbsp;</td>
                                <td class="list" align="center" valign="middle" id="cj_lottery_list_2">
                                    <table border="0" cellspacing="0" cellpadding="0" align="center" class="imgbox"><tr><td>
                                                                                                            </td></tr></table>
                                </td>
                            </tr>
                        </table>
                        </li>
                                                                <li style="display:none">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr><th colspan="3">最高支持奖 <b></b>名</th></tr>
                            <tr>
                            	<td class="img" valign="middle"><img src="" /><p class="font40"></p></td>
                                <td width="10">&nbsp;</td>
                                <td class="list" align="center" valign="middle" id="cj_lottery_list_3">
                                    <table border="0" cellspacing="0" cellpadding="0" align="center" class="imgbox"><tr><td>
                                                                                                            </td></tr></table>
                                </td>
                            </tr>
                        </table>
                        </li>
                                                            </ul>
                    
                    <div id="cj_weipingfen_none" class="none">
  
                    </div>
                    
                    <div id="cj_lottery_scroll_none" class="none">
                    
                    <?php if(is_array($members)): $i = 0; $__LIST__ = $members;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$m): $mod = ($i % 2 );++$i;?><li id="uid<?php echo ($m["id"]); ?>" class="awards_0"><em class="none">0</em><p class="none"><?php echo ($m["id"]); ?></p><dl><dt><img src="<?php echo ($m["portrait"]); ?>" title="<?php echo ($m["nickname"]); ?>" /><i></i></dt><dd><?php echo ($m["nickname"]); ?></dd></dl></li><?php endforeach; endif; else: echo "" ;endif; ?>
                                                            	
                                        </div>
                    
                    <div id="cj_lottery_scroll">
                    	<div id="cj_lottery_count">奖池人数<br /><b>119</b></div>
                    	<ul>
                        	<li><dl><dt><img src="/tpl/static/wall/style/images/cj_def.gif" /></dt><dd>&nbsp;</dd></dl></li>
                        </ul>
                        <div id="cj_lottery_button" onClick="cj_scroll_set()">滚动</div>
                        <div class="cj_remove" style="display:none"><input type="button" value="清除中奖者" onclick="cj_remove()" /></div>
                    </div>
                </div>
            </div>
            <!--控制部分-->
        	<div id="cj_control_box">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="right">
                    	                                                	                            <label><input autocomplete="off" type="radio" name="cj_awards" onClick="cj_awards_box(0,3,2,1)" checked value="0" />三等奖：<?php echo ($info["thirdprizecount"]); ?>名</label>
                                                                        	                            <label><input autocomplete="off" type="radio" name="cj_awards" onClick="cj_awards_box(1,2,1,1)" value="1" />二等奖：<?php echo ($info["secondprizecount"]); ?>名</label>
                                                                        	                            <label><input autocomplete="off" type="radio" name="cj_awards" onClick="cj_awards_box(2,1,1,1)" value="2" />一等奖：<?php echo ($info["firstprizecount"]); ?>名</label>
                                                                        	                            <label style="display:none"><input autocomplete="off" type="radio" name="cj_awards" onClick="cj_awards_box(3,23,1,2)" value="3" />最高支持奖：5名</label>
                                                                    </td>
                  </tr>
                </table>
            </div>
        </div>
        
        <script>
		/* 抽奖 JS*/
		var CHOUJIANG_SWITCH = 1;	// 开关
		var CHOUJIANG_STATUS = 0;	// 状态，0表示停止，1表示正在运行
		
		var cj_awards_i = 0;	// 当前奖项
		var cj_awards_id = 3;	// 当前奖项ID
		var cj_awards_set = new Array();	// 当前奖项是否有定
				cj_awards_set[3] = 0;
				cj_awards_set[2] = 0;
				cj_awards_set[1] = 0;
				cj_awards_set[23] = 0;
				var cj_awards_oncenum = 1;	// 当前奖项每轮抽取数量
		var cj_awards_pond = 1;	// 当前奖池
		var cj_awards_pond_id = 'cj_lottery_scroll_none';
		var cj_awards_item = '';	// 当中奖源是从得分最高节目中抽取时，此值保存得分最高节目的ID，多个用逗号分隔
		
		var cj_lottery_sn = 0;
		var cj_scroll_time = 50;	// 滚动间隔
		var cj_scroll_status = 0;	// 名单滚动状态 0停止，1滚动，2等待
		
		function choujiang(jsonStr){
			if(jsonStr.length>0 && jsonStr!=0){
				// 将JSON字符串转换为JSON对象
				var jsonObj = JSON.parse(jsonStr);
				var objUpdate = jsonObj.update;		// 更新数据
				var objType = jsonObj.type;		// 数据类型：empty空的，restart重载
				var objRemove = jsonObj.remove;		// 清除数据
				$("#test4").text('choujiang:'+jsonStr);
				// 开始处理数据
				// 处理要更新的数据
				if(objUpdate!=''){
					$.each(objUpdate, function(k, v){
						var html = '<li id="uid'+v.uid+'" class="awards_'+v.awards+'"><em class="none">'+v.awards+'</em><p class="none">'+v.uid+'</p><dl><dt><img src="'+v.avatar+'" title="'+v.nickname+'" />'+v.from_mark+'</dt><dd>'+v.nickname+'</dd></dl></li>';
						// 在写入名单前先检查UID是否重复，以防止出现中奖重复的现象
						var nonesize = $("#cj_lottery_scroll_none #uid"+v.uid).size();
					
						if(nonesize==0){
							$("#cj_lottery_scroll_none").prepend(html);
							//var cls_size = $("#cj_lottery_scroll ul li").size();
							//if(cj_scroll_status==0) $("#cj_lottery_scroll ul").prepend(html);
						}
					});
					$("#cj_lottery_count").html( '奖池人数<br /><b>'+$("#cj_lottery_scroll_none li").size()+'</b>' );
				}
				// 处理要删除的数据
				if(objRemove!=''){
					$.each(objRemove, function(k, v){
						$("#cj_lottery_scroll_none #uid"+v.uid).remove();
					});
				}
			}else if(jsonStr==0){
				cj();
			}else{
			}
		}
		
		function cj(){
			cj_awards_pond_clear();
		}
		
		// 奖池清理
		function cj_awards_pond_clear(){
			var cj_item_html = '';
			if(cj_awards_pond==2 && cj_awards_item){
				// 先清理奖池，只保留投过最高得分节目的用户
				//alert('最高得票节目ID：'+cj_awards_item);
				//alert('cj_awards_item='+cj_awards_item+',cj_awards_pond_id='+cj_awards_pond_id+$("#"+cj_awards_pond_id+" li").size());
				var cj_item_ids = new Array();
				cj_item_ids = cj_awards_item.split(",");
				var cj_item_html = '';
				$.each(cj_item_ids, function(k, v){
					var cj_item = $("#"+cj_awards_pond_id+" .item"+v);
					for (var i = 0; i < cj_item.size(); i++) {
						var cj_uid = $("#"+cj_awards_pond_id+" .item"+v+":eq("+i+") p").text();
						cj_item_html = cj_item_html+'<li id="uid'+cj_uid+'">'+$(cj_item.get(i)).html()+'</li>';
					}
				});
				$("#"+cj_awards_pond_id).html(cj_item_html);
				//alert('cj_awards_item='+cj_awards_item+',cj_awards_pond_id='+cj_awards_pond_id+$("#"+cj_awards_pond_id+" li").size());
				// 再清理重复用户
				var cj_item = $("#"+cj_awards_pond_id+" li");
				for (var i = 0; i < cj_item.size(); i++) {
					var cj_uid = $("#"+cj_awards_pond_id+" li:eq("+i+") p").text();
					var cj_item_class = $("#"+cj_awards_pond_id+" li:eq("+i+") b").text();
					var cj_uid_size = $("#"+cj_awards_pond_id+" #uid"+cj_uid).size();
					//alert('cj_item_class='+cj_item_class);
					if(cj_item_html.indexOf('"uid'+cj_uid+'"')==-1) cj_item_html = cj_item_html+'<li id="uid'+cj_uid+'" class="'+cj_item_class+'">'+$(cj_item.get(i)).html()+'</li>';
				}
				$("#"+cj_awards_pond_id).html(cj_item_html);
				//alert('cj_item_html='+cj_item_html);
			}
			
			var cj_awards_pond_num = $("#"+cj_awards_pond_id+" li").size();
			$("#cj_lottery_count").html( '奖池人数<br /><b>'+cj_awards_pond_num+'</b>' );
			if(cj_item_html) $("#cj_lottery_scroll ul").html('<li>'+$("#"+cj_awards_pond_id+" li:last").html()+'</li>');
		}
		
		// 奖项切换
		function cj_awards_box(ii,id,oncenum,pond){
			cj_awards_i = ii;
			cj_awards_id = id;
			cj_awards_oncenum = oncenum;
			cj_awards_pond = pond;
			if(pond==1) cj_awards_pond_id = 'cj_lottery_scroll_none'; else if(pond==2) cj_awards_pond_id = 'cj_weipingfen_none';
			// 切换奖项
			var cj_awards_box = $("#cj_awards_box ul li");
			for (var i = 0; i < cj_awards_box.size(); i++) {
				$(cj_awards_box.get(i)).slideUp("slow");
			}
			$(cj_awards_box.get(ii)).slideDown("slow");
			// 切换抽奖
			var cj_lottery_list = $("#cj_lottery_list li");
			for (var i = 0; i < cj_lottery_list.size(); i++) {
				$(cj_lottery_list.get(i)).slideUp("slow");
			}
			$(cj_lottery_list.get(ii)).slideDown("slow");
			
			cj_awards_pond_clear();
		}
		
		// 奖项滚动设置
		function cj_scroll_set(){

			if(!cj_awards_id){
				alert('当前活动未添加任何奖项，请先在会员中心为此活动添加奖项后再进行抽奖！');
				return false;
			}

			if(cj_scroll_status==0){	// 当前停止
				if(cj_awards_pond==2 && cj_awards_item==''){
					alert("此项抽奖需要等待微评分结束后抽取！");
					return false;
				}
				
				// 判断抽奖人数是否已满
				var awards = $("#cj_lottery_list li:eq("+cj_awards_i+") th").text();	// 奖项
				var allNum = $("#cj_lottery_list li:eq("+cj_awards_i+") th b").text();	// 需抽人数
				var numed = $("#cj_lottery_list_"+cj_awards_i+" td dl").size();	// 已抽人数
				/*if(numed>=allNum){
					if(confirm(awards+" 已抽："+numed+"名，是否继续抽取1名？")){
						// 继续向下运行
					}else{
						return false;
					}
				}*/
				
				if($("#"+cj_awards_pond_id+" li").size()){	// 奖池中有人
					cj_scroll_status = 1;
					// 设置文字
					$("#cj_lottery_button").text("停");
					// 写入名单
					$("#cj_lottery_scroll ul").html($("#"+cj_awards_pond_id).html());
					cj_scroll();
				}else{	// 奖池为空
					alert("奖池为空！");
				}
			}else if(cj_scroll_status==1){	//正在滚动
				
				cj_scroll_status = 2;
				
				var allNum = $("#cj_lottery_list li:eq("+cj_awards_i+") th b").text();	// 需抽人数
				var numed = $("#cj_lottery_list_"+cj_awards_i+" td dl").size();	// 已抽人数
				var num = 0;
				// 计算一次抽取人数
				if(numed>=allNum)
					num = 1;
				else{
					if(cj_awards_oncenum > allNum-numed) num = allNum-numed; else num = cj_awards_oncenum;
				}
				
				// 判断是否有定
				var scroll_awards_size = $("#"+cj_awards_pond_id+" li.awards_"+cj_awards_id).size();
				var draw_awards = 0;
				if(scroll_awards_size){
					cj_awards_set[cj_awards_id] = 1;
					if(allNum-numed<=scroll_awards_size){
						draw_awards = cj_awards_id;
					}else if(allNum-numed>0 && !allNum-numed%2){
						draw_awards = cj_awards_id;
					}
				}
				//if(scroll_awards_size && allNum-numed<=scroll_awards_size) draw_awards = cj_awards_id;
				if(cj_awards_set[cj_awards_id]) num = 1;
				var scroll_none_size = $("#"+cj_awards_pond_id+" li.awards_"+draw_awards).size();	// 奖池人数
				if(num>scroll_none_size) num = scroll_none_size;	// 再次计算一次抽取人数
				
				var items = getNotRepeatArray(scroll_none_size, num);
				var randNumArr = new Array();
				var randUidArr = new Array();
				var randDtArr = new Array();
				var randDdArr = new Array();
				var uids = '';
				for (var key in items) {
					var tmpKey = items[key]-1;
					randNumArr[key] = tmpKey;
					randUidArr[key] = $("#cj_lottery_scroll ul li.awards_"+draw_awards+":eq("+tmpKey+") p").text();
					randDtArr[key] = $("#cj_lottery_scroll ul li.awards_"+draw_awards+":eq("+tmpKey+") dl dt").html();
					randDdArr[key] = $("#cj_lottery_scroll ul li.awards_"+draw_awards+":eq("+tmpKey+") dl dd").text();
					//if(draw_awards) alert(draw_awards+','+tmpKey+','+randDdArr[key]);
					uids = uids + "," + randUidArr[key];
				}
				
		
				for (var key in randNumArr) {
					//alert('key='+key+',randNum='+randNumArr[key]);
					// 删除用户
					$("#"+cj_awards_pond_id+" #uid"+randUidArr[key]).remove();
					// 写滚动中奖者
					var scroll_html = '<li><dl><dt>'+randDtArr[key]+'</dt><dd>'+randDdArr[key]+'</dd></dl></li>';
					$("#cj_lottery_scroll ul").html('<li><dl><dt><img src="/tpl/static/wall/style/images/cj_def.gif" /></dt><dd>&nbsp;</dd></dl></li>');
					// 写入中奖者
					var namelist = $("#cj_lottery_list_"+cj_awards_i+" td").html();
					var lottery_list = $("#cj_lottery_list_"+cj_awards_i+" dl");
					var size = lottery_list.size()+1;
					var lottery_html = '<dl><p class="none">'+randUidArr[key]+'</p><dt>'+randDtArr[key]+'</dt><dd>'+size+'.'+randDdArr[key]+'</dd></dl>'+namelist;
					$("#cj_lottery_list_"+cj_awards_i+" td").html(lottery_html);
					
					var cj_lc = parseInt($("#cj_lottery_count b").text())-1;
					$("#cj_lottery_count").html( '奖池人数<br /><b>'+cj_lc+'</b>' );
					
					$("#test2").text(lottery_html);
				}
					
				// 初始化
				$("#cj_lottery_button").text("滚动");
				cj_scroll_status = 0;
				cj_lottery_sn = 0;
				
				
				// AJAX请求数据，写入完成返回1，删除用户写中奖者；错误返回-1，提示异常；2表示中奖者重复
				$.get('/index.php?g=User&m=Wall&a=insertPrizeRecord&token=<?php echo ($token); ?>&id=<?php echo ($info["id"]); ?>',{ uids:uids, prize:cj_awards_id}, function(data){

					/*
					$("#test2").text('scroll_none_size='+scroll_none_size+',randNum='+randNum+',catid='+101+',id='+1+',uid='+randUid+',awid='+cj_awards_id);
					alert('data='+data);
					
					if(data.indexOf('|')>0 || (catid==101 && id==1 && data==1)) {
					}else if(data=='0'){
						alert("中奖者为空！");
					}else if(data=='-1'){
						alert("请勿非法操作！");
					}else if(data=='-2'){
						alert("信息不存在或审核中！");
					}else{
						alert("网络异常，请重试！");
					}*/
					
				});
			}else{	// 等待
				// 暂时不执行操作
			}
		}
		// 奖项滚动
		function cj_scroll(){
			if(cj_scroll_status){
				var cj_lottery_scroll = $("#cj_lottery_scroll ul li");
				$(cj_lottery_scroll.get(cj_lottery_sn)).slideUp(cj_scroll_time);
				$("#cj_lottery_scroll ul").append('<li>'+$(cj_lottery_scroll.get(cj_lottery_sn)).html()+'</li>');
				cj_lottery_sn++;
				//$("#test2").text(cj_lottery_sn);
				window.setTimeout(cj_scroll, cj_scroll_time);
			}
		}
		// 清除中奖者
		function cj_remove(){
			//alert(cj_awards_i);
			$("#cj_lottery_list_"+cj_awards_i+" td").html("");
		}
		// 控制部分
		function cj_control_box(id){
			if(id=='cj_awards_box'){
				$("#cj_lottery_box").slideDown("slow");
				$("#cj_awards_box").slideUp("slow");
			}else{
				$("#cj_awards_box").slideDown("slow");
				$("#cj_lottery_box").slideUp("slow");
			}
		}
		</script>        </div>
                
                <!-- 对对碰 -->
                <div id="duiduipeng" class="boxitem">
                <div id="ddp">
        	<div id="ddp_list">
            <ul class="ddp_list">
                                        <p class="cl"></p>
            </ul>
            </div>
            <div id="ddp_all_user" class="none">
                        </div>
            <div id="ddp_kind" class="none">
            	<div id="ddp_kind_man">
                                                	                	<dl id="uid7553"><p class="none">7553</p><dt><img src="/tpl/static/wall/style/images/2484887281.jpg" title="何超" /><pre></pre></dt><dd>何超</dd></dl>
                                	                	
                                </div>
            	<div id="ddp_kind_ms">

                                	                	<dl id="uid3"><p class="none">3</p><dt><img src="/tpl/static/wall/style/images/2477685120.jpg" title="飞羽" /><bdo></bdo></dt><dd>飞羽</dd></dl>
                                </div>
            </div>
            <div class="ddp_kind_show">
            	<div class="ddp_kind_man">
                	<dl><dt><img src="/tpl/static/wall/style/images/cj_def.gif" /><pre></pre></dt><dd>&nbsp;</dd></dl>
                </div>
                <div id="ddp_kind_button" onClick="ddp_scroll_set()">碰</div>
            	<div class="ddp_kind_ms">
                	<dl><dt><img src="/tpl/static/wall/style/images/cj_def.gif" /><bdo></bdo></dt><dd>&nbsp;</dd></dl>
                </div>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ddp_count">
                  <tr>
                    <th width="50%" class="ddp_count_left">左池：90 人</th>
                    <td align="center" style=" padding:0 25px;"><input type="button" class="ddp_count_button" onClick="ddp_insert_remove();" value="下一轮" /></td>
                    <td width="50%" class="ddp_count_right">右池：27 人</td>
                  </tr>
                </table>
            </div>
        </div>
        <script>
		/* 对对碰 JS*/
		var DUIDUIPENG_SWITCH = 1;	// 开关
		var DUIDUIPENG_STATUS = 0;	// 状态，0表示停止，1表示正在运行
		
		var ddp_kind_oncenum = 1;	// 每次碰取数量
		
		var ddp_kind_sn = 0;
		var ddp_scroll_time = 50;	// 滚动间隔
		var ddp_scroll_status = 0;	// 名单滚动状态 0停止，1滚动，2等待
		
		function duiduipeng(jsonStr){
			$("#test_duiduipeng").text(jsonStr);
			if(jsonStr.length>0 && jsonStr!=0){
				// 将JSON字符串转换为JSON对象
				var jsonObj = JSON.parse(jsonStr);
				var objUpdate = jsonObj.update;		// 更新数据
				var objType = jsonObj.type;		// 数据类型：empty空的，restart重载
				var objRemove = jsonObj.remove;		// 清除数据
				$("#test_duiduipeng").text('duiduipeng:'+jsonStr);
				// 开始处理数据
				// 处理要更新的数据-男士
				if(objUpdate.man){
					$.each(objUpdate.man, function(k, v){
						var html = '<dl id="'+v.uid+'"><p class="none">'+v.uid+'</p><dt><img src="'+v.avatar+'" title="'+v.nickname+'" /><pre></pre></dt><dd>'+v.nickname+'</dd></dl>';
						// 在写入名单前先检查UID是否重复，以防止出现重复碰的现象
						var nonesize = $("#ddp_all_user #uid"+v.uid).size();
						if(!nonesize){
							$("#ddp_all_user").prepend(html);
							$("#ddp_kind #ddp_kind_man").prepend(html);
							//var cls_size = $("#.ddp_kind_show .ddp_kind_man dl").size();
							//if(!ddp_scroll_status) $(".ddp_kind_show .ddp_kind_man").prepend(html);
						}else{
							//alert('man '+v.uid+' 存在');
						}
					});
					var man_num = $("#ddp_kind #ddp_kind_man dl").size();
					$(".ddp_count_left").text( '左池：'+man_num+' 人' );
					$("#test_duiduipeng").text($("#test_duiduipeng").text()+','+objUpdate.man.toString());
					//$("#cj_lottery_count").html( '奖池人数<br />'+$("#cj_lottery_scroll_none li").size() );
				}
				// 处理要更新的数据-女士
				if(objUpdate.ms){
					$.each(objUpdate.ms, function(k, v){
						var html = '<dl id="'+v.uid+'"><p class="none">'+v.uid+'</p><dt><img src="'+v.avatar+'" title="'+v.nickname+'" /><bdo></bdo></dt><dd>'+v.nickname+'</dd></dl>';
						// 在写入名单前先检查UID是否重复，以防止出现重复碰的现象
						var nonesize = $("#ddp_all_user #uid"+v.uid).size();
						if(!nonesize){
							$("#ddp_all_user").prepend(html);
							$("#ddp_kind #ddp_kind_ms").prepend(html);
							//var cls_size = $("#.ddp_kind_show .ddp_kind_ms dl").size();
							//if(!ddp_scroll_status) $(".ddp_kind_show .ddp_kind_ms").prepend(html);
						}else{
							//alert('ms '+v.uid+' 存在');
						}
					});
					var ms_num = $("#ddp_kind #ddp_kind_ms dl").size();
					$(".ddp_count_right").text( '右池：'+ms_num+' 人' );
					$("#test_duiduipeng").text($("#test_duiduipeng").text()+','+objUpdate.ms.toString());
					//$("#cj_lottery_count").html( '奖池人数<br />'+$("#cj_lottery_scroll_none li").size() );
				}
				// 处理要删除的数据
				if(objRemove!=''){
				}
			}else if(jsonStr==0){
				ddp();
			}
		}
		
		function ddp(){
		}
		
		var man_uids = '';	// 随机取到的男士uid合集
		var ms_uids = '';	// 随机取到的女士uid合集
		
		// 对对碰滚动设置
		function ddp_scroll_set(){
			
			if(!ddp_count_button_status) return false;
			
			if(ddp_scroll_status==0){	// 当前停止
				// 判断对对碰人数是否已满
				var allNum = 12;	// 需碰对数
				var numed = $(".ddp_list li").size();	// 已碰对数
				/*if(numed>=allNum){
					if(confirm('对对碰 共碰 '+allNum+'对，目前已碰 '+numed+'对，是继续碰出 1对 参与者？')){
						// 继续向下运行
					}else{
						return false;
					}
				}*/
				
				if($("#ddp_kind #ddp_kind_man dl").size() && $("#ddp_kind #ddp_kind_ms dl").size()){	// 奖池中有人
					ddp_scroll_status = 1;
					// 设置文字
					$("#ddp_kind_button").text("停");
					// 写入名单
					$(".ddp_kind_show .ddp_kind_man").html($("#ddp_kind #ddp_kind_man").html());
					$(".ddp_kind_show .ddp_kind_ms").html($("#ddp_kind #ddp_kind_ms").html());
					ddp_scroll();
				}else{	// 奖池为空
					alert("对对碰池为空！");
				}
			}else if(ddp_scroll_status==1){	//正在滚动
				
				ddp_scroll_status = 2;
				
				var allNum = 12;	// 需碰对数
				var numed = $(".ddp_list li").size();	// 已碰对数
				var num = 0;
				// 计算一次抽取人数
				if(numed >= allNum)
					num = 1;
				else{
					if(ddp_kind_oncenum > allNum-numed) num = allNum-numed; else num = ddp_kind_oncenum;
				}
				
				var scroll_man_size = $("#ddp_kind #ddp_kind_man dl").size();	// 奖池男士
				var scroll_ms_size = $("#ddp_kind #ddp_kind_ms dl").size();	// 奖池女士
				
				if(num>scroll_man_size && num>scroll_ms_size){
					if(scroll_man_size>scroll_ms_size) num = scroll_ms_size; else num = scroll_man_size;	// 再次计算一次碰取对数
				}
				
				// 随机取男士
				var man_items = getNotRepeatArray(scroll_man_size, num);
				var man_randNumArr = new Array();
				var man_randUidArr = new Array();
				var man_randDtArr = new Array();
				var man_randDdArr = new Array();
				man_uids = '';
				for (var key in man_items) {
					man_randNumArr[key] = man_items[key];
					man_randUidArr[key] = $(".ddp_kind_show .ddp_kind_man dl:eq("+man_items[key]+") p").text();
					man_randDtArr[key] = $(".ddp_kind_show .ddp_kind_man dl:eq("+man_items[key]+") dt").html();
					man_randDdArr[key] = $(".ddp_kind_show .ddp_kind_man dl:eq("+man_items[key]+") dd").html();
					man_uids = man_uids + "," + man_randUidArr[key];
				}
				// 随机取女士
				var ms_items = getNotRepeatArray(scroll_ms_size, num);
				var ms_randNumArr = new Array();
				var ms_randUidArr = new Array();
				var ms_randDtArr = new Array();
				var ms_randDdArr = new Array();
				ms_uids = '';
				for (var key in ms_items) {
					ms_randNumArr[key] = ms_items[key];
					ms_randUidArr[key] = $(".ddp_kind_show .ddp_kind_ms dl:eq("+ms_items[key]+") p").text();
					ms_randDtArr[key] = $(".ddp_kind_show .ddp_kind_ms dl:eq("+ms_items[key]+") dt").html();
					ms_randDdArr[key] = $(".ddp_kind_show .ddp_kind_ms dl:eq("+ms_items[key]+") dd").html();
					ms_uids = ms_uids + "," + ms_randUidArr[key];
				}
				
				for (var key in man_randNumArr) {
					//alert('key='+key+',randNum='+randNumArr[key]);
					// 从碰池删除用户
					$("#ddp_kind #ddp_kind_man #uid"+man_randUidArr[key]).remove();
					$("#ddp_kind #ddp_kind_ms #uid"+ms_randUidArr[key]).remove();
					// 写滚动区域碰对成功者
					//var man_html = '<dl><dt>'+man_randDtArr[key]+'</dt><dd>'+man_randDdArr[key]+'</dd></dl>';
					var man_html = '<dl><dt><img src="/tpl/static/wall/style/images/cj_def.gif" /><pre></pre></dt><dd>&nbsp;</dd></dl>';
					$(".ddp_kind_show .ddp_kind_man").html(man_html);
					//var ms_html = '<dl><dt>'+ms_randDtArr[key]+'</dt><dd>'+ms_randDdArr[key]+'</dd></dl>';
					var ms_html = '<dl><dt><img src="/tpl/static/wall/style/images/cj_def.gif" /><bdo></bdo></dt><dd>&nbsp;</dd></dl>';
					$(".ddp_kind_show .ddp_kind_ms").html(ms_html);
					// 写入碰对者
					var size = $(".ddp_list li").size()+1;	// 查已碰对成功数量
					var licls = '';
					//if(size>0 && size%3==0) licls = ' class="ml19"'; else licls = '';
					var list_html = '<li'+licls+'><dl><dt>'+man_randDtArr[key]+'</dt><dd class="font30">'+man_randDdArr[key]+'</dd></dl><div id="num">'+size+'</div><dl><dt>'+ms_randDtArr[key]+'</dt><dd class="font30">'+ms_randDdArr[key]+'</dd></dl></li>';
					$(".ddp_list").prepend(list_html);
				}
				
				var man_num = $("#ddp_kind #ddp_kind_man dl").size();
				$(".ddp_count_left").text( '左池：'+man_num+' 人' );
				var ms_num = $("#ddp_kind #ddp_kind_ms dl").size();
				$(".ddp_count_right").text( '右池：'+ms_num+' 人' );
				
				// 初始化
				$("#ddp_kind_button").text("碰");
				ddp_scroll_status = 0;
				ddp_kind_sn = 0;
				
				//alert('需碰'+allNum+',已碰'+numed+',一次碰'+ddp_kind_oncenum+',实际一次碰'+num+',男士碰池有'+scroll_man_size+',女士碰池有'+scroll_ms_size+"\r\n 男士信息：man_items="+man_items.toString()+',man_uids='+man_uids+',man_randUidArr='+man_randUidArr.toString()+"\r\n 女士信息：ms_items="+ms_items.toString()+',ms_uids='+ms_uids+',ms_randUidArr='+ms_randUidArr.toString());
				
				
				// 因网速原因且无太大必要，暂且取消写库
				// AJAX请求数据，写入完成返回1，删除用户写中奖者；错误返回-1，提示异常；2表示中奖者重复
			}else{	// 等待
				// 暂时不执行操作
			}
		}
		
		// 写已数人员并且清空列表
		var ddp_count_button_status = 1;	// 下一轮按钮状态，1正常，0等待（正在AJAX数据）
		function ddp_insert_remove(){
			if(ddp_count_button_status){	// 联网AJAX数据
				if($("#ddp .ddp_list li").size()==0) return false;
				ddp_count_button_status = 0;
				$(".ddp_count_button").attr('value','稍等...');
				// ajax
				// 严格来讲清除列表的操作应该在AJAX完成后逐一判断ID进行删除，但考虑到用户网络状态及用户体验，故只要收到信息即认为完成
				$.get('index.php?m=member&c=screen_pull&a=ajax_duiduipeng_insert_pairer',{ catid:101, id:1, man_uids:man_uids, ms_uids:ms_uids}, function(data){
					//alert('完成');
					$(".ddp_count_button").attr('value','下一轮');
					$("#ddp .ddp_list").html('');
					ddp_count_button_status = 1;
				});
			}
		}
		
		// 参与者滚动
		function ddp_scroll(){
			if(ddp_scroll_status){
				// 男士
				var ddp_kind_man = $(".ddp_kind_man dl");
				$(ddp_kind_man.get(ddp_kind_sn)).slideUp(ddp_scroll_time);
				$(".ddp_kind_man").append('<dl>'+$(ddp_kind_man.get(ddp_kind_sn)).html()+'</dl>');
				// 女士
				var ddp_kind_ms = $(".ddp_kind_ms dl");
				$(ddp_kind_ms.get(ddp_kind_sn)).slideUp(ddp_scroll_time);
				$(".ddp_kind_ms").append('<dl>'+$(ddp_kind_ms.get(ddp_kind_sn)).html()+'</dl>');
				
				ddp_kind_sn++;
				window.setTimeout(ddp_scroll, ddp_scroll_time);
				
			}
		}
		
		/*
		function ddp(){
			// 男士
			var ddp_kind_man = $(".ddp_kind_man dl");
			$(ddp_kind_man.get(ddp_kind_sn)).slideUp(ddp_kind_time);
			$(".ddp_kind_man").append('<dl>'+$(ddp_kind_man.get(ddp_kind_sn)).html()+'</dl>');
			// 女士
			var ddp_kind_ms = $(".ddp_kind_ms dl");
			$(ddp_kind_ms.get(ddp_kind_sn)).slideUp(ddp_kind_time);
			$(".ddp_kind_ms").append('<dl>'+$(ddp_kind_ms.get(ddp_kind_sn)).html()+'</dl>');
			
			ddp_kind_sn++;
			window.setTimeout(ddp, ddp_kind_time);
		}*/
		</script>        </div>
                
                
                
                
                <!-- 数据报表 -->
                <div id="shujubaobiao" class="boxitem">
                <div id="sjbb">
        	<div id="sjbb_data" class="none">
            	<li id="sjbb_0"></li>
            	<li id="sjbb_1"></li>
            	<li id="sjbb_2"></li>
            </div>
            <ul id="sjbb_list">
            	<li id="sjbb_0" style="padding-left:70px;">
                	<div id="sjbb_0_quantity"><p class="none">0</p><dl><dt>0</dt><dd>信息总数</dd></dl></div>
                	<div id="sjbb_1_quantity"><p class="none">0</p><dl><dt>0</dt><dd>用户总数</dd></dl></div>
                	<div id="sjbb_0_type" style="display:none"><dl><dt></dt><dd>类型比例</dd></dl></div>
                </li>
            	<li id="sjbb_1" style="display:none">
                	<div id="sjbb_1_quantity"><p class="none">0</p><dl><dt>0</dt><dd>用户总数</dd></dl></div>
                	<div id="sjbb_1_active"><dl><dt></dt><dd>活跃度图</dd></dl></div>
                </li>
            </ul>
            <div id="sjbb_bar" style="display:none">
            	<label><input autocomplete="off" type="radio" name="sjbb_item" onClick="sjbb_control_bar(0)" checked value="0" />信息</label>
            	<label><input autocomplete="off" type="radio" name="sjbb_item" onClick="sjbb_control_bar(1)" value="1" />用户</label>
            </div>
        </div>
        <script language="javascript">
		var SHUJUBAOBIAO_SWITCH = 1;	// 开关
		var SHUJUBAOBIAO_STATUS = 0;	// 状态，0表示停止，1表示正在运行
		
		var sjbb_now_item = 0;	// 当前显示项目
		
		// 默认数据
		var infoData = new Array();	//[['文字',40.5],['图片',35.3],['位置',8.8],['语音',10.9],['图文',4.5]];
		var userData = new Array();	//[['关注',10.5],['一般',25.3],['活跃',48.8],['非常',15.4]];
		
		var sjbb_ajax_run = 0;	// 运行次数
		
		// 数据报表
		function shujubaobiao(jsonStr){
			if(jsonStr.length>0 && jsonStr!=0){
				// 将JSON字符串转换为JSON对象
				var jsonObj = JSON.parse(jsonStr);
				var objUpdate = jsonObj.update;		// 更新数据
				var objType = jsonObj.type;		// 数据类型：empty空的，restart重载
				var objRemove = jsonObj.remove;		// 清除数据
				$("#test_shujubaobiao").text('shujubaobiao:'+jsonStr+',objUpdate='+objUpdate.toString());
				// 开始处理数据
				// 处理要更新的数据
				if(objUpdate!=''){
					// 项部统计
					$("#boxTop_count").text('信息:'+objUpdate.info_all+'条，用户:'+objUpdate.user_all+'人');
					// 信息
					$("#sjbb_0_quantity p").text(objUpdate.info_all);
					$("#sjbb_0_quantity dt").text(objUpdate.info_all);
					/*
					var infoCate = objUpdate.info_cate;
					var i = 0;
					if(parseInt(infoCate.text)>0){ infoData[i]=['文字',parseInt(infoCate.text)]; i++;}
					if(parseInt(infoCate.pic)>0){ infoData[i]=['图片',parseInt(infoCate.pic)]; i++;}
					if(parseInt(infoCate.loc)>0){ infoData[i]=['位置',parseInt(infoCate.loc)]; i++;}
					if(parseInt(infoCate.voice)>0){ infoData[i]=['语音',parseInt(infoCate.voice)]; i++;}
					if(parseInt(infoCate.textpic)>0){ infoData[i]=['图文',parseInt(infoCate.textpic)]; i++;}
					*/
					// 用户
					$("#sjbb_1_quantity p").text(objUpdate.user_all);
					$("#sjbb_1_quantity dt").text(objUpdate.user_all);
					/*
					var userCate = objUpdate.user_cate;
					var j = 0;
					if(parseInt(userCate.a)>0){ userData[j]=['关注',parseInt(userCate.a)]; j++;}
					if(parseInt(userCate.b)>0){ userData[j]=['一般',parseInt(userCate.b)]; j++;}
					if(parseInt(userCate.c)>0){ userData[j]=['活跃',parseInt(userCate.c)]; j++;}
					if(parseInt(userCate.d)>0){ userData[j]=['非常',parseInt(userCate.d)]; j++;}
					*/
					if(now_module_name=='shujubaobiao' && !sjbb_ajax_run) eval("sjbb_show_"+sjbb_now_item+"();");
					
				}
				// 处理要删除的数据
				if(objRemove!=''){
				}
				
				sjbb_ajax_run++;
			}else if(jsonStr==0){
				sjbb();
			}
		}
		function sjbb(){
			//$("#sjbb").html(json);
			sjbb_control_bar(sjbb_now_item);
		}
		
		// 数据报表切换控制
		function sjbb_control_bar(id){
			if(sjbb_now_item==id){
				eval("sjbb_show_"+id+"();");
			}else{
				sjbb_now_item = id;
				//alert('sjbb_control_bar');
				var sjbb_list = $("#sjbb_list li");
				for (var i = 0; i < sjbb_list.size(); i++) {
					$(sjbb_list.get(i)).slideUp("slow");
				}
				$(sjbb_list.get(id)).slideDown("slow");
				window.setTimeout("sjbb_show_"+id+"()", 500);
			}
		}
		
		// 信息
		function sjbb_show_0(){
			sjbb_show_0_quantity();
			sjbb_show_0_type();

		}
		function sjbb_show_0_quantity(){
			var num = parseInt($("#sjbb_0_quantity p").text());
			if(!num) return false;
			var startNum = 0;
			var addNum = Math.ceil(num/80);
			function sjbb_show_0_add(){
				if(num>=startNum){
					$("#sjbb_0_quantity dt").text(startNum);
					startNum = startNum + addNum;
					window.setTimeout(sjbb_show_0_add, 10);
				}else{
					$("#sjbb_0_quantity dt").text(num);
				}
			}
			sjbb_show_0_add();
		}
		function sjbb_show_0_type() {
			$('#sjbb_0_type dt').highcharts({
				chart: {
					plotBackgroundColor: null,
					plotBorderWidth: 0,
					plotShadow: false,
					backgroundColor: 'none'
				},
				title: {
					text: '<b style="font-size:30px; height:30px; line-height:30px; display:none;"></b>'
				},
				tooltip: {
					pointFormat: '<b style="font-size:50px;">{point.name}:{point.percentage:.1f}%</b>'
				},
				plotOptions: {
					/*pie: {
						allowPointSelect: true,
						dataLabels: {
							enabled: true,
							distance: -60,
							style: {
								fontWeight: 'bold',
								fontSize: '30px',
								color: 'white',
								textShadow: '0px 1px 2px black',
							}
						}
					}*/
					pie: {
						allowPointSelect: true,
						cursor: 'pointer',
						dataLabels: {
							enabled: true,
							color: '#ffffff',
							connectorColor: '#000000',
							format: '<b style="font-size:20px;">{point.name}:{point.percentage:.1f}%</b>'
						}
					}
				},
				series: [{
					type: 'pie',
					name: '比例',
					data: infoData
				}],
				credits: {
					enabled: false
				},
				exporting: {
					enabled: false
				}
			});
		}
		
		// 用户
		function sjbb_show_1(){
			sjbb_show_1_quantity();
			sjbb_show_1_active();
		}
		function sjbb_show_1_quantity(){
			var num = parseInt($("#sjbb_1_quantity p").text());
			if(!num) return false;
			var startNum = 0;
			var addNum = Math.ceil(num/80);
			function sjbb_show_1_add(){
				if(num>=startNum){
					$("#sjbb_1_quantity dt").text(startNum);
					startNum = startNum + addNum;
					window.setTimeout(sjbb_show_1_add, 10);
				}else{
					$("#sjbb_1_quantity dt").text(num);
				}
			}
			sjbb_show_1_add();
		}
		function sjbb_show_1_active() {
			$('#sjbb_1_active dt').highcharts({
				chart: {
					plotBackgroundColor: null,
					plotBorderWidth: 0,
					plotShadow: false,
					backgroundColor: 'none'
				},
				title: {
					text: '<b style="font-size:30px; height:30px; line-height:30px; display:none;"></b>'
				},
				tooltip: {
					pointFormat: '<b style="font-size:50px;">{point.name}:{point.percentage:.1f}%</b>'
				},
				plotOptions: {
					/*pie: {
						allowPointSelect: true,
						dataLabels: {
							enabled: true,
							distance: -60,
							style: {
								fontWeight: 'bold',
								fontSize: '30px',
								color: 'white',
								textShadow: '0px 1px 2px black',
							}
						}
					}*/
					pie: {
						allowPointSelect: true,
						cursor: 'pointer',
						dataLabels: {
							enabled: true,
							color: '#ffffff',
							connectorColor: '#000000',
							format: '<b style="font-size:20px;">{point.name}:{point.percentage:.1f}%</b>'
						}
					}
				},
				series: [{
					type: 'pie',
					name: '比例',
					data: userData
				}],
				credits: {
					enabled: false
				},
				exporting: {
					enabled: false
				}
			});
		}
		</script>        </div>
                
                <!-- 闭幕墙 -->
                <div id="bimuqiang" class="boxitem">
                <div id="bmq"><?php if($info["endbackground"] != ''): ?><img src="<?php echo ($info["endbackground"]); ?>" /><?php endif; ?></div>
        <script language="javascript">
		var BIMUQIANG_SWITCH = 1;	// 开关
		var BIMUQIANG_STATUS = 0;	// 状态，0表示停止，1表示正在运行
		
		// 闭幕墙
		function bimuqiang(jsonStr){
			if(jsonStr.length>0 && jsonStr!=0){
				// 将JSON字符串转换为JSON对象
				var jsonObj = JSON.parse(jsonStr);
				var objUpdate = jsonObj.update;		// 更新数据
				var objType = jsonObj.type;		// 数据类型：empty空的，restart重载
				var objRemove = jsonObj.remove;		// 清除数据
				// 开始处理数据
				// 处理要更新的数据
				if(objUpdate!=''){
					$("#bmq").html(objUpdate);
					if(objType=='restart' && now_module_name=='bimuqiang') boxConItem('bimuqiang');
				}
				
				/*
				switch(objType){
				case 'restart' : 
					$("#bmq").html(objData);
					if(now_module_name=='bimuqiang') boxConItem('bimuqiang');
					break;
				case 'update' : $("#bmq").html(objData); break;
				case 'remove' : break;
				}*/
			}else if(jsonStr==0){
				bmq();
			}
		}
		
		function bmq(){
		}
		</script>        </div>
                
    </div>
    <div id="boxControl" onMouseDown="boxCon();">
    	<div class="bcbox"><img id="boxContGuide" src="/tpl/static/wall/style/images/menu_guide_up.png" /></div>
        <div class="item">
        
            <ul id="boxControl_ul">
                        	<li id="kaimuqiang" onMouseDown="boxConItem('kaimuqiang');" time="<?php echo time();?>"><img src="/tpl/static/wall/style/images/menu_kaimuqiang.png" />开幕墙</li>
                        	<li id="dapingmu" onMouseDown="boxConItem('dapingmu');" time="<?php echo time();?>"><img src="/tpl/static/wall/style/images/menu_dapingmu.png" />大屏幕</li>
                        	<li id="choujiang" onMouseDown="boxConItem('choujiang');" time="<?php echo time();?>"><img src="/tpl/static/wall/style/images/menu_choujiang.png" />抽奖</li>
                        	<li style="display:none" id="duiduipeng" onMouseDown="boxConItem('duiduipeng');" time="<?php echo time();?>"><img src="/tpl/static/wall/style/images/menu_duiduipeng.png" />对对碰</li>
                        	<li id="shujubaobiao" onMouseDown="boxConItem('shujubaobiao');" time="<?php echo time();?>"><img src="/tpl/static/wall/style/images/menu_shujubaobiao.png" />数据报表</li>
                        	<li id="bimuqiang" onMouseDown="boxConItem('bimuqiang');" time="<?php echo time();?>"><img src="/tpl/static/wall/style/images/menu_bimuqiang.png" />闭幕墙</li>
                        </ul>
            
            <ul id="boxControl_click">
            	<li id="click_top" onMouseDown="clickControl('top')"><img src="/tpl/static/wall/style/images/click_top.png" title="上一屏" /></li><li id="click_change" onMouseDown="clickControl('change')"><img src="/tpl/static/wall/style/images/click_stop.png" title="播放/暂停" /></li><li id="click_next" onMouseDown="clickControl('next')"><img src="/tpl/static/wall/style/images/click_next.png" title="下一屏" /></li>
                <script language="javascript">
				// 检测是否开启控制栏
				function detectClickControl(){
					//var nowModule = eval(now_module_name+';');
					//alert('当前模块为：'+now_module_name);
					
					if(now_module_name=='dapingmu' || now_module_name=='tiwenqiang'){
						$("#boxControl_click").removeClass("none");
					}else{
						$("#boxControl_click").addClass("none");
					}
				}
				// 控制栏单击控制
				function clickControl(button){
					if(button=='change'){
						var ucModuleName = now_module_name.toUpperCase();
						var clickSwitch = eval(ucModuleName+"_CLICK;");
						//alert('button='+button+',DAPINGMU_CLICK='+DAPINGMU_CLICK+',ucModuleName='+ucModuleName+',clickSwitch='+clickSwitch);
						if(clickSwitch){
							//DAPINGMU_CLICK = 0;
							//eval(ucModuleName+"_CLICK = 0;");
							$("#click_change").html('<img src="/tpl/static/wall/style/images/click_play.png" />');
						}else{
							//DAPINGMU_CLICK = 1;
							//eval(ucModuleName+"_CLICK = 1;");
							$("#click_change").html('<img src="/tpl/static/wall/style/images/click_stop.png" />');
						}
					}
					//dapingmu_click(button);
					eval(now_module_name+"_click('"+button+"');");
				}
				
				</script>
            </ul>
            
            <div class="fun"><img id="networkstatus_yes" src="/tpl/static/wall/style/images/network_yes.png" title="当前网络连接正常！" class="none" /><img id="networkstatus_no" src="/tpl/static/wall/style/images/network_no.png" title="网络已断开！" class="none" /> </div>
            
        </div>
    </div>
    
</div>
</div>
<script language="javascript">

// 定义各模块时间戳数组
var Timestamp = new Array();

var ajax_pull_time = 3000;	// 5秒拉一次数据
var ajax_pull_status = 1;	// PULL状态，1表示下拉完成，0表示正在下拉
var ajax_pull_watch = 0;	// 看门狗

function screen_init(){
	
	// 顶部判断
	ScrollImgLeft();
	
	// 初始化各模块时间戳
	var boxControl_li = $("#boxControl_ul li");
	for(var i=0; i<boxControl_li.size(); i++){
		var key = $(boxControl_li.get(i)).attr("id");
		var time = $(boxControl_li.get(i)).attr("time");
		Timestamp[key] = time;
		$("#test3").text($("#test3").text()+key+":"+time+";");
		
		// 初始化当前模块名称为第一个
		if(i==0) now_module_name = key;
	}
	// 启动第一个模块
	//if(getModule) eval("boxConItem('"+getModule+"');"); else eval(now_module_name+"(0);");
	if(getModule) eval("boxConItem('"+getModule+"');"); else eval("boxConItem('"+now_module_name+"');");
	
	// 启动AJAX拉取数据
	//ajax_screen_pull();
	setInterval(ajax_screen_for_pull, ajax_pull_time);
	
	// 检测单击控制栏
	detectClickControl();
}

// AJAX拉取数据
function ajax_screen_pull(){
	
	ajax_pull_status = 0;
	
	// 时间戳
	var timeStr = new Date().toLocaleTimeString();
	$("#json").text(timeStr);

	$.getJSON('/index.php?g=User&m=Wall&a=pullScreen&token=<?php echo ($token); ?>&id=<?php echo ($info["id"]); ?>', {
				dapingmu:$('#dapingmustamp').val(),
				choujiang:$('#choujiangstamp').val(),
				shujubaobiao:$('#shujubaobiaostamp').val(),
				test:1
		}, function(data){
			$("#json").text("["+timeStr+"] "+data);
			$("#json1").text("["+timeStr+"] "+JSON.stringify(data));
			
			var printStr = '';
			$.each(data, function(mkey, module){
				// module模块名称，如：kaimuqiang
				
				var jsonStr = '';
				// 判断是否有内容
				if(module.type!='empty' && ( module.update || module.remove) ){
					// 设置模块时间戳
					if(mkey=='dapingmu'){
						$('#dapingmustamp').val(module.time);
					}
					if(mkey=='choujiang'){
						$('#choujiangstamp').val(module.time);
					}
					if(mkey=='shujubaobiao'){
						$('#shujubaobiaostamp').val(module.time);
					}
					Timestamp[mkey] = module.time;
					// 将JSON对象转化为JSON字符
					var jsonStr = JSON.stringify(module);
					// 调用模块函数并接收返回值
					var result = eval(mkey+"('"+jsonStr+"');");
				}
				
				printStr = printStr+","+mkey+"="+jsonStr;
				
			});
			
			$("#test").text("["+timeStr+"] "+printStr);
			$("#testrt").text("["+timeStr+"] "+printStr);
			ajax_pull_status = 1;
	});
	
}

function ajax_screen_for_pull(){
	if(ajax_pull_status){
		ajax_screen_pull();
		ajax_pull_watch = 0;
	}else{
		ajax_pull_watch++;
	}
	// 当60*10＝10分钟没有数据里复位看门狗，直接拉取数据，可能是浏览器出错
	if(ajax_pull_watch>60){
		ajax_pull_watch = 0;
		ajax_pull_status = 1;
	}
}
</script>





    <script language="javascript">
    var cWidth = document.documentElement.clientWidth;
    var scWidth = Math.ceil((cWidth-1024)/2-90);
    $("#scene_change").css("left",scWidth+"px");
    </script>
    <?php
 if ($info['token']=='rwktqp139391563ss3'){ echo '<div>'; }else { echo '<div style="display:none">'; } ?>
    <textarea id="testrt" style="width:300px;height:300px;"></textarea>
    <input type="text" style="width:100px;" value="<?php echo time();?>" id="dapingmustamp" />
    <input type="text" style="width:100px;" value="<?php echo time();?>" id="choujiangstamp" />
    <input type="text" style="width:100px;" value="<?php echo time();?>" id="shujubaobiaostamp" />
    </div>
</body>
</html>