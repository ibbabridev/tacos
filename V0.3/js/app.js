

let menuData;

function loadjson () {
 fetch("data/menu.json")
        .then(response => response.json())
        .then(data => {
            menuData = data;

            console.log(menuData);

            const buttons = document.querySelectorAll(
                ".categories button"
            );

            buttons.forEach(button => {
                button.addEventListener("click", () => {

                    const category = button.dataset.category;

                    console.log(category);

                    loadDishes(category);
                });
            });
        });
}


function loadDishes(categoryName) {
    const category = menuData.categories.find(c => c.name === categoryName);
    const grid = document.querySelector(".dishes-grid");

    grid.innerHTML = "";

    if (!category) return;

    category.dishes.forEach(dish => {
        const article = document.createElement("article");
        article.className = "dish-card";
        article.innerHTML = `
            <img src="https://via.placeholder.com/400x300" alt="${dish.name}">
            <div class="dish-card-content">
                <h2>${dish.name}</h2>
                <p>${dish.description}</p>
                <p class="dish-price">$${dish.price}</p>
            </div>
        `;
        article.addEventListener("click", () => {
            MostrarModal(dish);
        });

        grid.appendChild(article);
    });
}

loadjson();

function MostrarModal(dish) {
    const modal = document.querySelector("#dish-modal");

    modal.querySelector(".modal__image").src =
        "https://via.placeholder.com/400x300";

    modal.querySelector(".modal__image").alt = dish.name;
    modal.querySelector(".modal__name").textContent = dish.name;
    modal.querySelector(".modal__description").textContent =
        dish.description;
    modal.querySelector(".modal__price").textContent =
        "$" + dish.price;

    modal.classList.add("is-open");
}

function CerrarModal() {
    document.querySelector("#dish-modal")
        .classList.remove("is-open");
}

document.querySelector("#modal-close").addEventListener("click", CerrarModal);

