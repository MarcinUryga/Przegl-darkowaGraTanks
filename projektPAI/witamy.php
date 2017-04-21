<?php
 
    session_start();
     
    if(!isset($_SESSION['udanarejestracja']))
    {
		header('Location: index.php');
        exit();
    }
	else
	{
		unset($_SESSION['udanarejestracja']);
	}
	
?>
 
<!DOCTYPE HTML>
 
<html lang = "pl">
<head>
    <meta charset = 'utf-8' />
	<meta http-equiv = 'X-UA-Compatible' content = 'IE=edge,chrome=1' />
	<title>TANKS</title>
	<meta name = 'description' content = 'Przegladarkowa gra TANKS' />
	<meta name = 'keywords' content = 'gra, online, czolg, czolgi, game,tanks,free' />
	<link rel='stylesheet' type='text/css' href='style\style.css' media='all'>
	<link href='style/military-styles.css' rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Sansita&amp;subset=latin-ext' rel='stylesheet'>
</head>
 
<body>
 
	<br /><br /><br /><br />
	 <div id="panel"><br />
		<div class="zawartosc">
		<div class="panel_uzytkownika">
			<br />
			<p id="font1" style="margin-left:5%;margin-right:5%; color:black;">Dziekujemy za rejestracje w serwisie! Mozesz juz zalogowac sie na swoje konto!</p><br />
		</div><br />
		<a href="index.php" class="panel-button">
					<div style="margin:2%;" id="font1">ZALOGUJ SIĘ NA SWOJE KONTO!</div>
				</a>
		</div>
	</div>
	</div>
	
</body>
</html>