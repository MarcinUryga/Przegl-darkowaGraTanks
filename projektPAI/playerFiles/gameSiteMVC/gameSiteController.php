<?php

	include("../adminFiles/subsitesControllerI.php");

	echo '<?xml version="1.0" encoding="iso-8859-2"?>'; 
	
	class gameSiteController implements subsitesControllerI{

		private $gameSiteView = null;
		private $gameSiteModel = null;


		public function __construct(){
		//	$this->controll();
		}

		public function createView($view){
			$this->gameSiteView = $view;
		}

		public function createModel($model){
			$this->gameSiteModel = $model;
		}

		public function getModel(){
			return $this->gameSiteModel;			
		}

		private function showTopRankFunction(){
			echo"	function showTopRank(dataFile, div, amountOfBestPlayers){
						
						try{
							if (window.XMLHttpRequest) 
							{
						    	// code for IE7+, Firefox, Chrome, Opera, Safari
						    	xmlhttp = new XMLHttpRequest();
						    } 
						    else 
						    {
					 	       // code for IE6, IE5
							    xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
						    }
						    xmlhttp.onreadystatechange = function() {
							    if (this.readyState == 4 && this.status == 200) {
							        document.getElementById(div).innerHTML = this.responseText;
							    }
							};
						
							xmlhttp.timeout = 4000;
						    xmlhttp.open('GET', dataFile+'?q='+amountOfBestPlayers, true);
						    xmlhttp.send(null);
						}catch(e){
							alert(e.message);
						}
					}";
		}

		private function refreshAjaxDiv(){
			echo"	function odswiezaj(){
						showTopRank('getBestPlayers.php', 'Top5', 5);
						setTimeout('odswiezaj()', 1000);
					}";

		}

		private function loadJsScipts(){
			echo"	<script src = 'js/phaser.js'></script>
					<script src = 'js/Boot.js'></script>
					<script src = 'js/Preloader.js'></script>
					<script src = 'js/MainMenu.js'></script>
					<script src = 'js/Level1.js'></script>
					<script src = 'js/GameOver.js'></script>

					<script type='text/javascript' src='https://code.jquery.com/jquery-3.1.1.min.js'></script>

					<script language=javascript>";

						$this->showTopRankFunction();
						$this->refreshAjaxDiv();	

			echo"		odswiezaj();

					</script>";
	
		}

		private function jsGameFunction(){
			echo"	<script type = 'text/javascript'>
							window.onload = function()
							{	
								var amountOfPlayers = 5;
								jQuery(document).ready(function() {

									var tankPATH =  $('#returnPathToPlayerAsset').text();
									var tankEnemyPath = $('#returnPathToEnemyAsset').text();

									var enemyShootDelay = $('#returnEnemyShootDelay').text();
									var enemyFieldOfView = $('#returnEnemyFieldOfView').text();
									var login = $('#returnPlayerLogin').text();
									
									var height = document.getElementById('game_panel').clientHeight;

									var width = document.getElementById('game_panel').clientWidth;

									var game = new Phaser.Game(width, height, Phaser.AUTO, 'game_panel');	
									game.state.add('Boot', Game.Boot);
									game.state.add('Preloader', Game.Preloader);
									game.state.add('MainMenu', Game.MainMenu);
									game.state.add('Level1', Game.Level1);
									game.state.add('GameOver', Game.GameOver);

									
									game.state.start('Boot', true, false, tankPATH, tankEnemyPath, login, enemyShootDelay, enemyFieldOfView);

								});
								
							};
						</script>
						<noscript>
							<div style='border: 1px solid yellow; padding: 10px; background:red;'>
        						<h1 style='color:white; text-align:center; font-size:48px;'>
        							Your browser does not support JavaScrip so you can not join to the game! Please turn on JS!
        						</h1>
      						</div>
						</noscript>";
		}


		public function Controll(){

			echo"	<!DOCTYPE HTML>

					<html lang = 'pl'>";

						$this->gameSiteView->headPart();
						$this->loadJsScipts();
						
						$this->gameSiteView->bodyPart($this->jsGameFunction(), $this->gameSiteModel->getActualScore(), $this->gameSiteModel->getTankPath(), $this->gameSiteModel->getTankEnemyPath(), $this->gameSiteModel->getEnemyShootDelay(), $this->gameSiteModel->getEnemyFieldOfView());

			echo"	</html>";
		}

	}	

			    
?>