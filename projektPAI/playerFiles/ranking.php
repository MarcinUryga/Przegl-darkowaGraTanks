<?php

	require_once "playersStat/playersStatController.php";
	require_once "playersStat/playersStatModel.php";
	require_once "playersStat/playersStatView.php";

	$model = new playersStatModel();
	$playersStatController = new playersStatController();
	$playersStatController->createModel($model);
	$playersStatController->createView(new playersStatView());
	$playersStatController->Render();

?>
