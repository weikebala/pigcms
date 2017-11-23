<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提交记录</title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<?php echo RES;?>/card/style/style.css" rel="stylesheet" type="text/css">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo RES;?>/card/js/accordian.pack.js" type="text/javascript"></script>
</head>
<body id="cardnews" onLoad="new Accordian(&#39;basic-accordian&#39;,5,&#39;header_highlight&#39;);" class="mode_webapp">
<div id="basic-accordian">
<ul class="round">
	<li class="">
		<span>		
			<a href="<?php echo U('Custom/index',array('token'=>$token,wecha_id=>$wecha_id,'id'=>$set_id));?>" style="float:right;color:#666666;">
				返回
			</a>
			历史提交记录
		</span>
	</li>
</ul>

<?php if(is_array($list)): $key = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($key % 2 );++$key;?><div id="test<?php echo ($item["info_id"]); ?>-header" class="accordion_headings  <?php if($key == 1): ?>header_highlight<?php endif; ?>">
<div class="tab">
<span class="title">
	<?php echo (date('Y-m-d H:i',$item["add_time"])); ?>
	<p></p>
</span>
</div>
<div id="test<?php echo ($item["info_id"]); ?>-content">
<div class="accordion_child">
<div id="queren<?php echo ($item["id"]); ?>">
		<?php if(is_array($item['sub_info'])): $i = 0; $__LIST__ = $item['sub_info'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$info): $mod = ($i % 2 );++$i;?><p>		
				<?php echo ($info["name"]); ?>:
				<?php echo ($info["value"]); ?>	
			</p><?php endforeach; endif; else: echo "" ;endif; ?>	
</div> 
</div>
</div>
</div><?php endforeach; endif; else: echo "" ;endif; ?>
</div>
</body>
</html>