<?php
/**
 * Created by PhpStorm.
 * User: lenovo
 * Date: 2017/10/18
 * Time: 9:52
 */
function curlGet($url){
    $ch = curl_init();
    $header = "Accept-Charset: utf-8";
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $temp = curl_exec($ch);
    return $temp;
}
$messageid = $argv[1];
if(empty($messageid)){
    return;
}

$url_get='https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid='.$this->thisWxUser['appid'].'&secret='.$this->thisWxUser['appsecret'];
$json=json_decode(curlGet($url_get));
if ($json->errmsg){
    return;
}
#微信access_token
$postMedia['access_token']=$json->access_token;
#获取模板消息

$template_id = $post['templateid'];
$url = $post['link'];
$data = array(
    'first' => array(
        'value' => $post['first'],
        'color' => '#173177'
    ),
    'keyword2' => array(
        'value' => $post['keyword2'],
        'color' => '#173177'
    ),
    'keyword3' => array(
        'value' => $_SERVER['SERVER_TIME'],
        'color' => '#173177'
    ),
    'remark' => array(
        'value' => $post['remark'],
        'color' => '#173177'
    ),
);
$fans=M('Wechat_group_list')->where(array('token'=>$this->token))->order('id ASC')->select();