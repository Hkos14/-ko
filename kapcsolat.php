
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vízfogyasztás és Víztakarékosság</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./css/kapcsolat.css">
</head>
<body>
<!-- Navigation -->

<?php
    include "./nav.php";
?>

<!-- Container a tartalomhoz -->
<div class="container content">
    <div class="section-header white-box">
        <h2>Elérhetőségeink</h2>
        <p>Vegye fel velünk a kapcsolatot az alábbi módokon.</p>
    </div>

    <!-- Elérhetőségi kártyák -->
    <div class="row">
        <!-- Telefon kártya -->
        <div class="col-md-4">
            <div class="contact-card">
                <div class="card-body">
                    <div class="contact-info">
                        <i class="fas fa-phone contact-icon"></i>
                        <div>
                            <h4>Telefon</h4>
                            <p><a href="tel:+36201234567">+36 20 123 4567</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Email kártya -->
        <div class="col-md-4">
            <div class="contact-card">
                <div class="card-body">
                    <div class="contact-info">
                        <i class="fas fa-envelope contact-icon"></i>
                        <div>
                            <h4>Email</h4>
                            <p><a href="mailto:info@viztakarakos.hu">info@viztakarakos.hu</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Cím kártya -->
        <div class="col-md-4">
            <div class="contact-card">
                <div class="card-body">
                    <div class="contact-info">
                        <i class="fas fa-map-marker-alt contact-icon"></i>
                        <div>
                            <h4>Cím</h4>
                            <p>Balassagyarmat, Rákóczi út 7, 2660</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Térkép -->
    <div class="map-container">
        <h3>Térkép</h3>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2697.093247517275!2d19.29381681563564!3d48.07452467921596!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x476a1b4f3b8c7997%3A0x0!2zQmFsYXNzYWd5YXJtYXQsIE1hZ3lhcm9yc8OpZw!5e0!3m2!1shu!2shu!4v1636978312465!5m2!1shu!2shu" allowfullscreen="" loading="lazy"></iframe>
    </div>
</div>

<!-- Footer -->
<footer class="rgba(9,9,121,1) 18% text-white text-center py-3 " style="border-top: 2px solid white; border-left: 2px solid white; border-right: 2px solid white;">
    <p>&copy; 2024 Vízfogyasztás és Víztakarékosság</p>
</footer>
    <!-- Bootstrap és egyéb szkriptek -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./script.js"></script>
</body>
</html>