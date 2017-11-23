<?php /* Smarty version 2.6.18, created on 2013-11-03 19:08:59
         compiled from tpls/v_20/footer.html */ ?>
<?php if (! $this->_tpl_vars['ismap']): ?><div class="body_footer" style="position:fixed;"><ul>
  <li><a title="返回首页" href="<?php echo $this->_tpl_vars['homeurl']; ?>
"><dl>
        <dt><img alt="返回首页" src="smarty/templates/tpls/<?php echo $this->_tpl_vars['site']['template']; ?>
/icon_1.png"></dt>
        <dd>返回首页</dd>
      </dl></a></li>
  <li><a title="地图" href="?token=<?php echo $this->_tpl_vars['token']; ?>
&m=site&c=home&a=map" rel="external"><dl>
        <dt><img alt="地图" src="smarty/templates/tpls/<?php echo $this->_tpl_vars['site']['template']; ?>
/icon_3.png"></dt>
        <dd>网站地图</dd>
      </dl></a></li>
  <li><a title="热线电话" href="tel:<?php echo $this->_tpl_vars['company']['tel']; ?>
"><dl>
        <dt><img alt="热线电话" src="smarty/templates/tpls/<?php echo $this->_tpl_vars['site']['template']; ?>
/icon_4.png"></dt>
        <dd>热线电话</dd>
      </dl></a></li>
  <li><a title="发短信" href="sms:<?php echo $this->_tpl_vars['company']['mp']; ?>
" data-ajax="false"><dl>
        <dt><img alt="发短信" src="smarty/templates/tpls/<?php echo $this->_tpl_vars['site']['template']; ?>
/icon_5.png"></dt>
        <dd>发短信</dd>
      </dl></a></li>
</ul></div></div></div></div></body><script type="text/javascript">
       <?php echo ' window.onload = function () { initUserStyleData();   modifyAllImage(); }'; ?>

      </script></html><?php endif; ?>