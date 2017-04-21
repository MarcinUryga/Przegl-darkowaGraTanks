<?php

session_start();

class RegisterUser
{
	private $login = null;
	private $email = null;
	private $password1 = null;
	private $password2 = null;
	private $salt = null;
	private $hashPassword = null;

	public function __construct(){
		$GLOBALS['everything_OK'] = true;
		$this->login = htmlentities($_POST['login'], ENT_QUOTES, "utf-8");
		$this->email = $_POST['email'];

		$this->loginValidation();
		$this->emailValidation();
		$this->passwordValidation();
		$this->checkbox();
	}

	public function loginValidation(){
		if (strlen($this->login)<3 || strlen($this->login)>20)
		{
			$GLOBALS['everything_OK'] = false;
			$_SESSION['e_login']="Login musi posiadać od 3 do 20 znaków";
		}
	}

	public function emailValidation(){
		 $emailB = filter_var($this->email, FILTER_SANITIZE_EMAIL);
		
		 if((filter_var($emailB, FILTER_VALIDATE_EMAIL)==false )|| ($emailB!=$this->email))
		 {
			 $GLOBALS['everything_OK'] = false;
			 $_SESSION['e_email'] = "Podaj poprawny adres email";
		}
	}

	public function passwordValidation(){
		$this->password1=htmlentities($_POST['password1'], ENT_QUOTES, "utf-8");
		$this->password2=htmlentities($_POST['password2'], ENT_QUOTES, "utf-8");;

		if((strlen($this->password1) <8) || (strlen($this->password1) >20))
		{
			$GLOBALS['everything_OK'] = false;
			$_SESSION['e_password']="Haslo musi zawierac od 8-20 znakow";
		}
		
		if($this->password1!=$this->password2)
		{
			$GLOBALS['everything_OK'] = false;
			$_SESSION['e_password']="podane hasla nie sa identyczne";
		}
	}

	public function checkbox(){
		$checkbox=$_POST['checkbox'];
		if(!isset($checkbox)){
			$GLOBALS['everything_OK'] = false;
			$_SESSION['e_checkbox']="Potwierdz akceptacje regulaminu";
		}
	}


	public function emailIndividual($connection){
		//Czy email juz istnieje?
		$result=$connection->query("SELECT id_user FROM users WHERE email='$this->email'");
		if(!$result) throw new Exception($connection->error);
				
		$ile_takich_maili = $result->num_rows;
		if($ile_takich_maili>0)
		{
			$GLOBALS['everything_OK'] = false;
			$_SESSION['e_email']="Istnieje juz konto przypisane do tego adresu email";
		}
	}

	public function loginIndividual($connection){
		//czy login istnieje
		$result=$connection->query("SELECT id_user FROM users WHERE login='$this->login'");
		if(!$result) throw new Exception($connection->error);
			
		$ile_takich_loginow=$result->num_rows;
		if($ile_takich_loginow>0)
		{
			$GLOBALS['everything_OK'] = false;
			$_SESSION['e_login']="Istnieje juz uzytkownik o takim loginie";
		}
	}

	public function hashPassword(){
		$this->salt = sha1(rand(-1000, 1000));
		$this->hashPassword = sha1($this->salt.$this->password1);
	}

	public function addUserToDataBase($connection){
		//$connection->query("START TRANSACTION");
		if($connection->query("INSERT INTO users VALUES(NULL, '$this->login', '$this->hashPassword', '$this->email', '$this->salt', '0')") && 
			$connection->query("INSERT INTO player VALUES('0', LAST_INSERT_ID(), (SELECT id_tank FROM tankPlayer ORDER BY id_tank LIMIT 1), (SELECT id_enemy FROM tankEnemy ORDER BY id_enemy LIMIT 1))"))
			return true;
		return false;
	}
	private function displayError($e){
		echo "<div class='panel'>";
		echo '<span style="color:red;">Blad serwera! Przepraszamy za niedogodnosci i prosimy o rejestracje w innym terminie!</span>';
		echo '<br />Informacja developerska: '.$e;
		echo "</div>";
	}

	public function connectionFunction(){
		if($GLOBALS['everything_OK']){

			require_once "connect.php";
			mysqli_report(MYSQLI_REPORT_STRICT);
			
			try{
				$connection = new mysqli($host, $db_user, $db_password, $db_name);
				if($connection->connect_errno!=0){
					throw new Exception(mysqli_connect_errno());
				}

				$this->emailIndividual($connection);
				$this->loginIndividual($connection);

				if($GLOBALS['everything_OK']){
					try{
						$this->hashPassword();
						if($this->addUserToDataBase($connection)){
							//if($connection->query("COMMIT")){
								$_SESSION['udanarejestracja']=true;
								header('Location:witamy.php');
							}
						else throw new Exception($connection->error);

					}catch (Exception $e){
						//$connection->query("ROLLBACK");
						$this->displayError();
					}
				}

				$connection->close();

			}catch(Exception $e){
				$this->displayError($e);
			}
		}
	}
}


if(isset($_POST['login'])){
	$registerUser = new RegisterUser();
	$registerUser->connectionFunction();
	
}
?>
<!DOCTYPE HTML>

<html lang = "pl">
<head>
	<script src='https://www.google.com/recaptcha/api.js'></script>
	<meta charset = "utf-8" />
	<meta http-equiv = "X-UA-Compatible" content = "IE=edge,chrome=1" />
	<title>TANKS - załóż konto</title>
	<meta name = "description" content = "Przegladarkowa gra TANKS" />
	<meta name = "keywords" content = "gra, online, czolg, czolgi, game,tanks,free" />
	<link rel="stylesheet" type="text/css" href="style\style.css" media="all">
	<link rel = "stylesheet" href = "style/military-styles.css" type = "text/css" />
	<style>
		.error
		{
			color:red;
			margin-top:1%;
			margin-left:10%;
		}
	</style>
</head>
	
<body>

	<form method="post">
		<div id="panel"><br />
			<div class="zawartosc">
				<div class="panel_uzytkownika">	
					<br /><input type=text name=login id=login placeholder="login" title="UWAGA! Jesli login będzie się składał z samych wielkich liter wszystkie zmienią się na małe!" required=true autofocus>
					<?php
						
						if(isset($_SESSION['e_login']))
						{
							echo '<div class="error">'.$_SESSION['e_login'].'</div>';
							unset($_SESSION['e_login']);
						}
					
					?>
					<br />
				
					<input type=password name=password1 placeholder="password" id=password required=true>
					<?php
					
					if(isset($_SESSION['e_password']))
					{
						echo '<div class="error">'.$_SESSION['e_password'].'</div>';
						unset($_SESSION['e_password']);
					}
				
					?>
					<br />
					<input type=password name=password2 placeholder="repeat password" id=password required=true><br />
				
					<input type=email placeholder="e-mail" id=email name=email required=true>
					<?php
					
					if(isset($_SESSION['e_email']))
					{
						echo '<div class="error">'.$_SESSION['e_email'].'</div>';
						unset($_SESSION['e_email']);
					}
				
					?>
					<br />
					<label>
						<input type=checkbox name=checkbox id=checkbox required=true style="margin-left:5%;">I accept the terms of use.
					</label>
					<?php
					
					if(isset($_SESSION['e_checkbox']))
					{
						echo '<div class="error">'.$_SESSION['e_checkbox'].'</div>';
						unset($_SESSION['e_checkbox']);
					}
				
					?>
					<br /><br />
				 
						
					<br /><br />
				</div>
				<br />
				<input type=submit value="REGISTER ME" id=rejestracja  class="panel-button">
				<br />
				<a href="index.php" class="panel-button">
					<div style="margin:2%;">BACK TO LOGIN</div>
				</a>
			</div>
		</div>
	</form>
</body>
	
</body>
</html>
