<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vízfogyasztás és Víztakarékosság</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./css/tippek.css">
</head>
<body>
<?php 
 include './nav.php'
?>

   <!-- Tippek -->
<section id="tippek" class="my-5">
    <h2 class="text-center text-primary mb-4">Víztakarékossági Tippek</h2>
    <div class="row">
        <div class="col-md-6">
            <ul class="list-group list-group-flush">
                <li class="list-group-item"><i class="fas fa-tint text-primary"></i> Használjon víztakarékos csaptelepeket és zuhanyrózsákat.</li>
                <li class="list-group-item"><i class="fas fa-cloud-rain text-primary"></i> Gyűjtse az esővizet kertöntözéshez.</li>
                <li class="list-group-item"><i class="fas fa-dishwasher text-primary"></i> Mosogasson és mosson teljes adagokkal.</li>
                <li class="list-group-item"><i class="fas fa-temperature-low text-primary"></i> Csökkentse a víz hőmérsékletét a mosás és fürdés során.</li>
                <li class="list-group-item"><i class="fas fa-shower text-primary"></i> A zuhanyzás idejét csökkentse 5-7 percre.</li>
            </ul>
        </div>
        <div class="col-md-6">
            <ul class="list-group list-group-flush">
                <li class="list-group-item"><i class="fas fa-tools text-primary"></i> Rendszeresen ellenőrizze a csapokat és csöveket, hogy nincsenek-e szivárgások.</li>
                <li class="list-group-item"><i class="fas fa-toilet text-primary"></i> Használjon vízmegőrző eszközöket, például vízmentes WC-tartályokat.</li>
                <li class="list-group-item"><i class="fas fa-sun text-primary"></i> Használjon öntözőrendszert reggel vagy este, hogy elkerülje a párolgást.</li>
                <li class="list-group-item"><i class="fas fa-washer text-primary"></i> Használja a mosogatógépet teljes töltettel, így elkerülheti a felesleges vízfogyasztást.</li>
                <li class="list-group-item"><i class="fas fa-leaf text-primary"></i> Öntözze a kertet a száraz időszakokban, amikor az esőzés nem elegendő, de ügyeljen arra, hogy ne túlöntözze.</li>
            </ul>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-md-6">
            <ul class="list-group list-group-flush">
                <li class="list-group-item"><i class="fas fa-fire text-primary"></i> A vízforralóban csak annyi vizet forraljon, amennyire ténylegesen szüksége van.</li>
                <li class="list-group-item"><i class="fas fa-water text-primary"></i> Kerülje a túl gyakori locsolást a kertben, és inkább a gyökerek környékére öntözze a vizet.</li>
                <li class="list-group-item"><i class="fas fa-snowflake text-primary"></i> A hűtőszekrényben lévő ételek leolvasztása előtt hagyja, hogy szobahőmérsékleten olvadjanak fel, ezzel elkerülve a folyamatos vízfogyasztást a csap alatt.</li>
            </ul>
        </div>
    </div>
</section>
    <!-- Footer -->
    <footer class="bg-info text-white text-center py-3 " style="position: sticky; bottom: 0; width: 100%; margin: 0">
        <p>&copy; 2024 Vízfogyasztás és Víztakarékosság</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./script.js"></script>
</body>
</html>