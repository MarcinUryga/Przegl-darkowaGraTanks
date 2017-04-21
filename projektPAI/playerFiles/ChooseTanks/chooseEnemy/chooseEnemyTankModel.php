<?php
	
	require_once("abstractClassesAndInterfaces/chooseTankModelA.php");
	require_once "abstractClassesAndInterfaces/playersModelA.php";
	

	class chooseEnemyTankModel  extends playersModelA implements chooseTankModelA{
		
		public function __construct(){
			$this->connection = $this->createConnectionWithDataBase();
			$this->query = "SELECT * FROM tankenemyview";
			$this->checkIfPlayerIsLogged();
		}

		public function returnFieldID(){
			return 'tankEnemyID';
		}

	}

?>