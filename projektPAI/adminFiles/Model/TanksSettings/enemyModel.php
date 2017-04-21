<?php

	include("uploadAsset.php");

	class enemyModel implements uploadAsset{


		public function __construct(){
		}

		public function insertNewAssetToDataBase($connection, $f){
			$fileName = $f['name'];
			$location = "../enemyTankSprites/";
			$ifFileExist = false;

			$rezultat = $connection->query(sprintf("SELECT tank_name FROM Tank_Name"));
			while($wiersz = $rezultat->fetch_assoc())
			if($wiersz['tank_name'] == $fileName)
			$ifFileExist = true;					
										
			if(!$ifFileExist)
			{						
				$shootDelay = rand(1,10);
				$fieldOfView = rand(1,10);
				$connection->query("START TRANSACTION");
				if ($connection->query("INSERT INTO Tank_Name VALUES(NULL, '$fileName', '$location')") &&
					$connection->query("INSERT INTO tankEnemy VALUES (NULL, LAST_INSERT_ID(), '$shootDelay', '$fieldOfView')"))
				{
					$connection->query("COMMIT");
					move_uploaded_file($f['tmp_name'], $location.$f['name']);
					echo "Dodano do bazy: ".$fileName;
				}
				else	return new Exception($connection->error);
			}

			else	echo "Plik o podanej nazwie istnieje już w bazie danych!";
		}

		public function updateEnemySettings($connection, $enemyId, $ShootDelay, $fieldOfView){
			if($connection->query(sprintf("UPDATE tankenemy SET ShootDelay = '$ShootDelay', field_of_view = '$fieldOfView' WHERE id_tank_name = '$enemyId'")))
				return "Success!";
			return "fail";
		}

	}

?>