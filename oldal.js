
document.addEventListener('DOMContentLoaded', function() {
    const brandLink = document.querySelector('.navbar-brand');
    
    brandLink.addEventListener('click', function(event) {
        event.preventDefault(); // Megakadályozza az alapértelmezett link működését (ha szükséges)
        window.location.href = 'oldal.html'; // Átirányít a kívánt oldalra
    });
});
document.addEventListener('DOMContentLoaded', function() {
    const links = document.querySelectorAll('.nav-link');
    
    links.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault(); // Megakadályozza az alapértelmezett link működését
            const url = link.getAttribute('href'); // A link href értéke
            window.location.href = url; // Átirányítja az új oldalra
        });
    });
});