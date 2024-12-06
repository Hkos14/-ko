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
<!-- Navigation -->
<nav class="navbar bg-info" style="border-bottom: 2px solid white; border-left: 2px solid white; border-right: 2px solid white;">
    <div class="container">
        <a class="navbar-brand" href="index.html">Víztakarékosság</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto ">
                <li class="nav-item"><a class="nav-link" href="adatok.html">Adatok</a></li>
                <li class="nav-item"><a class="nav-link" href="./Game/game.html">Játék</a></li>
                <li class="nav-item"><a class="nav-link" href="tippek.html">Tippek</a></li>
                <li class="nav-item"><a class="nav-link" href="rolunk.html">Rólunk</a></li>
                <li class="nav-item"><a class="nav-link" href="kapcsolat.html">Elérhetőségeink</a></li>
            </ul>
        </div>
    </div>
</nav>
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