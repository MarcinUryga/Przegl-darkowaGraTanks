<?php
 
    header("Cache-Control: no-store, no-cache, must-revalidate");  
	header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
	header("Pragma: no-cache");

	session_start();

    if(isset($_COOKIE['zalogowany']) && ($_COOKIE['zalogowany'] == true))
    {
        header('Location: playerFiles/game.php');
        exit();
		
    }
?>
 
<!DOCTYPE HTML>
 
<html lang = "pl">
<head>
    <meta charset = "utf-8" />
    <meta http-equiv = "X-UA-Compatible" content = "IE=edge,chrome=1" />
    <title>TANKS</title>
    <meta name = "description" content = "Przegladarkowa gra TANKS" />
    <meta name = "keywords" content = "gra, online, czolg, czolgi, game,tanks,free" />
    <link rel = "stylesheet" href = "style/style.css" type = "text/css" />
    <link rel = "stylesheet" href = "style/military-styles.css" type = "text/css" />
 	<script src="http://cookiealert.sruu.pl/CookieAlert-latest.min.js"></script>
<script>CookieAlert.init();</script>

</head>
 
<body>

    <form action="login.php" method="post">
        <div id="panel">
		
			<div class="zawartosc">
			<h1 style="text-align:center;font-size:48px"> UltraTanks </h1> <br />
				<div class="panel_uzytkownika">
				
					<br /><br /><input type="text" name="login" placeholder="login" id="login" autofocus><br />
					<input type="password" name="password" placeholder="password", id="password"><br />
				
					<?php
						if(isset($_SESSION['blad']))    echo $_SESSION['blad'];
					


						echo "<input type='submit' value='Login' id='submit' class='buttons' button style='display:none'><br />";

					?>
				</div>
				<br /><br />
				<input type='submit' value='LOGIN' id='submit' class='panel-button' button style='display:visible'><br />
				<a href="rejestracja.php" class="panel-button">
					<div style="margin:2%;">CREATE ACCOUNT</div>
				</a>
			</div>
		</div>
	</form>
 
</body>
</html>