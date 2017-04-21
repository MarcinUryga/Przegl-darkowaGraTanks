<?php


	session_start();
	header("Cache-Control: no-store, no-cache, must-revalidate");  
	header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
	header("Pragma: no-cache");
	
	if(!isset($_COOKIE['zalogowany']))
	{
		header('Location: ../index.php');
		exit();
	}	

	if(!$_COOKIE['ifAdmin'])
	{
		header('Location: ../adminPANEL.php');
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
    <link href="https://fonts.googleapis.com/css?family=Sansita&amp;subset=latin-ext" rel="stylesheet">

    <style>
    body{
    	color: red;
    	text-align: center;
    }

    .option, #lastOption{
	
		width: 180px;
    	height: 50px;
    }

    </style>
</head>
 
<body>

	<div id="container">
		<h1 class="pageText">
			HELLO ADMIN! <br />
			ADD NEW TANKS AND MAPS!
		</h1>

		<div class="square">

			<?php
				
				

				echo '<h2>LOGGED ADMIN NAME<br /><br /> '.$_COOKIE['login'].' <br /></h2><br />';
				
				echo "<div id='container'>
						<div id='menu' style='margin-left:7.2%;'>

							<a href='adminFiles/PlayerSettingsSite.php' class='tilelink'>
								<div class='option'>
									PLAYERS
								</div>
							</a>

							<a href='adminFiles/TankSettingsSite.php' class='tilelink'>
								<div class='option'>
									UPLOAD PLAYER TANKS
								</div>
							</a>

							<a href='adminFiles/EnemySettingsSite.php' class='tilelink'>
								<div class='option'>
									UPLOAD ENEMY TANKS
								</div>
							</a>

							<a href='logout.php' class='tilelink'>
								<div id='lastOption'>
									LOG OUT
								</div>
							</a>"
						  
			?>
		
		</div>

		
		
	</div>
 
 
</body>
</html>
