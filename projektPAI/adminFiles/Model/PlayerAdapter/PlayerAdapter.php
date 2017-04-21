<?php

	require_once "PlayerAdaptee.php";

	class PlayerAdapter extends AbstractDeleteData{
		
		public function __construct($connection, $dataID, $dataField, $dataTable){
			parent::__construct($connection, $dataID, $dataField, $dataTable);
		}

		public function deleteDataFromDataBase(){
			$deletePlayerAdaptee = new PlayerAdaptee();
			$deletePlayerAdaptee->deletePlayer($this->connection, $this->dataID, $this->dataField, $this->dataTable);
		}

	}

?>