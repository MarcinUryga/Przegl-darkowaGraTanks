<?php

	class playersStatController{

		private $model = null;
		private $view = null;

		public function __construct(){

		}

		public function createModel($model){
			$this->model = $model;
		}

		public function createView($view){
			$this->view = $view;
		}

		public function Render($amountOfPlayers = null){
			$this->view->displaySite($this->model->loadDataFromDataBase($amountOfPlayers));
		}

		public function RenderOnlyTable($amountOfPlayers = null){
		
			$this->view->headPart();
			$this->view->displayTableWithPlayers($this->model->loadDataFromDataBase($amountOfPlayers));
		
		}
	}

?>