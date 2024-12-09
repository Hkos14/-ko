async function fetchWaterData() {
    // Az adatokat a megfelelő PHP fájlból töltjük be
    const response = await fetch('waterdata.php');
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
