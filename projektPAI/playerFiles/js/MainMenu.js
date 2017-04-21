Game.MainMenu = function(game) {};

 Game.MainMenu.prototype = {

 	init:function(login, enemyShootDelay, enemyFieldOfView){
		 this.login = login;
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

    		

    		var buttonH = 100;
    		var buttonW = 300;

			this.createButton(game, "Play", game.world.camera.width/2, game.world.camera.height/2-buttonH, buttonW, buttonH,
				function(){
					this.state.start('Level1', true, false, this.login, this.enemyShootDelay, this.enemyFieldOfView);
				});

			this.createButton(game, "About", game.world.camera.width/2, game.world.camera.height/2 + buttonH, buttonW, buttonH,
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