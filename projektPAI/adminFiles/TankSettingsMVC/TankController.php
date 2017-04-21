<?php

	include("subsitesControllerI.php");

	echo '<?xml version="1.0" encoding="iso-8859-2"?>'; 
	
	class TankController implements subsitesControllerI{

		private $tankSiteView = null;
		private $tankSiteModel = null;

		public function __construct(){
			$this->controll();
		}

		public function createView($view){
			$this->tankSiteView = $view;
			$_SESSION["view"] = $this->tankSiteView;
		}

		public function createModel($model){
			$this->tankSiteModel = $model;
   			$this->tankSiteModel->setConnection($model->createConnectionWithDataBase()); 
			$this->tankSiteModel->uploadAsset();
   			
			$_SESSION["model"] = $this->tankSiteModel;
		}

		public function getModel(){
			return $this->tankSiteModel;			
		}

		public function deleteTank(){
			echo "	function deleteTank(tank){
						$.confirm({
	    					boxWidth: '30%',
	    					useBootstrap: false,
	   						title: 'Confirm!',
	    					content: 'Do you want to delete this tank?',
	    					buttons: {
	        					YES: function () {
									jQuery(document).ready(function(){
						
								   		$.get('Model/deleteFromDataBaseByID.php',{
						  					dataID: $(tank).attr('id'),
							 				dataField: 'id_tank',
							 				dataTable: 'tankPlayer',
							 				typeOfData: 'tanks'
						  				},
						  	
						  				function(result, status){
					  						$.alert({
					  							//boxWidth: '30%',
    											//useBootstrap: false,
   												title: '',
    											content: result
					  						});
							  			if(result == 'Success!')
				  							$('#listOfTanks').load('loadActualData.php', {
				  								query: 'SELECT * FROM Tank_Name WHERE id_tank IN (SELECT id_tank_name FROM tankPlayer)'
				  							});					  				
							  			});
				  						$('#listOfTanks').load('loadActualData.php', {
				  								query: 'SELECT * FROM Tank_Name WHERE id_tank IN (SELECT id_tank_name FROM tankPlayer)'
				  							});
									});
								},
		        				NO: function () {
		       					},
		        			}
						});	
					}";
		}
		
		public function controll(){
			echo "<script>";
				$this->deleteTank();
	    	echo "</script>";
		}
	}	

			    
?>