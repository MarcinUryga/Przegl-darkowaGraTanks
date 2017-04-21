<?php

	include("TankSettingsMVC/TankController.php");
	include("TankSettingsMVC/TankView.php");
	include("Model/adminModel.php");
	require_once "Model/TanksSettings/tankModel.php";

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


	class TankSettingsSite{
		
		private $tankSettingsController = null;
		private $tankSettingsModel = null;
		private $tankSettingsView = null;

		public function __construct(){
			$tankC = new TankController();
			$tankC->createModel(new adminModel(new tankModel()));
			$tankC->createView(new TankView($tankC->getModel()->loadDataFromDataBase("SELECT * FROM Tank_Name WHERE id_tank IN (SELECT id_tank_name FROM tankPlayer)")));
		}
	}

	$tankSettingsSite = new TankSettingsSite();

?>