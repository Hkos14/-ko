<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catch & Drop Game</title>
    <link rel="stylesheet" href="game.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<!-- Navigation -->
<nav class="navbar bg-info w-100" style="border-bottom: 2px solid white; border-left: 2px solid white; border-right: 2px solid white;">
    <div class="container">
        <a class="navbar-brand" href="../oldal.php">
            <img src="../vizcsepp-es-level-termeszeti-elemek-logoja-v_242304-original.webp" alt="Vízcsepp ikon" style="height: 30px; margin-right: 8px;"> Víztakarékosság
        </a>
        <div class="navbar-nav ms-auto d-flex flex-row">
            <a class="nav-link" href="../adatok.php">Adatok</a>
            <a class="nav-link" href="game.php">Játék</a>
            <a class="nav-link" href="../tippek.php">Tippek</a>
            <a class="nav-link" href="../rolunk.php">Rólunk</a>
            <a class="nav-link" href="../kapcsolat.php">Elérhetőségeink</a>
        </div>
    </div>
</nav>

    <div id="game-container">
        <div id="catcher"></div>
    </div>
    <div id="scoreboard">
        Score: <span id="score">0</span>
    </div>
    <footer class="bg-info text-white text-center py-3" style="position: sticky; bottom: 0; width: 100%; margin: 0;">
        <p>&copy; 2024 Vízfogyasztás és Víztakarékosság</p>
    </footer>
    <script src="game.js"></script>    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
