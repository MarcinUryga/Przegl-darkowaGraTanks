<?php

	
	require_once "../connect.php";
	require_once "gameSiteMVC/gameSiteModel.php";
	require_once "gameSiteMVC/gameSiteView.php";
	require_once "gameSiteMVC/gameSiteController.php";


	$gameController = new gameSiteController();
	$gameController->createModel(new gameSiteModel());
	$gameController->createView(new gameSiteView());
	$gameController->Controll();

?>
