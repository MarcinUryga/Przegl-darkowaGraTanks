<?php

	require_once "Model/adminModel.php";
	require_once "Model/TanksSettings/enemyModel.php";


	require_once "../connect.php";
	session_start();
	
	$view = $_SESSION["view"];
	$model = $_SESSION["model"];
 	
 	
    $model->setConnection($model->createConnectionWithDataBase()); 
   	$model->setDataModel(new enemyModel());

    $model->getDataModel()->updateEnemySettings($model->createConnectionWithDataBase(), $_GET['tankID'], $_GET['ShootDelay'], $_GET['fieldOfView']);

?>