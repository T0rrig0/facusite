const movieCards = document.querySelectorAll(".movie-card");

movieCards.forEach(card => {
    card.addEventListener("click", () => {
        const movieId = card.dataset.movieId;
        if (movieId) {
            window.location.href = "movie-details.php?id=" + movieId;
        }
    });
});