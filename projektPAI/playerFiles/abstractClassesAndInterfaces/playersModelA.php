<?php

	abstract class playersModelA{

		protected $query=null;
		protected $connection = null;


		final public function createConnectionWithDataBase(){
			$connection = new mysqli("localhost", "root", "", "ultratanksdatabase");
			if($connection->connect_errno!=0){
				echo "Error: ".$connection->connect_errno;
				return $connection->connect_errno;
			}
			return $connection;
		}

		final public function loadDataFromDataBase($amountOfRows = null){
			$resultTab = array(); 
			$i=0;
			$result = $this->connection->query(sprintf($this->query));
			while($row = $result->fetch_assoc()){
				$resultTab[$i++] = $row;
				if($amountOfRows != null && $i>=$amountOfRows)
					break;
			}
			return $resultTab;
		}

		final public function checkIfPlayerIsLogged(){
			session_start();
			header("Cache-Control: no-store, no-cache, must-revalidate");  
			header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
			header("Pragma: no-cache");
	
			if(!isset($_COOKIE['zalogowany'])){
				header('Location: ../index.php');
				exit();
			}	

			if($_COOKIE['ifAdmin']){
				header('Location: ../adminPANEL.php');
				exit();	
			}
		}

	}

?>