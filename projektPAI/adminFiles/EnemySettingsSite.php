<?php

	include("EnemySettingsMVC/EnemiesController.php");
	include("EnemySettingsMVC/EnemiesView.php");
	include("Model/adminModel.php");
	require_once "Model/TanksSettings/enemyModel.php";


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

	class EnemySettingsSite{
		
		private $enemySettingsController = null;
		private $enemySettingsModel = null;
		private $enemySettingsView = null;

		public function __construct(){
			$EnemyC = new EnemiesController();
			$EnemyC->createModel(new adminModel(new enemyModel()));
			$EnemyC->createView(new EnemiesView($EnemyC->getModel()->loadDataFromDataBase("SELECT * FROM tankEnemyView")));
		}
	}

	$EnemySettingsSite = new EnemySettingsSite();

?>