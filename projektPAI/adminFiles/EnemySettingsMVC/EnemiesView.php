<?php
	

	class EnemiesView{

		private $connection = null;

		public function __construct($dataRows){
			$this->displaySite($dataRows);
		}

		public function headPart(){
			echo"	<head>
						<meta http-equiv='Content-type' content='text/html; charset=iso-8859-2' />
			    		<meta charset = 'utf-8' />
			   	 		<title>ADMIN SITE</title>
			    		<meta name = 'description' content = 'Przegladarkowa gra TANKS' />
			    		<meta name = 'keywords' content = 'gra, online, czolg, czolgi, game,tanks,free' />
			    		<link rel = 'stylesheet' href = '../style/style.css' type = 'text/css' />    
						<link href='../style/military-styles.css' rel='stylesheet' type='text/css' />	
			    		<link href='https://fonts.googleapis.com/css?family=Sansita&amp;subset=latin-ext' rel='stylesheet'>
			    		<style>
			    			body{
			    				color: red;
			    				text-align: center;
						    }
						</style>
						<script type='text/javascript' src='https://code.jquery.com/jquery-3.1.1.min.js'></script>
						<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.1.0/jquery-confirm.min.css'>
						<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.1.0/jquery-confirm.min.js'></script>
							
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
								UPLOAD TANK FOR ENEMIES!
							</h1>
							<div> 
							
								<div id='container'>
									
										
										<form enctype='multipart/form-data' method='post' action='EnemySettingsSite.php'>
											<input type='file' size='32' name='plik_upload' value='' style='color:white;'>
											<input type='submit' name='Wyślij'>
										</form>";
										
								

							
			echo"						<div id='listOfTanks'>";
											$this->changableDiv($dataRows);
			echo"						</div>
							
								</div>
							</div>
						</div>
						
			 		</body>";
		}

		public function displaySite($dataRows){
			echo"	<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/html1-transitional.dtd'> 
					 
						<html lang = 'pl'>";
							$this->headPart();

							$this->bodyPart($dataRows);
			echo"		</html>";

		}

		public function changableDiv($dataRows){
			$this->loadForEnemyData($dataRows);
		}

		public function loadForEnemyData($dataRows){
			$resultTab = array();
			$resultTab = $dataRows;
			$counter=0;
			$i=0;
			foreach($resultTab as $value)
				$this->echoEnemyFunction($value, $counter);
		}
		
		public function echoEnemyFunction($row, $counter){
			echo"	<div id =".$row['id_tank']." onkeyup='checkData(this);' style='margin-left:30%; margin-right:30%; margin-top:10%; color:orange; text-shadow:0 0 61px red;'>
						<button type='submit' id='tankButton' class='tanksTile' button style='border: none; margin:3.2%; width:93.6%; height:30%; color:orange;'>
						
							<img src=".$row['tank_location'].$row['tank_name']." alt='Error 404 Not found!' /><br/><br/><br/>
						
						</button>

		 				Shoot delay:	
		 					<input style='width:10%; text-align:center;' type='text' name='ShootDelay' id='ShootDelay' placeholder=".$row['ShootDelay']."> [s]<br/>
								<span id='SDstatus' style='color:red'></span><br/>
		 
		 				Field of view: 
		 					<input style='width:10%; text-align:center;' type='text' name='fieldOfView' id='fieldOfView' placeholder=".$row['field_of_view'].">[km]<br/>
								<span id='FVstatus' style='color:red'></span><br/>
							
						<button class='panel-button' id = 'settings' onclick='saveData(document.getElementById(".$row['id_tank']."))'>SAVE SETTINGS</button><br/>
						<button class='panel-button' onclick='deleteTank(document.getElementById(".$row['id_tank']."))'>DELETE TANK</button>						  
								  
					</div>";
					if((++$counter)%1==0)
					  	echo "<div style='clear:both'></div>";
		}
	
	}

?>