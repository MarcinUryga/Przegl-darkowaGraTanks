<?php

	class deleteTankAdaptee{

		public function checkAmountOfTanks($connection, $dataID, $dataField, $dataTable){
			$result = $connection->query(sprintf("SELECT COUNT($dataField) AS amountOfTanks FROM $dataTable"));
			$row = $result->fetch_assoc();
			$amountOfTanks = $row['amountOfTanks'];
			if($amountOfTanks<2){
				return false;
			}
			return true;
		}

		public function deleteTankForDataBase($connection, $dataID, $dataField, $dataTable){
			$connection->query("START TRANSACTION");
			if($connection->query(sprintf("UPDATE player SET $dataField = (SELECT $dataField FROM $dataTable ORDER BY $dataField LIMIT 1) WHERE $dataField IN (SELECT $dataField FROM $dataTable WHERE id_tank_name = $dataID);")) 
				
				&& $connection->query(sprintf("DELETE FROM tank_name WHERE id_tank = $dataID"))){
					if($connection->query("COMMIT"))
						echo "Success!";
			}
			else{
				$connection->query("ROLLBACK");
					echo "fail";
			}
		}

		public function deleteTank($connection, $dataID, $dataField, $dataTable){
						
			if(!($this->checkAmountOfTanks($connection, $dataID, $dataField, $dataTable))) 
				echo "You cannot delete all of tanks!";
			
			else $this->deleteTankForDataBase($connection, $dataID, $dataField, $dataTable);
		}
	}

?>
