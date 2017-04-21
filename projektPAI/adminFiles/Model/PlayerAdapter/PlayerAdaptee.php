<?php

	class PlayerAdaptee{

		public function deletePlayerFromDataBase($connection, $dataID, $dataField, $dataTable){
			
			if($connection->query(sprintf("DELETE FROM $dataTable WHERE $dataField = $dataID")))
					echo "Success!";
			else echo "fail";
		}

		public function deletePlayer($connection, $dataID, $dataField, $dataTable){
			$this->deletePlayerFromDataBase($connection, $dataID, $dataField, $dataTable);
		}

	}

?>
