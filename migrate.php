<?php
$servername = "localhost";
$username = "root";
$password = "";
$conn = new PDO("mysql:host=$servername", $username, $password);

$conn->exec("SET FOREIGN_KEY_CHECKS = 0;");

$faili = glob("*.sql");

foreach ($faili as $fails) {
    $sql = file_get_contents($fails);
    $conn->exec($sql);
    echo "Izpildits fails: " . $fails . "<br>";
}

echo "<br><b>Visas migracijas ir pabeigtas!</b>";
?>