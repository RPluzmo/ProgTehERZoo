<?php
$servername = "localhost";
$username = "root";
$password = "";
$conn = new PDO("mysql:host=$servername", $username, $password);

// 1. ATSLĒDZAM pārbaudi, lai MySQL ļauj dzēst tabulas jebkādā secībā
$conn->exec("SET FOREIGN_KEY_CHECKS = 0;");

$faili = glob("*.sql");


foreach ($faili as $fails) {
    $sql = file_get_contents($fails);
    $conn->exec($sql);
    echo "Izpildits fails: " . $fails . "<br>";
}

// 2. IESLĒDZAM pārbaudi atpakaļ, lai sistēma atkal būtu droša
$conn->exec("SET FOREIGN_KEY_CHECKS = 1;");

echo "<br><b>Visas migracijas ir pabeigtas!</b>";
?>