<?php

	//session_start();
	header("Cache-Control: no-store, no-cache, must-revalidate");  
	header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
	header("Pragma: no-cache");
	//session_unset();
	setcookie("login", '', time()-1); unset($_COOKIE['login']);
	setcookie("zalogowany", false);
	
	header('Location: index.php');

?>