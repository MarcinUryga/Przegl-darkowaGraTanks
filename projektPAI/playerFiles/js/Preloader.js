Game.Preloader = function(game){
	
	this.preloadBar = null;
	
};

Game.Preloader.prototype = {

	init:function(tankName, tankEnemyName, login, enemyShootDelay, enemyFieldOfView){
		this.tankName = tankName;
		this.tankEnemyName = tankEnemyName;
		this.login = login;
		this.enemyShootDelay = enemyShootDelay;
		this.enemyFieldOfView = enemyFieldOfView;
	}, 

	preload:function(){
	
		this.preloadBar = this.add.sprite(this.world.centerX, this.world.centerY, 'preloaderBar');
		
		this.preloadBar.anchor.setTo(5, 2);
		
		this.time.advancedTimig = true;
		this.load.setPreloadSprite(this.preloadBar);
		//LOAD ALL ASSETS
		
		this.load.image('tilesetTerrain', 'assets/terrain.png');

		this.load.image('tilesetBrick', 'assets/tilesetBrick.png');
		

		this.load.tilemap('level_1_map', 'assets/level_1_map1new.json', null, Phaser.Tilemap.TILED_JSON);
		
		this.load.spritesheet('player', this.tankName);

		this.load.spritesheet('boom', 'assets/boom.png', 67, 70, 24);

		this.load.spritesheet('lives', '../playerTankSprites/b123.png');

		this.load.audio('music', ['assets/music.mp3', 'assets/music.ogg']);

		this.load.spritesheet('lostLives', '../enemyTankSprites/enemyTank.png');
		
		this.load.spritesheet('buttons', 'assets/buttons.png', 193, 71);

		this.load.image('bullet', 'assets/bullet.png');

		this.load.image('enemy', this.tankEnemyName);

		this.load.image('titlescreen', 'assets/titlescreen.jpg');

		this.load.image('button', 'assets/button.png');

		this.load.spritesheet('kaboom', 'assets/blowup.gif', 64, 64, 23);

	},
	
	create:function(){

		music = this.add.audio('music', true);

    	music.play();
		music.loopFull(0.8);

		this.state.start('MainMenu', true, false, this.login, this.enemyShootDelay, this.enemyFieldOfView);
	}
};