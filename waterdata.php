<?php
// Adatbázis kapcsolat betöltése
require 'connect.php';

// Adatok lekérdezése a táblából
$query = "SELECT 
Counties.Name AS CountyName,
SUM(Households.WaterConsumption) AS TotalWaterConsumption
FROM 
Counties
LEFT JOIN Settlements ON Settlements.CountyID = Counties.ID
LEFT JOIN Streets ON Streets.SettlementID = Settlements.ID
LEFT JOIN Households ON Households.StreetID = Streets.ID
GROUP BY Counties.Name;";
$result = mysqli_query($dbconn, $query);

if (!$result) {
    // Hiba esetén JSON formátumban adjuk vissza a hibaüzenetet
    header('Content-Type: application/json');
    echo json_encode(['error' => 'Hiba a lekérdezés végrehajtásakor!']);
    exit;
}

// Eredmények összegyűjtése
$water_data = [];
while ($row = mysqli_fetch_assoc($result)) {
    $water_data[] = $row;
}

// JSON válasz visszaadása
header('Content-Type: application/json');
echo json_encode($water_data);

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Adatbázis kapcsolat bezárása
//mysqli_close($dbconn);

