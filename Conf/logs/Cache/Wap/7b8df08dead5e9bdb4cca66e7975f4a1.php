<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($thisMarket["name"]); ?></title>
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="<?php echo RES;?>/card/style/style.css" rel="stylesheet" type="text/css">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<style>
	.detailcontent .content img{max-width: 99%;}
</style>
</head>

<body id="cardunion" class="mode_webapp2" >
<div class="cardexplain">
<ul class="round">
	<li class="">
		<span>		
			<a href="<?php echo U('Market/index',array('token'=>$token,wecha_id=>$wecha_id,'id'=>$thisMarket['market_id']));?>" style="float:right;color:#666666;">
				返回
			</a>
			商圈介绍
		</span>
	</li>
</ul>

<ul class="round">
<li class="userinfo"><a href="/index.php?g=Wap&m=Market&a=intro&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&id=<?php echo ($thisMarket["market_id"]); ?>"><span><?php if($thisMarket["name"] != ''): echo ($thisMarket["name"]); else: ?>商家未设置<?php endif; ?></span></a></li>
<li class="tel"><a href="tel:<?php echo ($thisMarket["tel"]); ?>"><span><?php if($thisMarket["tel"] != ''): echo ($thisMarket["tel"]); else: ?>商家未设置电话<?php endif; ?></span></a></li>
<li class="address"><a href="/index.php?g=Wap&m=Market&a=maps&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&id=<?php echo ($thisMarket["market_id"]); ?>"><span><?php if($thisMarket["address"] != ''): echo ($thisMarket["address"]); else: ?>商家未设置地址<?php endif; ?></span></a></li>
</ul>

	<div class="detailcontent"><h2>乘车路线</h2>
        <div class="content">
        	<?php echo ($thisMarket["line"]); ?>
        </div>
   	</div>



	<div class="detailcontent"><h2>商家详情</h2>
        <div class="content"><?php echo (htmlspecialchars_decode($thisMarket['intro'])); ?></div>
    </div>
</div>

</div>

<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<?php if($radiogroup > 8): ?><br>
<br><?php endif; ?>
<script>
function displayit(n){
	for(i=0;i<4;i++){
		if(i==n){
			var id='menu_list'+n;
			if(document.getElementById(id).style.display=='none'){
				document.getElementById(id).style.display='';
				document.getElementById("plug-wrap").style.display='';
			}else{
				document.getElementById(id).style.display='none';
				document.getElementById("plug-wrap").style.display='none';
			}
		}else{
			if($('#menu_list'+i)){
				$('#menu_list'+i).css('display','none');
			}
		}
	}
}
function closeall(){
	var count = document.getElementById("top_menu").getElementsByTagName("ul").length;
	for(i=0;i<count;i++){
		document.getElementById("top_menu").getElementsByTagName("ul").item(i).style.display='none';
	}
	document.getElementById("plug-wrap").style.display='none';
}

document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
	WeixinJSBridge.call('hideToolbar');
});
</script>  
<!--<div class="footermenu">
    <ul>
    <li>
            <a href="javascript:history.go(-1);">
            <img src="<?php echo RES;?>/card/images/return.png">
            <p>返回</p>
            </a>
        </li>
    <li>
            <a <?php if($infoType=='memberCardHome'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=index&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>">
            <img src="<?php echo RES;?>/card/images/home.png">
            <p>会员卡首页</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='companyDetail'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=companyDetail&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&companyid=<?php echo ($thisCompany["id"]); ?>">
            <img src="<?php echo RES;?>/card/images/detaila.png">
            <p>商家详情</p>
            </a>
        </li>
        <li>
            <a <?php if($infoType=='myCard'){ ?>class="active"<?php } ?> href="/index.php?g=Wap&m=Card&a=index&token=<?php echo ($token); ?>&wecha_id=<?php echo ($wecha_id); ?>&mycard=1">
            <span class="num2" ><?php echo ($cardsCount); ?></span><img src="<?php echo RES;?>/card/images/my.png">
            <p>我的会员卡</p>
            </a>
        </li>
    </ul>
</div>-->
<script type="text/javascript">
window.shareData = {  
            "moduleName":"Card",
            "moduleID":"0",
            "imgUrl": "", 
            "sendFriendLink": "<?php echo ($f_siteUrl); echo U('Card/index',array('token'=>$token));?>",
            "tTitle": "会员卡",
            "tContent": ""
};
</script>
<?php echo ($shareScript); ?>
</body>
</html>