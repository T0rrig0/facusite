const movieCards = document.querySelectorAll(".movie-card");

movieCards.forEach(card => {
    card.addEventListener("click", () => {
        const movieId = card.dataset.movieId;
        if (movieId) {
            window.location.href = "movie-details.php?id=" + movieId;
        }
    });
});

const genreButtons = document.querySelectorAll('.genre_buttons a'); // Select all genre buttons

    function updateButtonStyles() {
        const url = new URL(window.location.href);
        const genre = url.searchParams.get('genre');
        genreButtons.forEach(button => {
            // Remove 'active' class from all buttons first
            button.classList.remove('active');
            // Add 'active' class only to the button matching the current genre
            if (button.href.includes(`?genre=${genre}`) || (genre === null && button.id === 'all-button')) {
                button.classList.add('active'); 
            }
        });
    }
    // Call the updateButtonStyles function initially
    updateButtonStyles();
    // Listen for URL changes
    window.addEventListener('popstate', updateButtonStyles); 

window.onload = function() {
    const currentUrl = window.location.pathname;

    // Check for 'ranking.php' first
    if (currentUrl === '/ranking.php') {
        // If there is a genre parameter, set zoom to 1.0
        if (currentUrl.includes('?genre=')) {
            document.body.style.zoom = '1.5';
        } else { // Otherwise, set zoom to 0.7
            document.body.style.zoom = '0.7';
        }
    } else if (currentUrl === '/index.php') { // Check for 'index.php'
        document.body.style.zoom = '0.7';
    } else { // For any other URL, set zoom to 1.0
        document.body.style.zoom = '1.5';
    }
};