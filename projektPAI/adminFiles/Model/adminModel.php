<?php
	
	require_once "AbstractDeleteData.php";
	require_once "PlayerAdapter/PlayerAdapter.php";
	require_once "TanksSettings/TanksAdapter/deleteTankAdapter.php";	

	mysqli_report(MYSQLI_REPORT_STRICT);
	
	class adminModel{

		private $connection = null;

		private $deleteData = null;
		private $dataModel = null;

		public function __construct($dataModel = null){
			$this->connection = $this->createConnectionWithDataBase();	
			$this->dataModel = $dataModel;
		}

		public function setConnection($con){
			$this->connection = $con;
		}

		public function setDataModel($dataModel){
			$this->dataModel = $dataModel;
		}

		public function getDataModel(){
			return $this->dataModel;
		}

		public function createConnectionWithDataBase(){
				$connection = new mysqli("localhost", "root", "", "ultratanksdatabase");
				if($connection->connect_errno!=0)
				{
					echo "Error: ".$connection->connect_errno;
					return $connection->connect_errno;
				}
				return $connection;
		}

		public function deleteData($dataID, $dataField, $dataTable, $typeOfData){
			if($typeOfData == "tanks"){
				$deleteData = new deleteTankAdapter($this->connection, $dataID, $dataField, $dataTable);
				$deleteData->deleteDataFromDataBase();
			}
		
			else if($typeOfData == "player"){
				$deleteData = new PlayerAdapter($this->connection, $dataID, $dataField, $dataTable);
				$deleteData->deleteDataFromDataBase();
			}
		}

		public function resetFieldFromTable($dataID, $dataField, $dataTable, $fieldWithValue, $newValue){
			if($this->connection->query(sprintf("UPDATE $dataTable SET $fieldWithValue = $newValue WHERE $dataField = $dataID")))
				return "Success!";
			return "fail";
		}

		public function loadDataFromDataBase($query){
			$resultTab = array(); 
			$i=0;
			$result = $this->connection->query(sprintf($query));
			while($row = $result->fetch_assoc()){
				$resultTab[$i++] = $row;
			}
			return $resultTab;
		}


		public function uploadAsset(){
			$uploadResult = "";
			if(isset($_FILES['plik_upload'])){
				$f = $_FILES['plik_upload'];
				IF($f['type'] == 'image/png' or $f['type'] == 'image/png' or $f['type'] == 'image/gif')
				{
					$x = getimagesize($f['tmp_name']);
					IF(!is_array($x) or $x[0] < 2)
					{
						die('Zły plik graficzny');
					}

					$uploadResult = $this->dataModel->insertNewAssetToDataBase($this->connection, $f);
					
				}
				else{
					$uploadResult = "Niedozwolony plik";
				}
			}
			return $uploadResult;	
		}

	}
	
?>