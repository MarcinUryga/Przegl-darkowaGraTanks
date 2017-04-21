<?php

	require_once "deleteTankAdaptee.php";

	class deleteTankAdapter extends AbstractDeleteData{
		
		public function __construct($connection, $dataID, $dataField, $dataTable){
			parent::__construct($connection, $dataID, $dataField, $dataTable);
		}

		public function deleteDataFromDataBase(){
			$deleteTankAdaptee = new deleteTankAdaptee();
			$deleteTankAdaptee->deleteTank($this->connection, $this->dataID, $this->dataField, $this->dataTable);
		}

	}

?>