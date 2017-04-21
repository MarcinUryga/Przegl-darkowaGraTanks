<?php
	
	abstract class AbstractDeleteData
	{
		protected $connection = null;
		protected $dataID = null;
		protected $dataField = null;
		protected $dataTable = null;

		public function __construct($connection, $dataID, $dataField, $dataTable){
			$this->connection = $connection;
			$this->dataID = $dataID;
			$this->dataField = $dataField;
			$this->dataTable = $dataTable;
		}

		abstract public function deleteDataFromDataBase();

	}

?>
