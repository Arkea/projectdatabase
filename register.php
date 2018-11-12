<?php include('functions.php') ?>
//...


<!DOCTYPE html>
<html>
<head>
	<title>Daftar</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header">
	<h2>Daftar Dulu</h2>
</div>
<form method="post" action="register.php">
	<div class="input-group">
		<label>Nama Pengguna</label>
		<input type="text" name="username" value="">
	</div>
	<div class="input-group">
		<label>Surel</label>
		<input type="email" name="email" value="">
	</div>
	<div class="input-group">
		<label>Kata Sandi</label>
		<input type="password" name="password_1">
	</div>
	<div class="input-group">
		<label>Ulangi Kata Sandi</label>
		<input type="password" name="password_2">
	</div>
	<div class="input-group">
		<button type="submit" class="btn" name="kirim">Daftar</button>
	</div>
	<p>
		Sudah daftar ? <a href="login.php">Masuk</a>
	</p>
</form>
</body>
</html>

<?php
if (isset ($_POST['kirim'])) {
	$username = $_POST['username'];
	$email = $_POST['email'];
	$password = $_POST['password_1'];
	$pasword2 = $_POST['password_2'];

	$sql = "INSERT INTO tabel VALUES ('$username','$email','$password','$pasword2')";
	$q = $connect->query($sql);
	if ($q) {
		echo "berhasil boss";
	} else {
		echo "Error: ".$sql."<br>".$connect->error;
    }
	$connect->close();
}
?>