<?php
	$mysqli = new mysqli("localhost", "root", "password1020", "softwareJerry");

	if ($mysqli->connect_errno) 
	{
	    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
	}
	else
	{
		//echo $mysqli->host_info . "\n";				
	}
?>