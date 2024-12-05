<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catch & Drop Game</title>
    <link rel="stylesheet" href="game.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../style.css">
</head>
<body>
<?php 
 include '../nav.php'
?>
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
</body>
</html>
