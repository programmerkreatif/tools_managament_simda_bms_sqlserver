<?php 

$server = "127.0.0.1,1433";
$database = "input20251";
$username = "SA";
$password = "PasswordStrong123!";

$conn = new PDO(
    "sqlsrv:Server=$server;Database=$database",
    $username,
    $password,
    [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    ]
);

echo "Connected!";
