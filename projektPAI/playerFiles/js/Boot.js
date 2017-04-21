var Game = {};

Game.Boot = function(game) {};

 Game.Boot.prototype = {
	 init:function(tankName, tankEnemyName, login, enemyShootDelay, enemyFieldOfView){
		this.input.maxPointers = 1;
		this.stage.disableVisibilityChange = true;

		this.tankName = tankName;
		this.tankEnemyName = tankEnemyName;
		this.login = login;
		this.enemyShootDelay = enemyShootDelay;
		this.enemyFieldOfView = enemyFieldOfView;
   		
	 },
	
	 preload:function(){
		 this.load.image('preloaderBar', 'assets/preloader.png');
	 },
	
	 create:function(){
		
		 this.state.start('Preloader', true, false, this.tankName, 
		 	this.tankEnemyName, this.login, this.enemyShootDelay, this.enemyFieldOfView);
	
	 }
	
 }