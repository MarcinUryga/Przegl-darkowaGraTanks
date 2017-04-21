<?php

    require_once "playersStat/playersStatController.php";
    require_once "playersStat/playersStatModel.php";
    require_once "playersStat/playersStatView.php";

    $amountOfPlayers = intval($_GET['q']);

    $playersStatController = new playersStatController();
    $playersStatController->createModel(new playersStatModel());
    $playersStatController->createView(new playersStatView());
    $playersStatController->RenderOnlyTable($amountOfPlayers);

?>
