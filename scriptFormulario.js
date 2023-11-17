const libroSelect = document.getElementById("libro");
const bookImage = document.querySelector(".book");

libroSelect.addEventListener("change", function() {
    if (libroSelect.value === "libro1") {
        bookImage.classList.remove("hidden");
    } else {
        bookImage.classList.add("hidden");
    }
});
