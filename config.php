<?php
session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$dbhost = "localhost";
$dbuser = "eleve";
$dbpass = "Password123";
$dbname = "geststock";
$bdd = new PDO('mysql:host='.$dbhost.';dbname='.$dbname, $dbuser, $dbpass);
$con=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname)or die("Failed To Connect Database");
//$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$bdd->exec("SET CHARACTER SET utf8");
?>
