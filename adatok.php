<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vízfogyasztás és Víztakarékosság</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./css/adatok.css">
</head>
<body>
<php 
 include './nav.php';
?>
    <main class="centered-content">
        <div class="white-box">
            <!-- Map -->
            <h2 id="cim">Vízfogyasztási Adatok Diagram</h2>
            <div id="controls">
            
                <label for="chartType">Diagram típusa: </label>
                <select id="chartType" onchange="generateChart()">
                    <option value="bar">Oszlop</option>
                    <option value="doughnut">Kör</option>
                </select>
                <canvas id="waterChart"></canvas>
            </div>
        </div>
    </main>


    <!-- Footer -->
    <footer class="bg-info text-white text-center py-3" style="position: sticky; bottom: 0; width: 100%; margin: 0;">
        <p>&copy; 2024 Vízfogyasztás és Víztakarékosság</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <script src="./script.js"></script>
</body>
</html>