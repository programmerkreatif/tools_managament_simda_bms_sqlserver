<?php
try {
    $pdo = new PDO(
        "sqlsrv:Server=127.0.0.1,1433;Database=master;Encrypt=no",
        "sa",
        "PasswordStrong123!"
    );
    echo "Koneksi SQL Server OK 🚀";
} catch (PDOException $e) {
    echo $e->getMessage();
}
