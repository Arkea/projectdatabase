<?php
include 'db_connect.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header">
	<h2>Masuk</h2>
</div>
<form method="post" action="login.php">
	<div class="input-group">
		<label>Surel</label>
		<input type="email" name="email" value="">
	</div>
	<div class="input-group">
		<label>Kata Sandi</label>
		<input type="password" name="password_1">
	</div>
	<div class="input-group">
		<button type="submit" class="btn" name="kirim">Masuk</button>
	</div>
</form>
</body>
</html>
<?php
if (isset ($_POST['kirim'])) {
	$email = $_POST['email'];
	$password = $_POST['password_1'];

	$sql = "INSERT INTO tabel VALUES ('aaaa','$email','$password','aaaa','aaaaaa')";
	$q = $connect->query($sql);
	if ($q) {
		echo "berhasil boss";
	} else {
		echo "Error: ".$sql."<br>".$connect->error;
    }
	$connect->close();
}
?>