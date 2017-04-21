<?php

	require_once "abstractClassesAndInterfaces/playersViewA.php";

	class chooseTankView extends playersViewA{
		
		public function bodyPart($idField, $dataRows){
			
			echo"	<body>";
						
						$this->menuDiv("BACK TO GAME", "game.php");		
						
			echo"		<div id='container'><br /><br />
							
							<h1 class='pageText'>
								CHOOSE TANK TO PLAY
							</h1>

							<div class='square'>";

								$this->loadForTankData($idField, $dataRows);

			echo"			</div>
		
						</div>
 
					</body>";

		}

		public function loadForTankData($idField, $dataRows){
			$resultTab = array();
			$resultTab = $dataRows;
			$counter=0;
			$i=0;
			foreach($resultTab as $value)
				$this->displayListOfTanks($idField, $value, $counter);
		}

		private function displayListOfTanks($idField, $row, $counter){
			echo"	<form action = 'game.php' method='post'>
						<input name = ".$idField." value=".$row['id_tank']." style='display:none'/>	
						<button type='submit' id='tankButton' class='tanksTile' button style='border: none; color:orange; text-shadow:0 0 6px black;'>
							<img src=".$row['tank_location'].$row['tank_name']." alt='Error 404 Not found!' /><br/>";
							if(isset($row['ShootDelay']) && isset($row['field_of_view'])){
							echo"	Shoot delay: ".$row['ShootDelay']." [s]<br/>
									Field Of View: ".$row['field_of_view']." [km]<br/>";
							}
			echo"		</button>
					</form>";

					if((++$counter)%4==0)
	  		echo"		<div style='clear:both'></div>";
		}

		public function displaySite($idField, $dataRows){
			echo"	<!DOCTYPE HTML>

					<html lang = 'pl'>";

						$this->headPart();
						$this->bodyPart($idField, $dataRows);

			echo"	</html>";
		}


	}

?>