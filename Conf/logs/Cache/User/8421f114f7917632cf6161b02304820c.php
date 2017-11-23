<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> 微信公众平台源码,微信机器人源码,微信自动回复源码 PigCms多用户微信营销系统</title>
<meta http-equiv="MSThemeCompatible" content="Yes" />
<link rel="stylesheet" type="text/css" href="./tpl/User/default/common/css/style_2_common.css?BPm" />
<script src="./tpl/User/default/common/js/common.js" type="text/javascript"></script>
<link href="./tpl/User/default/common/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body id="nv_member">
<div style="line-height:200%;padding:10px 20px;">
<strong>预约项目：</strong><?php echo ($userinfo['housetype']); ?><br>
<?php if($userinfo['type'] == 'maintain'): ?><strong>车牌：</strong><?php echo ($userinfo['carnum']); ?><br>
<strong>公里数：</strong><?php echo ($userinfo['km']); ?><br><?php endif; ?>
<strong>预约人：</strong><?php echo ($userinfo['truename']); ?><br>
<strong>电话：</strong><?php echo ($userinfo['tel']); ?><br>
<strong>备注：</strong><?php echo ($userinfo['info']); ?><br>
<strong>下单时间：</strong><?php echo (date("Y年m月d日  H:i:s",$userinfo['booktime'])); ?>点<br>
<strong>预约时间：</strong><?php echo ($userinfo['dateline']); ?> / <?php echo ($userinfo['timepart']); ?><br>
<?php if($ok == 1): ?><strong><font  color='red'>修改成功</font> </strong>

<?php elseif($ok == 2): ?>
<strong><font  color='red'>修改失败</font> </strong><?php endif; ?>
</div>

<form class="form" method="post" id="form" action=""> 
    <div class="msgWrap bgfc"> 
     <table class="userinfoArea" style=" margin:0;" border="0" cellspacing="0" cellpadding="0" width="100%"> 
      <tbody> 
       <tr> 
        <th><span class="red">*</span>订单状态：</th> 
        <td>
        <select id="remate" name="remate" class="input-medium" style="width:80px">
             <option value="0" <?php if($userinfo['remate'] == 0): ?>selected="selected"<?php endif; ?>>待回复</option>
            <option value="1" <?php if($userinfo['remate'] == 1): ?>selected="selected"<?php endif; ?>>确认</option>
             <option value="2" <?php if($userinfo['remate'] == 2): ?>selected="selected"<?php endif; ?>>拒绝</option>

        </select>

        </td> 
       </tr> 
       <tr> 
        <th><span class="red">*</span>客服备注：</th>
        <td>
        <textarea class="px" id="kfinfo" name="kfinfo" style="width:400px; height:100px"><?php echo ($userinfo['kfinfo']); ?></textarea>
        </td> 
       </tr>
       <tr>         
       <th>&nbsp;</th>
       <td>
      <input type="hidden" name="id" value="<?php echo ($userinfo['id']); ?>" />
      <input type="hidden" name="wecha_id" value="<?php echo ($userinfo['wecha_id']); ?>" />
      <input type="hidden" name="token" value="<?php echo ($userinfo['token']); ?>" />
       <button type="submit" name="button" class="btnGreen">保存</button> </td> 
       </tr> 
      </tbody> 
     </table> 
     </div>
    
   <input type="hidden" name="__hash__" value="c4777985610b4681565177b37676d9e2_ae444f64eff33253236e8ce4fe4073f1" /></form> 

</body>
</html>