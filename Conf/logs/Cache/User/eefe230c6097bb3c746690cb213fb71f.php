<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> 微信公众平台源码,微信机器人源码,微信自动回复源码 PigCms多用户微信营销系统</title>
<meta http-equiv="MSThemeCompatible" content="Yes" />
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/style_2_common.css?BPm" />
<script src="<?php echo RES;?>/js/common.js" type="text/javascript"></script>
<link href="<?php echo RES;?>/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body id="nv_member">
<div style="line-height:200%;padding:10px 20px;">
支付状态：<?php if($thisOrder["paid"] == 1): ?>已付款<?php else: ?>未付款<?php endif; ?><br>
预定人：<?php echo ($thisOrder["name"]); ?><br>
电话：<?php echo ($thisOrder["tel"]); ?><br>
房间类型：<?php echo ($thisOrder["housename"]); ?><br>
房间数：<?php echo ($thisOrder["nums"]); ?><br>
总价：<span style="color:#f30;font-size:16px;font-weight:bold"><?php echo ($thisOrder["price"]); ?></span>元<br/>
</div>

<form class="form" method="post" id="form" action=""> 
<?php if($isUpdate == 1): ?><input type="hidden" name="id" value="<?php echo ($thisOrder["id"]); ?>" /><?php endif; ?>
    <div class="msgWrap bgfc"> 
     <table class="userinfoArea" style=" margin:0;" border="0" cellspacing="0" cellpadding="0" width="100%"> 
      <tbody> 
      <tr> 
        <th><span class="red">*</span>付款状态：</th> 
        <td>
        <select name="paid">
        <option value="0" <?php if($thisOrder["paid"] == 0): ?>selected<?php endif; ?>>未付款</option>
        <option value="1" <?php if($thisOrder["paid"] == 1): ?>selected<?php endif; ?>>已付款</option>
        </select>
        </td> 
       </tr> 
       <tr> 
        <th><span class="red">*</span>入住状态：</th> 
        <td>
        <select name="status">
        <option value="0" <?php if($thisOrder["status"] == 0): ?>selected<?php endif; ?>>已预定</option>
        <option value="1" <?php if($thisOrder["status"] == 1): ?>selected<?php endif; ?>>已入住</option>
        </select>
        </td> 
       </tr> 
       <tr>         
       <th>&nbsp;</th>
       <td>
       <button type="submit" name="button" class="btnGreen">保存</button> </td> 
       </tr> 
      </tbody> 
     </table> 
     </div>
    
   </form> 

</body>
</html>