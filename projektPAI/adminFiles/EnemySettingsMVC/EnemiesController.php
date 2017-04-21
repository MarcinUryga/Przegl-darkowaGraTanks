<?php

	include("subsitesControllerI.php");

	echo '<?xml version="1.0" encoding="iso-8859-2"?>'; 
	
	class EnemiesController  implements subsitesControllerI{

		private $enemySiteView = null;
		private $enemySiteModel = null;

		public function __construct(){
			$this->controll();
	//		session_start();
		}

		public function createView($view){
			$this->enemySiteView = $view;
			$_SESSION["view"] = $this->enemySiteView;
		}

		public function createModel($model){
			$this->enemySiteModel = $model;
   			$this->enemySiteModel->setConnection($model->createConnectionWithDataBase()); 
			$this->enemySiteModel->uploadAsset();
   			
			$_SESSION["model"] = $this->enemySiteModel;
		}

		public function getModel(){
			return $this->enemySiteModel;			
		}

		public function confirmData(){
			echo"	function confirmData(data, status){
						if($.isNumeric(data)){
							$(status).text('OK');
							return true;
						}

						else{
							$(status).text('This variable has to be a number!');
							return false;
						}
					}";
		}

		public function checkRangeOfNumber(){
			echo "	function checkRangeOfNumber(data, downBoundary, upBoundary, status){
					
						if(data < downBoundary){
							$(status).text('This variable is to small!');
							return false;
						}

						else if(data > upBoundary){
							$(status).text('This variable is too big!');
							return false;
						}

						$(status).text('OK');
						return true;
					}";
		}

		public function checkData(){
			$this->confirmData();
			$this->checkRangeOfNumber();
			echo "	function checkData(enemy){
						var id = $(enemy).attr('id');
						var ShootDelay = $('#'+$(enemy).attr('id')+'> input#ShootDelay').val();
						var fieldOfView = $('#'+$(enemy).attr('id')+'> input#fieldOfView').val();
					
						var SDstatus = $('#'+$(enemy).attr('id')+'> span#SDstatus');
						var FVstatus = $('#'+$(enemy).attr('id')+'> span#FVstatus');


						if(confirmData(ShootDelay, SDstatus) && confirmData(fieldOfView, FVstatus)
							&& checkRangeOfNumber(ShootDelay,1, 10, SDstatus) && checkRangeOfNumber(fieldOfView, 1, 10, FVstatus))
							return true;
					}";
		}

		public function saveData(){
			$this->checkData();
			echo "	function saveData(enemy){
						$.confirm({
			    			boxWidth: '30%',
			    			useBootstrap: false,
			   				title: 'Confirm!',
			    			content: 'Would you like to save new settins for this tank?',
			    			buttons: {
			        			YES: function () {
									jQuery(document).ready(function(){			
										if($('#'+$(enemy).attr('id')+'> span#FVstatus').text() == 'OK' && $('#'+$(enemy).attr('id')+'> span#SDstatus').text() == 'OK')
												
									   	$.get('updateTankSettings.php',
									  	{
									  		tankID: $(enemy).attr('id'),
									  		ShootDelay: $('#'+$(enemy).attr('id')+'> input#ShootDelay').val(),
									  		fieldOfView: $('#'+$(enemy).attr('id')+'> input#fieldOfView').val()
									  	},
									  	function(result, status){
									  		$.alert({
								  				boxWidth: '30%',
			    								useBootstrap: false,
			   									title: '',
			    								content: result
								  			});
									  		
									  	});
										else alert('Set correct values');
									});
								},
				        		NO: function () {
				       			},
			        	}
					});	
				}";
		}

		public function deleteTank(){
			echo "	function deleteTank(enemy){
						$.confirm({
			    			boxWidth: '30%',
			    			useBootstrap: false,
			   				title: '',
			    			content: 'Do you want to delete this tank?',
			    			buttons: {
			        			YES: function () {
									jQuery(document).ready(function(){
								   	
								   	$.get('Model/deleteFromDataBaseByID.php',
								  	{
								  		dataID: $(enemy).attr('id'),
							 			dataField: 'id_enemy',
							 			dataTable: 'tankEnemy',
							 			typeOfData: 'tanks'
								  	},

								  	function(result, status){
								  			$.alert({
								  				boxWidth: '30%',
			    								useBootstrap: false,
			   									title: '',
			    								content: result
								  			});

									  		if(result == 'Success!')
								  				$('#listOfTanks').load('loadActualData.php', {
				  									query: 'SELECT * FROM tankEnemyView'
				  								});
									  	});

		

							  		$('#listOfTanks').load('loadActualData.php', {
				  						query: 'SELECT * FROM tankEnemyView'
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
				$this->saveData();
				$this->deleteTank();
	    	echo "</script>";
		}
	}
			    
?>