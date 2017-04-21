<?php

	require_once "abstractClassesAndInterfaces/playersViewA.php";

	class gameSiteView extends playersViewA{

		public function bodyPart($jsGame, $actualScore, $tankPath, $tankEnemyPath, $enemyShootDelay, $enemyFieldOfView){

			echo"	<body>";
						
						$this->menuDiv("LOG OUT", '../logout.php');	

			echo"		<div id='col-L'>
				
							<div class='sb-box'>
								<div class='sb-top'>
									<div class='sb-title'>PLAYER INFO</div>
								</div>
								<div class='sb-filler'>
				
									<div class='sb-info'>
										
										<div><b>WITAJ:</b><br /> ".$_COOKIE['login']."! <br /></div><br />
										<div><b>E-MAIL</b>: ".$_COOKIE['email']."</div><br />
										<div></div>
						
										<div id='userResaults'><b>YOUR HIGHSCORE:</b> <div id='yourHighScore'>".$actualScore."</div> </div>
								
									</div>
				
								</div>
				
								<div class='sb-footer'></div>
							
							</div>
			
							<div class='sb-box'>
								
								<div class='sb-top'>
									<div class='sb-title'>RANKING</div>
								</div>
				
								<div class='sb-filler'>
				
									<div class='sb-info'>
										<div id='Top5'></div>	
									</div>
			
								</div>
				
								<div class='sb-footer'></div>
							
							</div>
			
			

						

							<div id='returnPathToPlayerAsset' style='display:none'>";	echo htmlspecialchars($tankPath);			echo"	</div>
							<div id='returnPathToEnemyAsset' style='display:none'>";	echo htmlspecialchars($tankEnemyPath);		echo"	</div>
							<div id='returnEnemyShootDelay' style='display:none'>";		echo htmlspecialchars($enemyShootDelay);	echo"	</div>
							<div id='returnEnemyFieldOfView' style='display:none'>";	echo htmlspecialchars($enemyFieldOfView);	echo"	</div>

							<div id='returnPlayerLogin' style='display:none'>";			echo htmlspecialchars($_COOKIE['login']); 	echo"	</div>


						</div>
						
						<div id='cnt-box'>
							
							<div id='cnt-top'></div>
							<div id='cnt-filler'>
								<div id='col-R'>
				
					 				<div id='game_panel'>";
			
			echo 						$jsGame;
			
			echo"					</div>
								
								</div>
		
								<div class='clearB' style='height:20px'></div>
		
							</div>
							<div id='cnt-btm'></div>
						
						</div>
																	
					</body>";
							
		}

	}

?>