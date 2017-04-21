<?php

	abstract class playersViewA{

		final public function headPart(){
			echo"	<head>

						<meta charset = 'utf-8' />
						<meta http-equiv = 'X-UA-Compatible' content = 'IE=edge,chrome=1' />
						<title>TANKS</title>
						<meta name = 'description' content = 'Przegladarkowa gra TANKS' />
						<meta name = 'keywords' content = 'gra, online, czolg, czolgi, game,tanks,free' />
						<link rel='stylesheet' type='text/css' href='..\style\style.css' media='all'>
						<link href='../style/military-styles.css' rel='stylesheet' type='text/css' />
				    	<link href='https://fonts.googleapis.com/css?family=Sansita&amp;subset=latin-ext' rel='stylesheet'>";

			echo"	</head>";
		}

		final public function menuDiv($lastOptionName, $lastOptionHref){
			echo"	<div id='menu'>
						<a href='chooseTank.php' class='tilelink'>
							<div class='option'>
								CHOOSE TANK
							</div>
						</a>
					
						<a href='chooseEnemyTank.php' class='tilelink'>
							<div class='option'>
								CHOOSE ENEMIES
							</div>
						</a>

						<a href='ranking.php' class='tilelink'>
							<div class='option'>
								RANKING
							</div>
						</a>

						<a href=".$lastOptionHref." class='tilelink'>
							<div id='lastOption'>"
								.$lastOptionName."
							</div>
						</a>
					
						<div style='clear:both;'></div>
					
					</div>";

		}	
	}

?>