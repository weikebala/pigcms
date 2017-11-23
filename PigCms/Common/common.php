<?php
function isAndroid(){
	if(strstr($_SERVER['HTTP_USER_AGENT'],'Android')) {
		return 1;
	}
	return 0;
}
/**
 * 调试函数
 */
function debug($param){
    header("content-type:text/html;charset=utf-8");
    echo "<pre>";
    print_r($param);
    echo "</pre>";
    exit;
}
/**
 * 从美购正式版中同步微信access——token
 */
function get_access_token(){
    $url = 'http://www.meilianmeigou.com/Interfaces/Tool/getAccessToken';
    $data = https_request($url);
    return $data['data']['access_token'];
}
/**
 * 发送https请求
 * @param <string> $url 地址
 * @param <mixed> $post_data post数据
 * @return <mixed>
 */
function https_request($url, $post_data = null) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    if(!empty($post_data)){
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
    }
    $response = json_decode(curl_exec($ch), true);
    curl_close($ch);
    if(is_array($response) && count($response)) {
        return $response;
    } else {
        return false;
    }
}
?>