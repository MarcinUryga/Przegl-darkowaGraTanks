<?php

	require_once "ChooseTanks/chooseTankController.php";
	require_once "ChooseTanks/chooseTank/chooseTankModel.php";
	require_once "ChooseTanks/chooseTankView.php";



	$chooseTankController = new chooseTankController();
	$chooseTankController->createModel(new chooseTankModel());
	$chooseTankController->createView(new chooseTankView());
	$chooseTankController->Render();

?>