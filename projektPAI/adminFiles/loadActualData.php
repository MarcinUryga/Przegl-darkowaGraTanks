<?php
	
	require_once "Model/adminModel.php";
	require_once "PlayerSettingsMVC/PlayersView.php";
	require_once "TankSettingsMVC/TankView.php";
	require_once "EnemySettingsMVC/EnemiesView.php";



session_start();
	
	$view = $_SESSION["view"];
	$model = $_SESSION["model"];
 
   	$model->setConnection($model->createConnectionWithDataBase()); 
    $view->changableDiv($model->loadDataFromDataBase($_POST['query']));


?>



