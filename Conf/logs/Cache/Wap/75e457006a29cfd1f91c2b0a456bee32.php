<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/online_booking.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/wap/common.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/wap/datepicker_car.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/pig-ui.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/common.css" media="all">
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/jQuery.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/jquery-ui.js"></script>
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/wap/bootstrap-datepicker.js"></script>
<title><?php echo ($reslist['title']); ?></title>

        <style>
            img{width:100%!important;}
        </style>
    </head>
    <body onselectstart="return true;" ondragstart="return false;" id="onlinebooking">
        
    <div class="qiandaobanner">
        <img src="<?php echo (($reslist['picurl'])?($reslist['picurl']):'http://image.pigcms.com/yicms/2013/12/24/1387856692_5a4e28182dd3a663.jpg'); ?>">
    </div>
    <div class="cardexplain">
    <!--普通用户登录时显示-->
    <ul class="round">
        <li>
            <a href="<?php echo U('Reservation/mylist',array('token'=>$token,'wecha_id'=>$wecha_id));?>"><span>我的预约订单<em class="ok"><?php if($count != ''): echo ($count); else: ?>1<?php endif; ?></em></span></a>
        </li>
    </ul>
    <!--后台可控制是否显示-->
    <ul class="round">
        <li>
        <h2>预约说明</h2>
        <div class="text"><?php echo ($reslist['info']); ?></div>
        </li>
    </ul>

    <!--后台可控制是否显示-->
    <ul class="round">
        <li class="addr"><a href="http://chabus.duapp.com/mapapi.php?lng=<?php echo ($reslist['lng']); ?>&lat=<?php echo ($reslist['lat']); ?>&title=预约&info=温馨提示：预约时间保留当天，请认真填写预约订单"><span>地址： <?php echo ($reslist['address']); ?></span></a></li>
        <li class="tel"><a href="tel:<?php echo ($reslist['tel']); ?>"><span>预约电话： <?php echo ($reslist['tel']); ?></span></a></li>
    </ul>

    <ul class="round roundyellow" <?php if($reslist['truename'] != ''): ?>style="display:none;"<?php endif; ?>>
        <li class="userinfo"><a href="<?php echo U('Userinfo/index',array('token'=>$token,'wecha_id'=>$wecha_id));?>"><span>请完善个人资料再填表单</span></a></li>
    </ul>

    <!--粉丝填写过的信息的，直接就显示名字电话，粉丝没有填写过信息的话，这里就直接留空让粉丝填写-->
    <ul class="round">
    <form action="javascript:;" method="post">
        <li class="title mb"><span class="none">请认真填写表单</span></li>
                <li class="nob">
            <input name="formhash" id="formhash" value="ertyuio34567hh" type="hidden">
            <input name="__formtoken__" id="__formtoken__" type="hidden" value="<?php echo ($__formtoken__); ?>">
            <table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody><tr>
                    <th>联系人</th>
                    <td><input name="truename" class="px" id="truename" value="<?php echo ($reslist['truename']); ?>"  placeholder="请输入您的真实姓名" type="text"></td>
                </tr>
            </tbody></table>
        </li>
            <li class="nob">
            <table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody><tr>
                    <th>联系电话</th>
                    <td><input name="tel" class="px" id="tel"  value="<?php echo ($reslist['user_tel']); ?>"  placeholder="请输入您的电话" type="tel"></td>
                </tr>
            </tbody></table>
        </li>
        <li class="nob">
            <table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <th>预约日期</th>
                <td>
                    <input type="text" class="px hasDatepicker" name="dateline" placeholder="" value="<?php echo ($reslist['dateline']); ?>"  readonly="readonly" id="dateline" >
                </td>
                </tr>
            </tbody></table>
        </li>
        <li class="nob">
            <table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <th>预约时间</th>
                <td>
                    <select name="timepart" id="timepart" class="dropdown-select">
                        <option value="0:00-1:00">0:00-1:00</option><option value="1:00-2:00">1:00-2:00</option><option value="2:00-3:00">2:00-3:00</option><option value="3:00-4:00">3:00-4:00</option><option value="4:00-5:00">4:00-5:00</option><option value="5:00-6:00">5:00-6:00</option><option value="6:00-7:00">6:00-7:00</option><option value="7:00-8:00">7:00-8:00</option><option value="8:00-9:00" selected="">8:00-9:00</option><option value="9:00-10:00">9:00-10:00</option><option value="10:00-11:00">10:00-11:00</option><option value="11:00-12:00">11:00-12:00</option><option value="12:00-13:00">12:00-13:00</option><option value="13:00-14:00">13:00-14:00</option><option value="14:00-15:00">14:00-15:00</option><option value="15:00-16:00">15:00-16:00</option><option value="16:00-17:00">16:00-17:00</option><option value="17:00-18:00">17:00-18:00</option><option value="18:00-19:00">18:00-19:00</option><option value="19:00-20:00">19:00-20:00</option><option value="20:00-21:00">20:00-21:00</option><option value="21:00-22:00">21:00-22:00</option><option value="22:00-23:00">22:00-23:00</option><option value="23:00-24:00">23:00-24:00</option> </select>
                </td>
                </tr>
            </tbody></table>
        </li>
                <li class="nob">
            <table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tbody><tr>
                <th>选择看房户型</th>
                <td>
                    <select name="housetype" id="housetype" class="download dropdown-select">
                    <?php if(is_array($housetype)): $i = 0; $__LIST__ = $housetype;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo['name']); ?>"><?php echo ($vo['name']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                    </select>
                </td>
                </tr>
            </tbody></table>
        </li>
        <li class="nob">
            <table class="kuang" border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody><tr>
                    <th class="thtop" valign="top">备注</th>
                    <td>
                        <textarea name="info" class="pxtextarea" style=" height:99px;overflow-y:visible" id="info" placeholder="请输入备注信息"><?php echo ($reslist['userinfo']); ?></textarea>
                        <input type="hidden" name="uid" id="uid" value="<?php echo ($_GET['wecha_id']); ?>">
                        <input type="hidden" name="rid" id="rid" value="<?php echo ($rid); ?>">
                        <input type="hidden" name="type" id="type" value="house_book">
                         <?php if($reslist['booktime'] != ''): ?><input type="hidden" name="id" id="id" value="<?php echo ($reslist['id']); ?>">
                         <input type="hidden" name="rid" id="rid" value="<?php echo ($reslist['rid']); ?>"><?php endif; ?>
                    </td>
                </tr>
            </tbody></table>
        </li>
        </form>
    </ul>
    <div class="footReturn">
        <input id="showcard" class="submit" value="提交消息" type="button"> 
        <div class="window" id="windowcenter">
            <div id="title" class="wtitle">操作提示<span class="close" id="alertclose"></span></div>
            <div class="content">
                <div id="txt"></div>
            </div>
        </div>
    </div>
    </div>


<script type="text/javascript">

$(document).ready(function () {
        var nowTemp = new Date();
                var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);
                var ndate = $('#dateline').datepicker({
                        format:"yyyy-mm-dd",
                        onRender: function(date) {
                           return date.valueOf() < now.valueOf() ? 'disabled' : '';
                        }
                }).on("changeDate", function(date){
                        ndate.datepicker('hide');
                });
    $("#showcard").click(function () {
        var ret_single = ret_download = tel_num = housetype ='';

        $(".single").each(function(i){
            var s_name = $(this).parent().siblings().text();
            var s_value = $(this).val();
            if('' != s_value) ret_single += '$'+s_name+'#'+s_value;
        });
        $(".download").each(function(i){
            var s_name = $(this).parent().siblings().text();
            var s_value = $(this).val();
            //if('' != s_value) ret_download += '$'+s_name+'#'+s_value;
            if('' != s_value) ret_download += s_value;
        });

        tel_num = $("#tel").val();
        if('undefined' !== typeof(tel_num)){
            if(tel_num ==''){alert('电话不能为空');return;} 
            if(tel_num.length < 11){alert('请输入正确的电话');return;} 
        }

        if($("#truename").val()==''){alert('名字不能为空');return;}
//      if($("#dateline").val()==''){alert('请选择时间');return;}
        var submitData = {
            wecha_id: $("#uid").val(),
            rid: $("#rid").val(),
            token: "<?php echo ($token); ?>",
            type: $("#type").val(),
            id:$("#id").val(),
            truename: $("#truename").val(),
            dateline: $("#dateline").val(),
            timepart: $("#timepart").val(),
            housetype:$("#housetype").val(),
            info: $("#info").val(),
            tel: $("#tel").val(),
            fieldsigle:ret_single,
            fielddownload:ret_download
        };
        if('fromUsername' == submitData.wecha_id) submitData.wecha_id = '';
        $.post("<?php echo U('Reservation/add',array('token'=>$token,'wecha_id'=>$wecha_id));?>",submitData,function(backdata){
            var backdata=eval('('+backdata+')');
            //alert(backdata.url);
                if(backdata.errno==0){
                    alert(backdata.msg);
                    var count = $(".ok").text();
                    count = 1+ parseInt(count);
                    $(".ok").text(count);
                    setTimeout(function(){
                       jumpurl(backdata.url);
                    },1500);
                    return;
                }else{
                    //alert(backdata.url);
                    alert(backdata.msg);
                }

        })
       

    });
});


$("#windowclosebutton").click(function () {
    $("#windowcenter").slideUp(500);
});
$("#alertclose").click(function () {
    $("#windowcenter").slideUp(500);
});
function jumpurl(url){
    window.location.href = url;
}
function alert(title){

$("#windowcenter").slideToggle("slow");
$("#txt").html(title);
//$("#windowcenter").hide("slow");
setTimeout('$("#windowcenter").slideUp(1000)',4000);
}


</script>
<p><br/></p>
                <div mark="stat_code" style="width:0px; height:0px; display:none;">
                    </div>
    
<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body></html>