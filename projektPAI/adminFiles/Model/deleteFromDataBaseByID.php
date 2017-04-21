<?php


	require_once "adminModel.php";
	require_once "../PlayerSettingsMVC/PlayersView.php";
	require_once "../TankSettingsMVC/TankView.php";	
	require_once "../EnemySettingsMVC/EnemiesView.php";	


	session_start();
	
	$view = $_SESSION["view"];
	$model = $_SESSION["model"];

   	$model->setConnection($model->createConnectionWithDataBase()); 
    $model->deleteData($_GET['dataID'], $_GET['dataField'], $_GET['dataTable'], $_GET['typeOfData']);


?>