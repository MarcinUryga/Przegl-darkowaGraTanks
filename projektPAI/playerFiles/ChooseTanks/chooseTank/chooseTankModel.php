<?php

	require_once("abstractClassesAndInterfaces/chooseTankModelA.php");
	require_once "abstractClassesAndInterfaces/playersModelA.php";

	class chooseTankModel extends playersModelA implements chooseTankModelA{

		public function __construct(){
			$this->connection = $this->createConnectionWithDataBase();
			$this->query = "SELECT * FROM Tank_Name WHERE id_tank IN (SELECT id_tank_name FROM tankPlayer)";
			$this->checkIfPlayerIsLogged();
		}

		public function returnFieldID(){
			return 'tankID';
		}


	}

?>
