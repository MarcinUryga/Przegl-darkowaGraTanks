<?php
	
	include("PlayerSettingsMVC/PlayersController.php");
	include("PlayerSettingsMVC/PlayersView.php");
	include("Model/adminModel.php");

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

	class PlayerSettingsSite{
		
		private $palyerSettingsController = null;
		private $palyerSettingsModel = null;
		private $palyerSettingsView = null;

		public function __construct(){
			$playerC = new PlayersController();
			$playerC->createModel(new adminModel());
			$playerC->createView(new PlayersView($playerC->getModel()->loadDataFromDataBase("SELECT * FROM playersStatView")));
		}
	}

	$PlayerSettingsSite = new PlayerSettingsSite();
?>
