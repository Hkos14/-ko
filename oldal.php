<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vízfogyasztás és Víztakarékosság</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./css/oldal.css">
</head>
<body>
<php 
 include './nav.php'
?>
<!-- Navigation -->
<nav class="navbar bg-info" style="border-bottom: 2px solid white; border-left: 2px solid white; border-right: 2px solid white;">
    <div class="container">
        <a class="navbar-brand" href="index.html">Víztakarékosság</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto" style="margin: 0;">
                <li class="nav-item"><a class="nav-link" href="adatok.html">Adatok</a></li>
                <li class="nav-item"><a class="nav-link" href="./Game/game.html">Játék</a></li>
                <li class="nav-item"><a class="nav-link" href="tippek.html">Tippek</a></li>
                <li class="nav-item"><a class="nav-link" href="rolunk.html">Rólunk</a></li>
                <li class="nav-item"><a class="nav-link" href="kapcsolat.html">Elérhetőségeink</a></li>
            </ul>
        </div>
    </div>
</nav>

>>>>>>>> Stashed changes:index.html
    <!-- Hero Section -->
    <header class="hero">
        <h1>Vízfogyasztás és Víztakarékosság</h1>
        <p>Segítünk fenntarthatóvá tenni a vízhasználatot.</p>
    </header>

    <!-- Main Content -->
    <main class="container my-5 white-box" >
        <!-- Adatok -->
        <section id="adatok">
            <h2>Vízfogyasztási Adatok</h2>
            <p>Fedezze fel az egyes régiók vízfogyasztási szokásait,
                <br>
                és tanuljon a fenntartható megoldásokról.</p>
            <!-- Placeholder Table -->
            <table class="table table-bordered custom-table">
                <thead>
                    <tr>
                        <th>Megye</th>
                        <th>Átlagos napi vízfogyasztás (m³/fő)</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Adatok betöltése -->
                    <tr>
                        <td>Pest megyek</td>
                        <td>27.5</td>
                    </tr>
                    <tr>
                        <td>Nógrad megye</td>
                        <td>18.0</td>
                    </tr>
                    <tr>
                        <td>Békés megye</td>
                        <td>23.0</td>
                    </tr>
                    <!-- Ellenőrizd a meglévő adatokat -->
                </tbody>
            </table>
        </section>
        
        <!-- Tippek -->
        <section id="tippek" class="my-5">
            <h2>Víztakarékossági Tippek</h2>
            <ul>
                <li>Használjon víztakarékos csaptelepeket és zuhanyrózsákat.</li>
                <li>Gyűjtse az esővizet kertöntözéshez.</li>
                <li>Mosogasson és mosson teljes adagokkal.</li>
            </ul>
        </section>
        <!-- Map -->
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="script.js"></script>

</body>
</html>