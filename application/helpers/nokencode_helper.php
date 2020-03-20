<?php defined('BASEPATH') or exit('No direct script access allowed');
/**
* Session login 
* @param String
* @return Boolean
*/
function is_logged_in()
{
	$ci =& get_instance();
	if (!$ci->session->userdata('username')) {
		redirect('auth');
	}else{
		$access = $ci->session->userdata('access');
	}
}
/**
* Is a Natural number, but not a zero  (1,2,3, etc.)
* @param String $n
* @return Boolean
*/
if ( ! function_exists('_isNaturalNumber')) {
	function _isNaturalNumber( $n ) {
		return ($n != 0 && ctype_digit((string) $n));
	}
}

/**
* Is Integer
* @param String $n
* @return Boolean
*/
if ( ! function_exists('_toInteger')) {
	function _toInteger( $n ) {
		$n = abs(intval(strval($n)));
		return $n;
	}
}
/**
* Slugify
* @param String
* @return String
*/
if (! function_exists('slugify')) {
	function slugify( $str ) {
		$lettersNumbersSpacesHyphens = '/[^\-\s\pN\pL]+/u';
		$spacesDuplicateHypens = '/[\-\s]+/';
		$str = preg_replace($lettersNumbersSpacesHyphens, '', $str);
		$str = preg_replace($spacesDuplicateHypens, '-', $str);
		$str = trim($str, '-');
		return strtolower($str);
	}
}
/**
* Setting View
* @param String
* @return String
*/
if (! function_exists('setview')) {
	function setview( $str ) {
		$lettersNumbersSpacesHyphens = '/[^\-\s\pN\pL]+/u';
		$spacesDuplicateHypens = '/[\-\s]+/';
		$str = preg_replace($lettersNumbersSpacesHyphens, ' ', $str);
		$str = preg_replace($spacesDuplicateHypens, ' ', $str);
		$str = trim($str, ' ');
		return strtoupper($str);
	}
}
/**
* Limit View Text
* @param String
* @return String
*/
if(!function_exists('viewLimit')){
	function viewLimit($text, $url){
		$string = strip_tags($text);
		if(strlen($string) > 150){
			//truncate string
			$stringCut = substr($string, 0, 150);
			$endPoint = strrpos($stringCut, ' ');
			//if the string doesn't contain space any space then it will cut without word basis
			$string = $endPoint?substr($stringCut, 0, $endPoint):substr($stringCut, 0);
			$string .= '...<a href="'.site_url('post/').$url.'">Read More</a>';
		}
		echo $string;
	}
}
/**
* Timezone List
* @param String
* @return String
*/
if (! function_exists('timezone_list')) {
	function timezone_list() {
		static $regions = array(DateTimeZone::ASIA);
		$timezones = array();
		foreach( $regions as $region ) {
			$timezones = array_merge($timezones, DateTimeZone::listIdentifiers($region));
		}
		$timezone_offsets = array();
		foreach($timezones as $timezone) {
			$tz = new DateTimeZone($timezone);
			$timezone_offsets[$timezone] = $tz->getOffset(new DateTime);
		}
		asort($timezone_offsets);
		$timezone_list = array();
		foreach( $timezone_offsets as $timezone => $offset ) {
			$offset_prefix = $offset < 0 ? '-' : '+';
			$offset_formatted = gmdate( 'H:i', abs($offset) );
			$pretty_offset = "UTC${offset_prefix}${offset_formatted}";
			$timezone_list[$timezone] = "(${pretty_offset}) $timezone";
		}
		return $timezone_list;
	}
}
/**
* Delete Mask Money
* @param String
* @return String
*/
if (! function_exists('delMask')) {
	function delMask( $str ) {
		return (int)implode('',explode('.',$str));
	}
}
/**
* View Format Money
* @param String
* @return String
*/
if (! function_exists('money')) {
	function money( $str ) {
		return number_format($str,0,',','.');
	}
}
/**
* Count
* @param String
* @return Array
*/
if (!function_exists('hitung')){
	function hitung($tb=null,$sts_param=null,$sts=null){
		$CI =& get_instance();
		if($tb=='mahasiswa'){
			if($sts==null||$sts==''){
				return $CI->db->get_where($tb,['status<>'=>'Selesai'])->num_rows();
			}else{
				return $CI->db->get_where($tb,[$sts_param=>$sts,'status<>'=>'Selesai'])->num_rows();
			}
		}else{
			if($sts==null||$sts==''){
				return $CI->db->get($tb)->num_rows();
			}else{
				return $CI->db->get_where($tb,[$sts_param=>$sts])->num_rows();
			}
		}
	}
}
/**
* User
* @param String
* @return Array
*/
if (!function_exists('user')){
	function user(){
		$CI =& get_instance();
		$sql = "select * from users where user_name='".$CI->session->userdata('username')."'";
		return $CI->db->query($sql)->row_array();
	}
}
/**
* Settings
* @param $group, $var
* @return Array
*/
if (!function_exists('settings')){
	function settings($group=null,$var=null){
		$CI =& get_instance();
		$sql = "select setting_value,setting_default from settings where setting_group='".$group."' and setting_variable='".$var."'";
		$data = $CI->db->query($sql)->row_array();
		if($data['setting_value']==null){
			return $data['setting_default'];
		}else{
			return $data['setting_value'];
		}
	}
}
/**
* Setting
* @param $setting_group
* @return Array
*/
if (!function_exists('setting')){
	function setting($setting_group=null){
		$CI =& get_instance();
		return $CI->db->get_where('settings', ['setting_group'=>$setting_group])->result();
	}
}
/**
* Informasi
* @param $norek
* @return Array
*/
if (!function_exists('norek')){
	function norek(){
		$CI =& get_instance();
		return $CI->db->get('rekening')->result();
	}
}
/**
* Get Date and Time Now
*/
if (! function_exists('get_dateTime')) {
	function get_dateTime() {
		$CI = &get_instance();
		$CI->load->helper('date');
		return now('Asia/Jayapura');
	}
}
/**
* Get ID Modal
*/
if (! function_exists('idModal')) {
	function idModal($var='') {
		if($var=='timezone'){
			return 'modal_edit_timezone';
		}elseif($var=='favicon'){
			return 'modal_edit_favicon';
		}else{
			return 'modal_edit';
		}
	}
}