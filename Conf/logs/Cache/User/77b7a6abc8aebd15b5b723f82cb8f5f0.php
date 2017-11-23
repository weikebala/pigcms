<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> 微信公众平台源码,微信机器人源码,微信自动回复源码 PigCms多用户微信营销系统</title>
<meta http-equiv="MSThemeCompatible" content="Yes" />
<link href="<?php echo RES;?>/css/style.css" rel="stylesheet" type="text/css" />
<style>
	table{text-align: center;}
	.userinfoArea td{padding:5px 5px;font-size: 14px}
	.menu{height: 30px;padding: 5px 30px;border-bottom: 2px solid #666666;}
	.menu span{font-size: 14px;line-height: 30px; font-weight: bold; color:#333333;}
	.menu .m-l{float:left;}
	.menu .m-r{float:right;}
</style>
</head>
<body>
<div class="content">
	<div class="menu">
		<span class="m-l">提交人：<?php echo ($info["user_name"]); ?></span>
		<span class="m-r">提交时间：<?php echo (date("Y-m-d",$info["add_time"])); ?></span>
	</div>
<table class="userinfoArea" width="100%" border="0" cellspacing="0" cellpadding="0" style=" margin:0;">
<?php if(is_array($sub_info)): $i = 0; $__LIST__ = $sub_info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><tr>
	<td width="120px" align="right"><?php echo ($item["name"]); ?>：</td>
	<td align="left"><?php echo ($item["value"]); ?></td>
</tr><?php endforeach; endif; else: echo "" ;endif; ?>
</table>
</div>
</body>
</html>