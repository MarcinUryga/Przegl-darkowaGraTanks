Game.Level1 = function(game){};

var map;
var floor;
var wall;

var controls = {};
var buttons;

var respawn;
var enemyCounter = 0;
var scores = 0;
var lives = 5;

var gameOver = false;
var dead = 0;

var initialPositionX = 300;
var initialPositionY = 400;

var scoreText;

function displayYourActualScore(score){
	jQuery(document).ready(function() {
		var score2 = score;
		if(score>$("#yourHighScore").text())
		$.ajax(
			{
				url: "../saveToDataBase.php",
				type: "POST",
				data: "HighScore="+score2,
				success: function(msg)
				{
					$("#yourHighScore").text(score2);
				}
			});
	});
}

//	==========BULLETS CLASS==========

Bullets = function(game, loadSprite)
{
	this.bullets = game.add.group();
	this.bullets.enableBody = true;
	this.bullets.createMultiple(20, loadSprite);
	this.bullets.setAll('anchor.x', 0.5);
	this.bullets.setAll('anchor.y', 0.5);

	this.bullets.setAll('scale.x', 0.5);
	this.bullets.setAll('scale.y', 0.5);

	this.bullets.setAll('outOfBoundsKill', true);
	this.bullets.setAll('checkWorldBounds', true);

	game.physics.arcade.enable(this.bullets);

	this.firedMissile;

}

TankLives = function(game,x, loadSprite)
{
	this.tankLive = game.add.sprite(0, 0, loadSprite);
	this.x = x * this.tankLive.width/2;
	this.tankLive.anchor.setTo(1, 0);
	this.tankLive.scale.setTo(0.6, 0.6);
	this.name;

	this.tankLive.angle -= 90;

   	this.tankLive.fixedToCamera = true;
	this.tankLive.cameraOffset.setTo(this.x, 0);
}

function displayScoreInThePanel(score){
	jQuery(document).ready(function() {
		if(enemyCounter>$('#yourActualScore').text())
			$('#yourActualScore').text(score+"sdfs");
	});
}


//	==========TANK CLASS==========

Tank = function(name, game, x, y, loadSprite, showLives)
{
	this.bulletTime = 0;
	this.shootTime = 0;
	this.name = name;
	this.currentSpeed = 0;
	this.ifDestroy = false;

	this.tank = game.add.sprite(x, y, loadSprite);
	this.tank.anchor.setTo(0.5, 0.5);
	game.physics.arcade.enable(this.tank);

	
	this.allTankLives = [];
	

    this.tank.angle -= 90;
    game.physics.enable(this.tank, Phaser.Physics.ARCADE);
    this.tank.body.drag.set(0.2);
    this.tank.body.maxVelocity.setTo(600, 600);
    this.tank.body.collideWorldBounds = true;

    this.bullets = new Bullets(game, 'bullet');

    
    this.nick = game.add.text(20, 50, name, { font: "15px Arial Black", fill: "#c51b7d" });
    this.nick.stroke = "#de77ae";
    this.nick.strokeThickness = 16;
    this.nick.setShadow(2, 2, "#333333", 2, true, false);

    game.physics.arcade.enable([ this.nick ]);
	
	this.showLives = function(x)
	{	
		if(showLives)
		for(var i = 0; i<x;i++)
			this.allTankLives[i] = new TankLives(game, i, 'lives'); 
	}

    this.showLives(lives);

    this.displayNick = function()
    {
    	if(!this.ifDestroy)
    	{
    		this.nick.body.x = (this.tank.x - this.nick.body.width/2);
    		this.nick.body.y = this.tank.y + this.tank.height;

			if(this.tank.angle < -180 || this.tank.angle > 0)
	    		this.nick.body.y = this.tank.y - 1.5*this.tank.height;
		}
		else
		{
			this.nick.kill();
		}
    }

    this.killMe = function(enemyShootDelay, enemyFieldOfView)
    {
    	this.counter = 0;

    	if(lives>0)
    	{
    		if(this.allTankLives[lives-1].tankLive.kill())
				lives--;
    	}
    	else	{
    		this.resetGame(name, enemyShootDelay, enemyFieldOfView);
    	}
    

    }

    this.resetPlayer = function()
	{
		this.tank.x = initialPositionX;
		this.tank.y = initialPositionY;
	},

	this.resetGame = function(nick, enemyShootDelay, enemyFieldOfView)
	{
		
		this.resetPlayer();
		lives = 5;
    	this.showLives();
		enemyCounter = 0;
 
		game.state.start('GameOver', true, false, scores, nick, enemyShootDelay, enemyFieldOfView);
		scores = 0;
	}

    this.makeBullet = function(delay)
    {
    	if(game.time.now > this.shootTime)
		{
			this.shootTime = game.time.now + delay;
			this.bullets.firedMissile = this.fireBullet();
		}
    }

    this.explosionAnimation = function(x,y,game)
    {
    	this.kaboom = game.add.sprite(x, y, 'boom');
		this.kaboom.animations.add('kaboom');	
		this.kaboom.anchor.setTo(0.5, 0.5);
		this.kaboom.scale.x = 2;
		this.kaboom.scale.y = 2;
    	this.kaboom.animations.play('kaboom', 50, false);
    }

    this.damageObstacle = function(layer, layerName, enemy)
    {
    	

    	if(game.physics.arcade.collide(this.bullets.firedMissile, layer))
		{
			this.explosionAnimation(this.bullets.firedMissile.x, this.bullets.firedMissile.y, game);
		
			for(var i = -25; i < 25; i += 7)
			{
				map.putTile( Math.floor( Math.random() * ( 72 - 66 + 1 ) + 66 ), layer.getTileX(this.bullets.firedMissile.x + i), layer.getTileY(this.bullets.firedMissile.y), layerName);

				map.putTile( Math.floor( Math.random() * ( 72 - 66 + 1 ) + 66 ), layer.getTileX(this.bullets.firedMissile.x), layer.getTileY(this.bullets.firedMissile.y + i), layerName);		
			}
			
			

			this.bullets.firedMissile.kill();
		}

		for(var i=0; i<enemy.length; i++)
			if(this.checkOverlap(this.bullets.bullets, enemy[i].prototype.tank))
			{
				enemy[i].prototype.killMe(enemy[i].prototype,100,100);
				scoreText.setText("Score: " + scores);

				if(this.bullets.firedMissile)
					this.bullets.firedMissile.kill();
	    	
				this.bullets = new Bullets(game, 'bullet');
			}

	
    }

    this.takeShot = function(enemy, layer, layerName)
    {
    	if(controls.shoot.isDown)
			this.makeBullet(500);

		this.damageObstacle(layer, layerName, enemy);		
    }

    this.tankMove = function(enemy, layer, layerName)
	{

		game.physics.arcade.collide(this.tank, wall);

		//controll movement
		if(controls.left.isDown)	this.tank.angle -= 3;
		
		if(controls.right.isDown)	this.tank.angle += 3;
			
		if (controls.up.isDown)		this.currentSpeed = 500;
	    
		else if (this.currentSpeed > 0)	this.currentSpeed -= 4;
	       	
		if (this.currentSpeed > 0)	game.physics.arcade.velocityFromRotation(this.tank.rotation, this.currentSpeed, this.tank.body.velocity);
		
		//controll shot
		this.takeShot(enemy, layer, layerName);

		this.displayNick();
	}


	this.fireBullet = function()
 	{
		bullet = this.bullets.bullets.getFirstExists(false);
		
		if(bullet)
		{
			bullet.reset(this.tank.x, this.tank.y);
		
			bullet.rotation = this.tank.rotation;
			game.physics.arcade.velocityFromRotation(this.tank.rotation, 1000, bullet.body.velocity);
		}

		return bullet;
	}

	this.checkOverlap = function(spriteA, spriteB)
	{
		var boundsA = spriteA.getBounds();
		var boundsB = spriteB.getBounds();
		boundsA.height = 0.5;
		boundsA.width = 0.5;
		collision = Phaser.Rectangle.intersects(boundsA, boundsB);
		return collision;
	}

}



//	==========ENEMY CLASS==========
EnemyTank = function(name, game, x, y, loadSprite, showLives, enemyShootDelay, enemyFieldOfView)
{
	this.prototype = new Tank(name, game, x, y, loadSprite, showLives);

	this.randDirection;
	this.randDirectionTime = 0;
	this.randAngel;
	enemyCounter++;

	this.prototype.nick.text = name + enemyCounter.toString();

	this.randFunction = function(range)
	{
			randDirection = (Math.random()*range) + 1;
			
		return randDirection;
	}

	this.explosionAnimation = function(x,y,game)
    {
    	this.kaboom = game.add.sprite(x, y, 'boom');
		this.kaboom.animations.add('kaboom');	
		this.kaboom.anchor.setTo(0.5,0.5);
    	this.kaboom.animations.play('kaboom', 50, false);
    }

	this.prototype.killMe = function(tank,x,y,name)
	{
		this.explosionAnimation(tank.tank.x, tank.tank.y, game)
		enemyCounter++;
		scores++;
		tank.tank.x = Math.floor( Math.random() * 3200 + 2700 );
		tank.tank.y = Math.floor( Math.random() * 800 + 100 );
		tank.nick.text = tank.name + enemyCounter.toString();
		displayYourActualScore(scores);
	}

	this.prototype.bullets = new Bullets(game, 'bullet');

	EnemyTank.prototype.takeShot = function(enemy, layer, layerName)
	{		
		if(!this.prototype.ifDestroy)
		{
			this.prototype.makeBullet(enemyShootDelay*1000);

			this.prototype.damageObstacle(layer, layerName, enemy);
		}
		if(this.prototype.checkOverlap(this.prototype.bullets.bullets, enemy.tank))
		{
			enemy.killMe(enemyShootDelay, enemyFieldOfView);

			if(this.prototype.bullets.firedMissile)
			{
				this.prototype.bullets.firedMissile.kill();
	    		this.prototype.bullets = new Bullets(game, 'bullet');
			}
	    	this.prototype.bullets = new Bullets(game, 'bullet');
		}
	}

	EnemyTank.prototype.tankMove = function(enemy, layer, layerName)
	{
		this.prototype.displayNick();
	
		if(game.time.now > this.randDirectionTime)
		{
			randDirection = this.randFunction(10);
			this.randDirectionTime = game.time.now + ((Math.random()*(Math.random()*10) + 1) + 1) * 100;
		}

		game.physics.arcade.collide(this.prototype.tank, wall);

		if(randDirection<9)	
				this.prototype.tank.angle -= this.randFunction(15);
	
		if(randDirection>8)
			this.prototype.tank.angle += this.randFunction(15);
		
		if (this.currentSpeed > 0)	game.physics.arcade.velocityFromRotation(this.prototype.tank.rotation, this.currentSpeed, this.prototype.tank.body.velocity);
		

		if(enemy.tank.position.x > this.prototype.tank.x - enemyFieldOfView*100 && enemy.tank.position.x < this.prototype.tank.x + enemyFieldOfView*100 &&
		   enemy.tank.position.y > this.prototype.tank.y - enemyFieldOfView*100 && enemy.tank.position.y < this.prototype.tank.y + enemyFieldOfView*100)
			{
				this.currentSpeed = 0;
				this.prototype.tank.rotation = game.physics.arcade.angleBetween(this.prototype.tank, enemy.tank);
				
				this.takeShot(enemy, layer, layerName);
			}
		else
			this.currentSpeed = 150;

		
	};
} 

Game.Level1.prototype = {
	init:function(login, enemyShootDelay, enemyFieldOfView){
		 this.login = login;
		 this.enemyShootDelay = enemyShootDelay;
		 this.enemyFieldOfView = enemyFieldOfView;
	},

	create: function(game) {
		login = this.login;


		this.stage.backgroundColor = '#3A5963';
				
		respawn = game.add.group();

		map = this.game.add.tilemap('level_1_map');
		
		map.addTilesetImage('tilesetTerrain', 'tilesetTerrain');
		map.addTilesetImage('tilesetBrick', 'tilesetBrick');
		map.addTilesetImage('tileset', 'tileset');

		
		floor = map.createLayer('floor');
		wall = map.createLayer('wall');

		floor.resizeWorld();

		game.physics.arcade.enable(wall);  

		map.setCollisionBetween(73, 84, true, 'wall');

		wall.resizeWorld();	

		controls = {
			right: game.input.keyboard.addKey(Phaser.Keyboard.D),
			left: game.input.keyboard.addKey(Phaser.Keyboard.A),
			up: game.input.keyboard.addKey(Phaser.Keyboard.W),
			down: game.input.keyboard.addKey(Phaser.Keyboard.S),

			shoot: game.input.keyboard.addKey(Phaser.Keyboard.SPACEBAR),
		};
		
		scoreText = game.add.text(0, 0, "Score: " + scores, { font: "45px Arial Black", fill: "#c51b7d" });
    	scoreText.stroke = "#de77ae";
    	scoreText.strokeThickness = 16;
    	scoreText.setShadow(2, 2, "#333333", 2, true, false);
		scoreText.fixedToCamera = true;
			

  		
		
		enemies = [];
		var amountOfEnemies = 20;
		for (var i = 0; i < amountOfEnemies; i++){
			var x = Math.floor( Math.random() * 3200 + 2700 );
			var y = Math.floor( Math.random() * 800 + 200 );

    		enemies.push(new EnemyTank('wrog', game, x, y, 'enemy', false, this.enemyShootDelay, this.enemyFieldOfView));
		}
    	
   		game.physics.startSystem(Phaser.Physics.ARCADE);
		player = new Tank(this.login, game, initialPositionX, initialPositionY, 'player', true);

		game.camera.follow(player.tank);

	},
		
	update: function(game){

		scoreText.cameraOffset.setTo(game.world.camera.width-scoreText.width, 0);

		player.tankMove(enemies, wall, 'wall');
		for (var i = 0; i < enemies.length; i++)
       		enemies[i].tankMove(player, wall, 'wall');	

  	}

}


	
