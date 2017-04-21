<?php
	
	include("subsitesControllerI.php");

	class PlayersController implements subsitesControllerI{

		private $playersSiteView = null;
		private $playersSiteModel = null;

		public function __construct(){
			$this->controll();
			session_start();
		}

		public function createView($view){
			$this->playersSiteView = $view;
			$_SESSION["view"] = $this->playersSiteView;
		}

		public function createModel($model){
			$this->playersSiteModel = $model;
								
			$_SESSION["model"] = $this->playersSiteModel;
		}

		public function getModel(){
			return $this->playersSiteModel;			
		}

		private function deletePlayerController(){
			echo "	function deletePlayer(player, login){
	    				$.confirm({
	    					boxWidth: '30%',
	    					useBootstrap: false,
	   						title: 'Confirm!',
	    					content: 'Would you like to delete player: '+$(login).attr('id')+'?',
	    					buttons: {
	        					YES: function () {
									jQuery(document).ready(function(){	
									   	$.get('Model/deleteFromDataBaseByID.php',
							  			{
							 				dataID: $(player).attr('id'),
							 				dataField: 'id_user',
							 				dataTable: 'users',
							 				typeOfData: 'player'
							  			},
							  			
							  			function(result, status){
							  				$.alert({
							  					//boxWidth: '30%',
		    									//useBootstrap: false,
		   										title: '',
		    									content: result
							  				});

								  			if(result == 'Success!')
								  				$('.square').load('loadActualData.php',{
								  					query: 'SELECT * FROM playersStatView' 
								  				});
								  		});
								  		$('.square').load('loadActualData.php',{
								  			query: 'SELECT * FROM playersStatView'
								  		});
									});
									
								},


	        					NO: function () {
	       						},
	        				}
						});	
					}";
		}

		private function resetPlayerController(){
			echo "	function resetPlayersScore(player, login){
						$.confirm({
							boxWidth: '30%',
	    					useBootstrap: false,
	   						title: 'Confirm!',
	    					content: 'Would you like to reset score for '+$(login).attr('id')+'?',
	    					buttons: {
	        					YES: function () {
	            					jQuery(document).ready(function(){	
						   				$.get('reset.php',
						  				{
				  							dataID: $(player).attr('id'), 
				  							dataField: 'id_user', 
				  							dataTable: 'player', 
				  							fieldWithValue: 'scores',
				  							newValue: '0'
				 		 				},
				  						function(result, status){
				  							$.alert({
							  					boxWidth: '30%',
	    										useBootstrap: false,
	   											title: '',
	    										content: result
							  				});
				  							if(result == 'Success!')
			  								$('.square').load('loadActualData.php',{
								  					query: 'SELECT * FROM playersStatView'
								  			});
				  						});

									});
	        					},
	        					
	        					NO: function () {
	       						},
	        				}
						});	
					}";	
		}

		public function Controll(){
			echo "<script>";
				$this->deletePlayerController();
				$this->resetPlayerController();
	    	echo "</script>";

		}

		public function Render(){
			$playerC = new PlayersController();
			$playerC->createModel(new adminModel());
			$playerC->createView(new PlayersView($playerC->getModel()->loadDataFromDataBase("SELECT * FROM playersStatView")));
		}
	}

?>