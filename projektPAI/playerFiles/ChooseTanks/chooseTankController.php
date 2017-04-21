<?php

	class chooseTankController{

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

		public function Render(){
			$this->view->displaySite($this->model->returnFieldID(), $this->model->loadDataFromDataBase());
		}
	}

?>