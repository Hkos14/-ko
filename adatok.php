
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vízfogyasztás és Víztakarékosság</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/adatok.css">
</head>
<body>
<?php 
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
    <script>
        async function fetchWaterData() {
            // Az adatokat a megfelelő PHP fájlból töltjük be
            const response = await fetch('data.JSON');
            const data = await response.json();
            return data;
        }

        async function generateChart() {
            // Diagram típusának kiválasztása (pl. oszlopdiagram)
            const chartType = document.getElementById('chartType').value;

            // Lekérjük az adatokat
            let data = await fetchWaterData();

            // Adatok előkészítése a diagramhoz
            const labels = data.map(item => item.CountyName); // Megyék nevei
            const waterConsumption = data.map(item => Number(item.TotalWaterConsumption)); // Összes vízfogyasztás

            const ctx = document.getElementById('waterChart').getContext('2d');
            if (window.myChart) {
                // Ha már van aktív diagram, azt töröljük
                window.myChart.destroy();
            };

            const barColors = [
                "#b91d47",
                "#00aba9",
                "#2b5797",
                "#e8c3b9",
                "#1e7145",
                "#ff5733",
                "#33ff57",
                "#3357ff",
                "#ff33a8",
                "#a833ff",
                "#ffc133",
                "#33fff3",
                "#ff3333",
                "#33ff9a",
                "#9a33ff",
                "#b1ff33",
                "#33b1ff",
                "#ff7133",
                "#7133ff",
                "#ff3371"
            ]; 

            // Új diagram létrehozása
            window.myChart = new Chart(ctx, {
                type: chartType,
                data: {
                    labels: labels,
                    datasets: [
                        {
                            label: 'Megyénkénti vízfogyasztás (m³)',
                            backgroundColor: barColors,
                            borderColor: 'red',
                            data: waterConsumption,
                            borderWidth: 2, // Vonalak vastagsága
                        }
                    ]
                },
                options: {
                    responsive: true,
                    plugins: {
                        title: {
                            display: true,
                            text: 'Megyénkénti Vízfogyasztás (m³)'
                        }
                    },
                    scales: {
                        x: {
                            title: {
                                display: true,
                                text: 'Megyék'
                            }
                        },
                        y: {
                            title: {
                                display: true,
                                text: 'Vízfogyasztás (m³)'
                            },
                            beginAtZero: true
                        }
                    }
                }
            });
        }

        // Alapértelmezett diagram generálása
        generateChart();

    </script>
</body>
</html>