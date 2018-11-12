<?php
$connect = new mysqli("localhost","root","","id_admin");
if (mysqli_connect_error()) {
	die ('Connection Error('.mysqli_connect_errno().')'.mysqli_connect_error());
}
?>