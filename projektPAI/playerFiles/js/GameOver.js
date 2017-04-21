Game.GameOver = function(game) {};

var score = 0;

 Game.GameOver.prototype = {
	 
  	 init:function(getScore, nick, enemyShootDelay, enemyFieldOfView) 
  	 {
  	 	score = getScore;
  	 	this.login = nick;
  	 	this.enemyShootDelay = enemyShootDelay;
  	 	this.enemyFieldOfView = enemyFieldOfView;
  	 },


	 create:function(game){
			
			titlescreen = game.add.sprite(game.world.camera.width/2, game.world.camera.height/2, 'titlescreen');
			titlescreen.anchor.setTo(0.5, 0.5);
	 		titlescreen.width = game.world.camera.width;
	 		titlescreen.height = game.world.camera.height;

    		console.log(game.world.camera.width/2);
    		console.log(game.world.camera.height/2);

    		gameOverText = game.add.text(game.world.camera.width/2, game.world.camera.height/2 - 200, "Game Over", { font: "65px Arial Black", fill: "#c51b7d" });
    		gameOverText.stroke = "#de77ae";
    		gameOverText.strokeThickness = 16;
    		gameOverText.setShadow(2, 2, "#333333", 2, true, false);
			gameOverText.anchor.setTo(0.5, 0.5);


			scoreText = game.add.text(game.world.camera.width/2, game.world.camera.height/2 - 100, "Score: " + score, { font: "45px Arial Black", fill: "#c51b7d" });
    		scoreText.stroke = "#de77ae";
    		scoreText.strokeThickness = 16;
    		scoreText.setShadow(2, 2, "#333333", 2, true, false);
			scoreText.anchor.setTo(0.5, 0.5);


			this.createButton(game, "Play", game.world.camera.width/2, game.world.camera.height/2, 300, 100,
				function(){
					//game.state.start('Level1', true, false);
					game.state.start('Level1', true, false, this.login, this.enemyShootDelay, this.enemyFieldOfView);

				});

			this.createButton(game, "About", game.world.camera.width/2, game.world.camera.height/2 + 192, 300, 100,
				function(){
					console.log("About");
				});

	},

	 update:function(game){
		
	 },

	 createButton:function(game, string, x, y, w, h, callback)
	 {
		var button1 = game.add.button(x,y,'button', callback, this, 2,1,0);

		button1.anchor.setTo(0.5, 0.5);			
		button1.width = w;
		button1.height = h;

		var txt = game.add.text(button1.x, button1.y, string, {
			font: "14px Arial",
			fill: "#fff",
			align: "center"
		});
		txt.anchor.setTo(0.5, 0.5);
	 }
	
 }