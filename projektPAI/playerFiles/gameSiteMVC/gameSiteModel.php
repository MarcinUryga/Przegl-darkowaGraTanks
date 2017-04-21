<?php

	require_once "abstractClassesAndInterfaces/playersModelA.php";

	class gameSiteModel extends playersModelA{

		private $tankPath = null;
		private $tankEnemyPath = null;
		private $enemyShootDelay = null;
		private $enemyFieldOfView = null;
		private $login = null;
		private $userID = null;
		private $actualScore = 123;


		public function __construct(){
			$this->connection = $this->createConnectionWithDataBase();	
			$this->checkIfPlayerIsLogged();
			$this->login = $_COOKIE['login'];
			$this->getUserID();
			$this->getActualScoreFromDataBase();

			//ustawienei sciezki do czolgu gracza
			if(isset($_POST['tankID']))
				$this->updateTankAsset('id_tank', 'tankPlayer', "{$_POST['tankID']}");
						
			//ustawienei sciezki do czolgu przeciwnika
			if(isset($_POST['tankEnemyID']))
				$this->updateTankAsset('id_enemy', 'tankEnemy', "{$_POST['tankEnemyID']}");

			$this->getTanksAssetLocation();
		}

		public function getActualScore(){
			return $this->actualScore;
		}
		
		public function getTankPath(){
			return $this->tankPath;
		}

		public function getTankEnemyPath(){
			return $this->tankEnemyPath;
		}

		public function getEnemyShootDelay(){
			return $this->enemyShootDelay;
		}

		public function getEnemyFieldOfView(){
			return $this->enemyFieldOfView;
		}

		public function getUserID(){
			$rezultat = $this->connection->query(sprintf("SELECT getPlayerID('$this->login') AS ID;"));
			$wiersz = $rezultat->fetch_assoc();
			$this->userID = $wiersz["ID"];
		}

		public function getActualScoreFromDataBase(){
			$rezultat = $this->connection->query(sprintf("SELECT scores FROM player WHERE id_user='$this->userID'"));
			$wiersz = $rezultat->fetch_assoc();
			$this->actualScore = $wiersz['scores'];
		}

		function updateTankAsset($assetID, $assetTable, $newAssetID){
			$this->connection->query(sprintf("UPDATE player SET $assetID = (SELECT $assetID FROM $assetTable WHERE id_tank_name = $newAssetID) WHERE id_user = '$this->userID';"));
		}

		function getTanksAssetLocation(){
			$this->connection ->query(sprintf("CALL allPlayersSettings ('$this->login', @player, @enemy, @enemyShootDelay, @enemyFieldOfView);"));
			$rezultat = $this->connection ->query(sprintf("SELECT @player, @enemy, @enemyShootDelay, @enemyFieldOfView;"));
					
			$wiersz = $rezultat->fetch_assoc();

			$this->tankPath = $wiersz['@player'];
			$this->tankEnemyPath = $wiersz['@enemy'];

			$this->enemyShootDelay = $wiersz['@enemyShootDelay'];
			$this->enemyFieldOfView = $wiersz['@enemyFieldOfView'];
		}

	}
	
?>