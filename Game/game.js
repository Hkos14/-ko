// Alapbeállítások
const gameContainer = document.getElementById("game-container");
const catcher = document.getElementById("catcher");
const scoreDisplay = document.getElementById("score");
const gameWidth = gameContainer.offsetWidth; 
const catcherWidth = catcher.offsetWidth; 

let score = 0;
//let gameWidth = gameContainer.offsetWidth;
//let catcherWidth = catcher.offsetWidth;
let fallingSpeed = 3000; // Hullás idő ms-ban

// Catcher mozgatása
gameContainer.addEventListener("mousemove", (e) => {
    const rect = gameContainer.getBoundingClientRect();
    let x = e.clientX - rect.left - catcherWidth / 2;

    // Határok ellenőrzése
    x = Math.max(0, Math.min(x, gameWidth - catcherWidth));
    catcher.style.left = `${x}px`;
});
/*document.addEventListener("mousemove", (e) => {
    const rect = gameContainer.getBoundingClientRect();
    let x = e.clientX - rect.left - catcherWidth / 2;

    // Határok ellenőrzése
    x = Math.max(0, Math.min(x, gameWidth - catcherWidth));
    catcher.style.left = `${x}px`;
});*/

// Hulló elemek hozzáadása
function createFallingItem() {
    const item = document.createElement("div");
    item.classList.add("falling-item");

    // Véletlenszerű vízszintes pozíció
    const randomX = Math.random() * (gameWidth - 30);
    item.style.left = `${randomX}px`;

    gameContainer.appendChild(item);

    // Hullás animáció
    item.style.animationDuration = `${fallingSpeed / 1000}s`;

    // Ellenőrzés: találat vagy elmulasztás
    const checkCollision = setInterval(() => {
        const itemRect = item.getBoundingClientRect();
        const catcherRect = catcher.getBoundingClientRect();

        // Ütközés detektálása
        if (
            itemRect.bottom >= catcherRect.top &&
            itemRect.left < catcherRect.right &&
            itemRect.right > catcherRect.left
        ) {
            score++;
            scoreDisplay.textContent = score;
            gameContainer.removeChild(item);
            clearInterval(checkCollision);
        }

        // Ha az elem leesett
        if (itemRect.top > window.innerHeight) {
            gameContainer.removeChild(item);
            clearInterval(checkCollision);
        }
    }, 20);
}

// Hulló elemek időzítése
setInterval(createFallingItem, 1000);
