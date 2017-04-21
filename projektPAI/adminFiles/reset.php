<?php

	require_once "Model/adminModel.php";

	session_start();
	
	$view = $_SESSION["view"];
	$model = $_SESSION["model"];
 
   	$model->setConnection($model->createConnectionWithDataBase()); 
    echo $model->resetFieldFromTable($_GET['dataID'], $_GET['dataField'],$_GET['dataTable'],$_GET['fieldWithValue'],$_GET['newValue']);

?>
