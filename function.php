<?php
function curl($url, $user_agent, $head, $follow, $hdrs, $data)
{
	if (isset($user_agent))
	{ 
	    $user_agent1 = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0"; 
	} else {
	    $user_agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0";
	}
    $ch = curl_init();
    curl_setopt($ch,CURLOPT_URL,$url);
    curl_setopt($ch, CURLOPT_USERAGENT, $user_agent);
    curl_setopt($ch, CURLOPT_HEADER, $head);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, $follow); 
    	if (isset($hdrs))
	{ 
	    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	    curl_setopt($ch, CURLOPT_HTTPHEADER, $hdrs); 
	} else {
	    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	}
	if (isset($data))
	{ 
	    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
	    curl_setopt($ch, CURLOPT_POST, true);
	    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	} else {
	    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
	}
    return curl_exec($ch);
}
