<?php
$host     = "localhost";
$user     = "root";
$password = "";
$database = "transaksi barang";

$hari_ini = date("Y-m-d");

$conn  = new mysqli($host, $user, $password, $database);

if (mysqli_connect_errno($conn)) {
   //this for show failed

   echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

?>