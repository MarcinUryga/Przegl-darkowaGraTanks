<?php

	require_once "abstractClassesAndInterfaces/playersViewA.php";

	class playersStatView extends playersViewA{

		public function bodyPart($dataRows){
			
			$this->tableStyle();

			echo"	<body>";
						
						$this->menuDiv("BACK TO GAME", "game.php");		
						
			echo"			<div id='container'>
						
							<h1 class='pageText'>
								<br />PLAYERS RANKING
							</h1>
								<br /> <br />
							<div class='square'>";
								$this->displayTableWithPlayers($dataRows);
			echo"			</div>
						
						</div>

					</body>";

		}

		private function tableStyle(){
			echo"	<style>
						table {
							margin: auto;
						    width: 50%;
						    border-collapse: collapse;
						  	color: white;
						}

						td, th {
						    border: 2px dotted gray;
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
		
					</style>";
		}

		public function loadForPlayerData($dataRows){
			$resultTab = array();
			$resultTab = $dataRows;
			$i=0;
			foreach($resultTab as $value)
				$this->displayListOfPlayers($value);
		}

		public function displayTableWithPlayers($dataRows){
			echo"	<table>
        				<tr>
            				<th>LOGIN</th>
            				<th>SCORE</th>
        				</tr>";

							$this->loadForPlayerData($dataRows);

			echo"	</table>";
		}

		private function displayListOfPlayers($row){
			echo"	<tr>";
			echo"		<th>".$row['login']."</th>";
			echo"		<th>".$row['scores']."</th>";
			echo"	</tr>";
		}

		public function displaySite($dataRows){
			echo"	<!DOCTYPE HTML>

					<html lang = 'pl'>";

						$this->headPart();
						$this->bodyPart($dataRows);

			echo"	</html>";
		}

	}

?>