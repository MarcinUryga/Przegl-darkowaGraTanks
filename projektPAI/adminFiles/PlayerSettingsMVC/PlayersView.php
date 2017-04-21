<?php

	if(!$_COOKIE['ifAdmin'])
	{
		header('Location: ../index.php');
		exit();
	}


	class PlayersView{

		public function __construct($dataRows){
			$this->displaySite($dataRows);
		}

		public function headPart(){
			echo"	<head>
					    <meta charset = 'utf-8' />
					    <meta http-equiv = 'X-UA-Compatible' content = 'IE=edge,chrome=1' />
					    <title>ADMIN SITE</title>
					    <meta name = 'description' content = 'Przegladarkowa gra TANKS' />
					    <meta name = 'keywords' content = 'gra, online, czolg, czolgi, game,tanks,free' />
					    <link rel = 'stylesheet' href = '../style/style.css' type = 'text/css' />   
<link href='../style/military-styles.css' rel='stylesheet' type='text/css' />						
					    <link href='https://fonts.googleapis.com/css?family=Sansita&amp;subset=latin-ext' rel='stylesheet'>

					    <script type='text/javascript' src='https://code.jquery.com/jquery-3.1.1.min.js'></script>
						<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.1.0/jquery-confirm.min.css'>
						<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.1.0/jquery-confirm.min.js'></script>
						    

					    <style>
							table {
								margin: auto;
							    width: 100%;
							    border-collapse: collapse;
							  	color: white;
							}

							td, th {
							    border: 4px dotted gray;
							    padding: 5%;
							    margin:auto;
							  	text-align: center;
							}

							tr:nth-child(2n){
							  	background-color: #666666;
							}

							tr:nth-child(2n+1){
							  	background-color: #333333;
							}

							tr:hover{
							  	background-color: #666633;
							}
						
						</style>

					</head>";
		}

		public function bodyPart($dataRows){
			echo"	<body>
			<div id='menu'>

							<a href='PlayerSettingsSite.php' class='tilelink'>
								<div class='option'>
									PLAYERS
								</div>
							</a>

							<a href='TankSettingsSite.php' class='tilelink'>
								<div class='option'>
									UPLOAD PLAYER TANKS
								</div>
							</a>

							<a href='EnemySettingsSite.php' class='tilelink'>
								<div class='option'>
									UPLOAD ENEMY TANKS
								</div>
							</a>

							<a href='../logout.php' class='tilelink'>
								<div id='lastOption'>
									LOG OUT
								</div>
							</a></div>
						<div id='container'>
							<h1 class='pageText'>
								EDIT PLAYERS
							</h1>";
							$this->changableDiv($dataRows);
			echo"		</div>		 
					</body>";
		
		}

		public function displaySite($dataRows){
			echo "<!DOCTYPE HTML>
 
					<html lang = 'pl'>";
						$this->headPart();

						$this->bodyPart($dataRows);
							 
			echo"	</html>";
									
		}			
		
		public function changableDiv($dataRows){
			echo"	<div class='square'>
				
						<table>
							<tr>
								<th>Login</th>
					    		<th>Score</th>
				         		<th>Reset Players settings</th>
				           		<th>Delete player</th>
					        </tr>";
				
								$this->loadForPlayerData($dataRows);
									
									
			echo"		</table>
									
					</div>";
						
		}

		public function echoPlayerFunction($row){
			echo "<tr id = ".$row['id_user'].">";
			echo "<th id = ".$row['login'].">".$row['login']."</th>";
			echo "<th>".$row['scores']."</th>";
			echo "<th><button class='panel-button' onclick='resetPlayersScore(document.getElementById(".$row['id_user']."), ".$row['login'].")'>Reset</button></th>";
			echo "<th><button class='panel-button' onclick='deletePlayer(document.getElementById(".$row['id_user']."), ".$row['login'].")'>Delete</button></th>";
			echo "</tr>";

		}


		public function loadForPlayerData($dataRows){
			$resultTab = array();
			$resultTab = $dataRows;
			$i=0;
			foreach($resultTab as $value)
				$this->echoPlayerFunction($value);
		}
	}

?>