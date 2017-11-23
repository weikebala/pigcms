<?php
//header("Content-type: text/html; charset=utf-8");
ini_set('display_errors', '1');
error_reporting(E_ALL ^ E_NOTICE);


define('APP_NAME', 'cms');
define('ROOT_PATH', __DIR__);
define('CONF_PATH',ROOT_PATH.'/Conf/');
define('TMPL_PATH',ROOT_PATH.'/tpl/');
$GLOBALS['_beginTime'] = microtime(TRUE);
define('MEMORY_LIMIT_ON',function_exists('memory_get_usage'));
define('CORE',__DIR__);
if(MEMORY_LIMIT_ON) $GLOBALS['_startUseMems'] = memory_get_usage();
define('APP_PATH',ROOT_PATH.'/PigCms/');
defined('APP_PATH') 	or define('APP_PATH', dirname($_SERVER['SCRIPT_FILENAME']).'/');
define('RUNTIME_PATH',ROOT_PATH.'/Conf/logs/');
defined('RUNTIME_PATH') or define('RUNTIME_PATH',APP_PATH.'Runtime/');
define('APP_DEBUG',true);
defined('APP_DEBUG') 	or define('APP_DEBUG',false);
define('APP_MODE','cli');
$runtime = defined('MODE_NAME')?'~'.strtolower(MODE_NAME).'_runtime.php':'~runtime.php';
defined('RUNTIME_FILE') or define('RUNTIME_FILE',RUNTIME_PATH.$runtime);
if(!APP_DEBUG && is_file(RUNTIME_FILE)) {
    require RUNTIME_FILE;
}else{
    defined('THINK_PATH') or define('THINK_PATH', dirname(__FILE__).'/');
    require THINK_PATH.'Common/runtime.php';
}
?>