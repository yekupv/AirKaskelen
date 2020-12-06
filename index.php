<DOCTYPE! HTML>
<html>
<head>
</head>
<body>
<?php

$host = 'localhost';
$user = 'root';
$pass = '';
$dbName = 'sample_db';
$connect = mysqli_connect($host,$user,$pass,$dbName) or die(mysqli_error($connect));
mysqli_query($connect,"SET NAMES 'utf8'");


$login = $password ="";
 if (empty($_POST["login"])){
	 echo "Name is required";
 }else{
	 $login = test_input($_POST["login"]);
 }
 if (empty($_POST["password"])){
	 echo "empty";
 }else{
	 $password = test_input($_POST["password"]);
 }
 $query = "SELECT * FROM admin WHERE login ='$login' AND password = '$password'";
 $result= mysqli_query($connect,$query) or die(mysqli_error($connect));
 $users = $result->fetch_assoc(); 
 if(count($users) == 0){
	echo "Такой пользователь не найден.";
	exit();
	}
  else if(count($users) == 1){
	echo "Логин или пароль введены неверно";
	exit();
  }
header("location:html/admin.html");
setcookie('user', $users['login'], time() + 3600, "/");
 $connect ->close();
 function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>

</body>
</html>