<?php
	
	require_once "connect.php";
	mysqli_report(MYSQLI_REPORT_STRICT);

	$connection = new mysqli($host, $db_user, $db_password, $db_name);
	if($connection->connect_errno!=0)
	{
		echo "Error: ".$connection->connect_errno;
	}

	if(!$_POST['HighScore'])
		echo 'Variable HighScore is not set kurwa!';
	else
	{
		$login = $_COOKIE['login'];
		$rezultat = $connection->query(sprintf("SELECT id_user FROM users WHERE login='$login'"));
		$wiersz = $rezultat->fetch_assoc();
		$userID = $wiersz['id_user'];

		$score = $_POST['HighScore'];
		
		if($connection->query(sprintf("UPDATE player SET scores = '$score' WHERE id_user = '$userID'")))
		{
			echo "Zapisano do score_table";
		}
		else
			echo "Nie zapisano do player".$score;
	}	
?>