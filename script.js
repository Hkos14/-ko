async function fetchWaterData() {
    // Az adatokat a megfelelő PHP fájlból töltjük be
    const response = await fetch('water_data.php');
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
    }

    // Új diagram létrehozása
    window.myChart = new Chart(ctx, {
        type: chartType,
        data: {
            labels: labels,
            datasets: [
                {
                    label: 'Megyénkénti vízfogyasztás (m³)',
                    data: waterConsumption,
                    borderColor: 'blue',
                    backgroundColor: 'rgba(0, 0, 255, 0.2)',
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
