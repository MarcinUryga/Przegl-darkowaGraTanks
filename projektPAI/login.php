<?php

	
	header("Cache-Control: no-store, no-cache, must-revalidate");  
	header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
	header("Pragma: no-cache");
	
	//require_once "connect.php";

	session_start();
	
	require_once "connect.php";
	mysqli_report(MYSQLI_REPORT_STRICT);

	$connection = new mysqli($host, $db_user, $db_password, $db_name);
	if($connection->connect_errno!=0)
	{
		echo "Error: ".$connection->connect_errno;
	}
	else
	{

		$ifAdmin = false;

		$login = $_POST['login'];
		$haslo = $_POST['password'];
		
		$login = htmlentities($login, ENT_QUOTES, "UTF-8");
		$haslo = htmlentities($haslo, ENT_QUOTES, "UTF-8");
		

		if($rezultat = $connection->query(sprintf("SELECT * FROM users WHERE login='%s'", mysqli_real_escape_string($connection, $login))))
		{			 
			$ilu_uzytwkownikow = $rezultat->num_rows;
			if($ilu_uzytwkownikow>0)
			{
		
				$wiersz = $rezultat->fetch_assoc();

				if(!strcmp(sha1($wiersz['salt'].$haslo), $wiersz['password']))
				{

					$IP=$_SERVER['REMOTE_ADDR'];
					$przegladarka= $_SERVER['HTTP_USER_AGENT'];
					$connection->query(sprintf("INSERT INTO history_log VALUES(NuLL, '$login', '$IP', CURRENT_TIMESTAMP(), '$przegladarka')"));
			
					setcookie("zalogowany", true, time() + 3600);
					
					setcookie("id", $wiersz['id'], time() + 3600);

			
					setcookie("login", $wiersz['login'], time() + 3600);

			
					setcookie("email", $wiersz['email'], time() + 3600);

					setcookie("ifAdmin", $wiersz['ifAdmin'], time() + 3600);
					
					if($wiersz['ifAdmin']==1)
						$ifAdmin = true;
					

					unset($_SESSION['blad']);
					$rezultat->free_result();
					
					if($ifAdmin) header('Location: adminPANEL.php');
					if(!$ifAdmin) header('Location: playerFiles/game.php');
			}
			else
			{
				$_SESSION['blad'] = '<center><span style=color:red;">Nieprawidłowe haslo!</span></center>';
				header('Location: index.php');
			}
		}
		else
		{
			$_SESSION['blad'] = '<center><span style=color:red;">Nieprawidłowy login!</span></center>';
			header('Location: index.php');
		}
	}
	$connection->close();
	}
?>
