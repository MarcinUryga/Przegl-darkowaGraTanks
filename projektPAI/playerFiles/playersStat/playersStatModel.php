<?php

	require_once "abstractClassesAndInterfaces/playersModelA.php";

	class playersStatModel extends playersModelA{

		public function __construct(){
			$this->connection = $this->createConnectionWithDataBase();
			$this->query = "SELECT * FROM playersStatView";
			$this->checkIfPlayerIsLogged();
			
		}

	}

?>