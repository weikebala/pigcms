<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<title><?php echo ($greeting_card["title"]); ?></title>
<link href="tpl/Wap/default/common/greetiong_card/css/heka2.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="tpl/Wap/default/common/greetiong_card/js/jquery.min.js"></script>
 
</head>
<body>

<div id="sharemcover" onClick="document.getElementById('sharemcover').style.display='';" style=" display:none"><img src="tpl/Wap/default/common/greetiong_card/images/MgnnofmleM.png"></div>
<div class="hot"><p>点击文字可直接编辑，按底部按钮发送</p></div>
<?php if($greeting_card != false): ?><script type="text/javascript" src="tpl/Wap/default/common/greetiong_card/js/audio.js"></script>
 <script>
			window.addEventListener("DOMContentLoaded", function(){
				playbox.init("playbox");
			}, false);
		</script>
        
		<span id="playbox" class="btn_music" onClick="playbox.init(this).play();"><audio src="<?php echo ($greeting_card['mp3']); ?>" loop id="audio"></audio></span><?php endif; ?>
<div class="cardWrap">
    
<style>
.btn_music {
display: inline-block;
width: 35px;
height: 35px;
background: url('tpl/Wap/default/common/greetiong_card/images/img/play.png') no-repeat center center;
background-size: 100% auto;
position: absolute;
z-index: 100;
left: 15px;
top: 30px;
}
.btn_music.on {
    background-image: url("tpl/Wap/default/common/greetiong_card/images/img/stop.png");
}

 
 
 </style>
    <img class="cardbg" src="<?php if($greeting_card['bakcground_url'] == ''): ?>tpl/Wap/default/common/greetiong_card/images/srkl009.jpg <?php else: echo ($greeting_card['bakcground_url']); endif; ?>">
    <div class="messageBox">
            <div class="user">
            <?php if (isset($_GET['info'])){$info=htmlspecialchars(str_replace(array('eval','put'),'',$_GET['info']));}else {$info=$greeting_card['info'];}?>
             <?php if (isset($_GET['name'])){$name=htmlspecialchars(str_replace(array('eval','put'),'',$_GET['name']));}else {$name=$greeting_card['name'];}?>
                <div class="message"><?php echo $info;?></div>
                 
                <div class="name"><?php echo $name;?></div>
                <div class="time"><?php echo date('Y年m月d日',time()); ?></div>
            </div>
            <div  class="dh" id="dh">
            <?php
 if (isset($_GET['type'])){ $xgtype=intval($_GET['type']); }else { switch ($greeting_card['type']){ default: $xgtype=3; break; case 'realLeaf': $xgtype=1; break; case 'flower': $xgtype=2; break; } } ?>
            <select class="selectstyle"
  id="bjdh" onChange="doit()" name="bjdh" style="width:100%"> 
                    <option value="0">请选择动画</option>
                     <option value="1"<?php if($xgtype==1){echo ' selected';}?>>下落的枫叶</option>
                     <option value="2"<?php if($xgtype==2){echo ' selected';}?>>飘雪</option>
                     <option value="3"<?php if($xgtype==3){echo ' selected';}?>>飘玫瑰</option>
                    </select>
                     <select class="selectstyle fr" id="bjid" onChange="doit()" name="bjid" style="display:none"> 
                    
                   <option     selected   value="<?php echo ($greeting_card['id']); ?>"><?php echo ($greeting_card['title']); ?></option>
                    </select>
                    </div>
            <div class="sendBtn-box"> <a class="sendBtn" onClick="document.getElementById('sharemcover').style.display='block';">转发贺卡</a> </div>
            <div class="copyright"><a href=""><?php echo ($greeting_card['copy']); ?></a></div>
    </div>
    
</div>

<?php
$info= str_replace(array("\r\n", "\r", "\n"), "", $info); ?>
<script type="text/javascript">

function doit(){
	 window.location = "<?php echo C('site_url');?>/index.php?g=Wap&m=Greeting_card&a=index&id=<?php echo ($greeting_card['id']); ?>&name="+encodeURIComponent($.trim($(".name").html()))+"&type="+$("#bjdh").val()+"&info="+encodeURIComponent($.trim($(".message").html()));
}
function changeText(cont1,cont2,speed){
	var Otext=cont1.text();
	var Ocontent=Otext.split("");
	var i=0;
	function show(){
		if(i<Ocontent.length)
		{		
			cont2.append(Ocontent[i]);
			i=i+1;
		} 
		 
	};
		var Otimer=setInterval(show,speed);	
};
 	

$(document).ready(function(){
	//$.ajax({url: "/index.php?g=Wap&m=Greeting_card&a=shareData&token=<?php echo ($greeting_card['token']); ?>&id=<?php echo $_GET['id'];?>",dataType: "json"});
	$(".name").click(function(){
		
	 
		
		$(".dh").show();
			if($(this).find(".sort_input").attr("type") == "text"){return false;}
			var name = $.trim($(this).html());
			var m = $.trim($(this).text());
			$(this).html("<input type=text value=\""+name+"\" class=\"sort_input\">");
			$(this).find(".sort_input").focus();
			$(this).find(".sort_input").bind("blur", function(){
				var n = $.trim($(this).val());
				if(n != m && n != ""){
					//window.location = "sort.php?val="+encodeURIComponent(n);
					//发送信息
					$(this).parent().html(n);
				}else{
					$(this).parent().html(name);
				}
			});
	});
	$(".message").click(function(){
		 
		$(".dh").show();
			if($(this).find(".sort_textarea").attr("name") == "textarea"){return false;}
			var message = $.trim($(this).html());
			var mm = $.trim($(this).text());
			$(this).html("<textarea name=\"textarea\" class=\"sort_textarea\">"+message+"</textarea>");
			$(this).find(".sort_textarea").focus();
			//$(this).find(".sort_textarea").select() ;
			$(this).find(".sort_textarea").bind("blur", function(){
				 
				var nn = $.trim($(this).val());
				if(nn != mm && nn != ""){
					//window.location = "sort.php?val="+encodeURIComponent(n);
					//发送信息
					$(this).parent().html(nn);
				}else{
					$(this).parent().html(message);
				}
			});
	});
	
	/*changeText($(".message"),$(".message2"),150);
	clearInterval(Otimer);*/
});
<?php
if (isset($_GET['name'])){ $name=$_GET['name']; }else { $name=$greeting_card['name']; } ?>

   document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
        
        // 发送给好友
        WeixinJSBridge.on('menu:share:appmessage', function (argv) {
        	$.ajax({url: "/index.php?g=Wap&m=Greeting_card&a=shareData&token=<?php echo ($greeting_card['token']); ?>&id=<?php echo $_GET['id'];?>",dataType: "json"});
            WeixinJSBridge.invoke('sendAppMessage', { 
                "img_url": "<?php if($greeting_card['bakcground_url'] == ''): ?>tpl/Wap/default/common/greetiong_card/images/srkl009.jpg <?php else: echo ($greeting_card['bakcground_url']); endif; ?>",
                "img_width": "640",
                "img_height": "640",
                "link": "<?php echo C('site_url');?>/index.php?g=Wap&m=Greeting_card&a=index&id=<?php echo ($greeting_card['id']); ?>&name="+encodeURIComponent($.trim($(".name").html()))+"&type="+$("#bjdh").val()+"&info="+encodeURIComponent($.trim($(".message").html())),
                "desc":  $.trim($(".message").html()),
                "title": "<?php echo ($greeting_card["title"]); ?>"
            }, function (res) {
                _report('send_msg', res.err_msg);
            })
        });

        // 分享到朋友圈
        WeixinJSBridge.on('menu:share:timeline', function (argv) {
        	$.ajax({url: "/index.php?g=Wap&m=Greeting_card&a=shareData&token=<?php echo ($greeting_card['token']); ?>&id=<?php echo $_GET['id'];?>",dataType: "json"});
            WeixinJSBridge.invoke('shareTimeline', {
                "img_url": "<?php if($greeting_card['bakcground_url'] == ''): ?>tpl/Wap/default/common/greetiong_card/images/srkl009.jpg <?php else: echo ($greeting_card['bakcground_url']); endif; ?>",
                "img_width": "640",
                "img_height": "640",
                 "link": "<?php echo C('site_url');?>/index.php?g=Wap&m=Greeting_card&a=index&id=<?php echo ($greeting_card['id']); ?>&name="+encodeURIComponent($.trim($(".name").html()))+"&type="+$("#bjdh").val()+"&info="+encodeURIComponent($.trim($(".message").html())),
                "desc":  $.trim($(".message").html()),
                "title": "<?php echo ($greeting_card["title"]); ?>"
            }, function (res) {
                _report('timeline', res.err_msg);
            });
        });

        // 分享到微博
        WeixinJSBridge.on('menu:share:weibo', function (argv) {
        	$.ajax({url: "/index.php?g=Wap&m=Greeting_card&a=shareData&token=<?php echo ($greeting_card['token']); ?>&id=<?php echo $_GET['id'];?>",dataType: "json"});
            WeixinJSBridge.invoke('shareWeibo', {
                "content": "<?php echo $info;?>",
                "url": "<?php echo C('site_url');?>/index.php?g=Wap&m=Greeting_card&a=index&id=<?php echo ($greeting_card['id']); ?>&name="+encodeURIComponent($.trim($(".name").html()))+"&type="+$("#bjdh").val()+"&info="+encodeURIComponent($.trim($(".message").html()))
            }, function (res) {
                _report('weibo', res.err_msg);
            });
        });
        
        
        
        }, false)
		
		const NUMBER_OF_LEAVES = 30;


function init()
{
    
    var container = document.getElementById('leafContainer');
   
    for (var i = 0; i < NUMBER_OF_LEAVES; i++) 
    {
        container.appendChild(createALeaf());
    }
}

 function randomInteger(low, high)
{
    return low + Math.floor(Math.random() * (high - low));
}

 
function randomFloat(low, high)
{
    return low + Math.random() * (high - low);
}

 
function pixelValue(value)
{
    return value + 'px';
}
 
function durationValue(value)
{
    return value + 's';
}
 
function createALeaf()
{
    
    var leafDiv = document.createElement('div');
    var image = document.createElement('img');

    <?php
 switch (intval($_GET['type'])){ default: case 3: $xiaoguo='meigui'; break; case 1: $xiaoguo='realLeaf'; break; case 2: $xiaoguo='snow'; break; case 5: $xiaoguo='reindeer_'; break; } echo 'var xiaoguo="'.$xiaoguo.'";' ?>
   
    image.src = 'tpl/Wap/default/common/greetiong_card/images/'+xiaoguo+parseInt(Math.random()* 4+1)+ '.png';
    
   
   // image.src = '../index/images/dhimg/realLeaf' + randomInteger(1, 5) + '.png';
    
    leafDiv.style.top = "-100px";

  
    leafDiv.style.left = pixelValue(randomInteger(0, 500));
    
   
    var spinAnimationName = (Math.random() < 0.5) ? 'clockwiseSpin' : 'counterclockwiseSpinAndFlip';
    
    
    leafDiv.style.webkitAnimationName = 'fade, drop';
    image.style.webkitAnimationName = spinAnimationName;
    
   
    var fadeAndDropDuration = durationValue(randomFloat(5, 11));
   
    var spinDuration = durationValue(randomFloat(4, 8));
     
    leafDiv.style.webkitAnimationDuration = fadeAndDropDuration + ', ' + fadeAndDropDuration;

    var leafDelay = durationValue(randomFloat(0, 5));
    leafDiv.style.webkitAnimationDelay = leafDelay + ', ' + leafDelay;

    image.style.webkitAnimationDuration = spinDuration;

 
    leafDiv.appendChild(image);
 
    return leafDiv;
}
 
window.addEventListener('load', init, false);

</script>

<!--{if $dhid}-->
<div id="leafContainer"></div>   
</div>
<style>
 #leafContainer 
{
    position:fixed;
    z-index:2;
	width:100%;
    height: 690px;
	top:0;
	overflow:hidden;
}
 #leafContainer > div 
{
    position: absolute;
    max-width: 100px;
    max-height: 100px;
    -webkit-animation-iteration-count: infinite, infinite;
    -webkit-animation-direction: normal, normal;
    -webkit-animation-timing-function: linear, ease-in;
}

#leafContainer > div > img {
     position: absolute;
     width: 100%;
     -webkit-animation-iteration-count: infinite;
     -webkit-animation-direction: alternate;
     -webkit-animation-timing-function: ease-in-out;
     -webkit-transform-origin: 50% -100%;
}

 @-webkit-keyframes fade
{
   
    0%   { opacity: 1; }
    95%  { opacity: 1; }
    100% { opacity: 0; }
}

 @-webkit-keyframes drop
{
       0%   { -webkit-transform: translate(0px, -50px); }
    100% { -webkit-transform: translate(0px, 650px); }
}
 @-webkit-keyframes clockwiseSpin
{
    0%   { -webkit-transform: rotate(-50deg); }
    100% { -webkit-transform: rotate(50deg); }
}
 @-webkit-keyframes counterclockwiseSpinAndFlip 
{
    
    0%   { -webkit-transform: scale(-1, 1) rotate(50deg); }
   
    100% { -webkit-transform: scale(-1, 1) rotate(-50deg); }
}
 </style>

 <!--{/if}-->
<script type="text/javascript">
document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
WeixinJSBridge.call('hideToolbar');
});
</script>
</body></html>