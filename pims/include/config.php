<?php

	$db_host = 'localhost';
	$db_user = 'root';
	$db_password = '15345678';
	$db_name = 'pims';
		
	function connect_db()
	{
		global $db_host, $db_user, $db_password, $db_name;
		
		$link = mysql_pconnect($db_host, $db_user, $db_password);
		if (!$link)
			{die('Not Connected : ' . mysql_error());}
		$db_selected = mysql_select_db($db_name, $link);
		
		if (!$db_selected)
			{die ('Error :' . mysql_error());}
		return $link;
	}	
?>		