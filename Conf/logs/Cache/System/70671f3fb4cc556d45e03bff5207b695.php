<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台首页</title>
<link href="<?php echo RES;?>/images/main.css" type="text/css" rel="stylesheet">
<meta http-equiv="x-ua-compatible" content="ie=7" />
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
</head>
<body style="background:none">
<div class="content">
<div class="box">
	<h3>PigCms更新消息</h3>
    <div class="con dcon">
    <div class="update">
    <p style="display:none">服务器环境：Apache/2.2.9 (APMServ) mod_ssl/2.2.9 OpenSSL/0.9.8h PHP/5.2.6</p>
    <p>服务器IP：127.0.0.1</p>
    <p>当前网站语言：UTF-8简体中文</p>
    <p>公司网站：<a href="http://www.pigcms.com" class="blue">公司网站</a></p>
    <p>系统版本：<?php if($updateRecord.version): echo (date("Ymd",$updateRecord["version"])); else: ?>暂无版本记录<?php endif; ?>&nbsp;&nbsp;<a href="?g=System&m=System&a=checkUpdate" class="blue">检查更新并在线升级</a> <?php if($canEnUpdate != 1): ?><span style="color:red;font-weight:bold"></span><?php endif; ?></p>
    <p style="display:none">数据库版本： <a href="?g=System&m=System&a=checkUpdate" class="blue">检查更新并在线升级</a></p>
    </div>
    <ul class="myinfo">
   <li><p class="red">您的程序版本为：PigCms多用户微信营销系统</p><span>[ 授权版本：商业版 (终身使用权) ]</span></li>
   <li style="display:none"><p class="red" style="display:none">您的程序版本为：PigCms多用户微信营销系统v1.0</p><span style="display:none">[ 授权版本：商业版 (终身免费) ]</span></li>
  
	</ul>
    </div>
</div>
<!--/box-->
<div class="box">
	<h3>PigCms说明</h3>
    <div class="con dcon">
    <div class="kjnav" style="display:none">
    <a href="http://bbs.pigcms.com">使用帮助</a><a href="http://bbs.pigcms.com">技术售后</a><a href="http://bbs.pigcms.com">安装指导</a><a href="http://bbs.pigcms.com">联系我们</a><a href="http://bbs.pigcms.com">升级咨询</a>
    </div>
    <ul class="myinfo kjinfo">
<script charset="utf-8" type="text/javascript" src="http://www.haoid.cn/content/plugins/kl_data_call/kl_data_call_do.php?ID=2"></script>
	</ul>
    </div>
</div>

<!--/box-->
</div>
<script>
function systemupdatecheck(){
	$.ajax({
		type: "GET",
		url: "Services/EFService.svc/Members",
		data: "{}",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		success: function (data) {
			if (data.success == true) {
				setTimeout("window.location.href = location.href",2000);
			} else {
				alert(data.msg);
			}
		},
		error: function (msg) {
			alert(msg);
		}
	});
}
</script>
</body>
</html>