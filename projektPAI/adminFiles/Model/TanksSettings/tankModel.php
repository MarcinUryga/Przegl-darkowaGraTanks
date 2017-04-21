<?php
	
	include("uploadAsset.php");

	class tankModel implements uploadAsset{
		public function insertNewAssetToDataBase($connection, $f){
			$fileName = $f['name'];
					$location = "../playerTankSprites/";
					$ifFileExist = false;

					$rezultat = $connection->query(sprintf("SELECT tank_name FROM Tank_Name"));
					while($wiersz = $rezultat->fetch_assoc())
					if($wiersz['tank_name'] == $fileName)
					$ifFileExist = true;					

												
					if(!$ifFileExist)
					{							
						$connection->query("START TRANSACTION");
						if ($connection->query("INSERT INTO Tank_Name VALUES(NULL, '$fileName', '$location')") &&
							$connection->query("INSERT INTO tankPlayer VALUES (NULL, LAST_INSERT_ID())"))
						{
							$connection->query("COMMIT");
							move_uploaded_file($f['tmp_name'], $location.$f['name']);
							echo "Dodano do bazy: ".$fileName;
						}
						else	return new Exception($connection->error);
					}
					
					else	echo "Plik o podanej nazwie istnieje już w bazie danych!";
		}

	}

?>