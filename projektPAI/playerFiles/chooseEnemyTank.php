<?php

	require_once "ChooseTanks/chooseTankController.php";
	require_once "ChooseTanks/chooseEnemy/chooseEnemyTankModel.php";
	require_once "ChooseTanks/chooseTankView.php";
	

	$model = new chooseEnemyTankModel();
	$chooseTankController = new chooseTankController();
	$chooseTankController->createModel($model);
	$chooseTankController->createView(new chooseTankView());
	$chooseTankController->Render($model->returnFieldID());

?>
 
