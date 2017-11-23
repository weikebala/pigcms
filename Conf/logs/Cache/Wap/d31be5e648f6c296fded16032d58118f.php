<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html class=" clickberry-extension clickberry-extension-standalone">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/online_booking.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/pig-ui.css" media="all">
<link rel="stylesheet" type="text/css" href="<?php echo STATICS;?>/vhouse/common.css" media="all">
<script type="text/javascript" src="<?php echo STATICS;?>/vhouse/jQuery.js"></script>
<title>我的预约</title>
        <style>
            img{width:100%!important;}
        </style>
    <meta content="clickberry-extension-here">
    </head>
    <body onselectstart="return true;" ondragstart="return false;" id="onlinebooking-list">
        
<div class="qiandaobanner">
    <a href="javascript:;">
        <img src="<?php echo ($headpic); ?>">
    </a></div><a href="javascript:;">
    </a><div class="cardexplain"><a href="javascript:;">
    
</a>
<ul class="round">
<?php if($books == ''): ?><a href="javascript:;">
        <li class="title">
        <span>订单详情 <?php if($vo['remate'] == 0): ?><em class="no">等待客服回电</em><?php endif; ?></span>
        </li>
</a>
<li><a href="javascript:;">
            </a><div class="text"><a href="javascript:;">
               您还没有预约。
                </div>
        </div>
</li><?php endif; ?>
<?php if(is_array($books)): $i = 0; $__LIST__ = $books;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="javascript:;">
        <li class="title">
        <span><?php echo ($vo['dateline']); ?> 订单详情 <?php if($vo['remate'] == 0): ?><em class="no">等待客服回电</em><?php elseif($vo['remate'] == 1): ?><em class="no"><font color="green">客服已回电</font></em><?php elseif($vo['remate'] == 2): ?><em class="no"><font color="red">客服已拒绝</font></em><?php endif; ?></span>
        </li>
</a>
<li><a href="javascript:;">
            </a><div class="text"><a href="javascript:;">
                <p>联系人：<?php echo ($vo['truename']); ?></p>
                <p>联系电话：<?php echo ($vo['tel']); ?></p>
                <p>选择看房户型 ：<?php echo ($vo['housetype']); ?></p>
                <p>预约时间 ：<?php echo ($vo['timepart']); ?></p> 
                <p>更新或提交时间：<?php echo (date('Y年m月d日',$vo['booktime'])); ?></p>
                </a><div class="footReturn"><a href="javascript:;"></a>
<?php if($vo['remate'] == 0): ?><a id="" style="color:#fff;" class="submit" href="<?php echo U('Reservation/edit',array('token'=>$token,'wecha_id'=>$wecha_id,'id'=>$vo['id'],'rid'=>$vo['rid']));?>">修改订单 </a><?php endif; ?>
<?php if($vo['remate'] != 0): ?><p>客服回复：<font color="#2c2a24"><?php echo ($vo['kfinfo']); ?></font></p><?php endif; ?>

                </div>
        </div>
</li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>

<!--页码-->
    </div>
                <div mark="stat_code" style="width:0px; height:0px; display:none;">
                    </div>
    
</body></html>