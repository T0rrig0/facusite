<?php
session_start();

// Database connection details
$servername = "localhost:3306";
$username = "root";
$password = "root";
$dbname = "home_movies";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to fetch movies by genre
function getMoviesByGenre($genre, $conn) {
    $sql = "SELECT * FROM ranking_movies WHERE genre = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $genre); 
    $stmt->execute();
    $result = $stmt->get_result();
    return $result; 
}

// Get the genre from the URL parameter
$genre = isset($_GET['genre']) ? $_GET['genre'] : ''; // Default to empty if not set

// Fetch all movies (for the initial display)
$sql = "SELECT * FROM ranking_movies";
$allMoviesResult = $conn->query($sql); // Store result in a separate variable

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FlixRate - Home</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <nav>
        <span class="logo"><a href="index.php">FlixRate</a></span>
        <div class="menu">
            <a href="index.php">Home</a>
            <a href="ranking.php">Ranking</a>
            <a href="#">Novos</a>
        </div>
        <div class="login-area">
            <?php if (isset($_SESSION['usuario'])): ?>
                <div class="user-info">
                    <span>Bem-vindo, <?php echo $_SESSION['usuario']; ?>!</span>
                    <form method="POST" action="logout.php">
                        <button type="submit">Sair</button>
                    </form>
                </div>
            <?php else: ?>
                <form method="POST" action="login.php" class="login-form">
                    <input type="text" name="usuario" placeholder="Usuário" required>
                    <input type="password" name="senha" placeholder="Senha" required>
                    <button type="submit">Entrar</button>
                </form>
            <?php endif; ?>
        </div>
    </nav>
    <h1>Bem-vindo ao FlixRate</h1>
    <p>Descubra as melhores séries, explore rankings e veja novidades!</p>

    <!-- Genre Selection Section -->
    <div class="genre_selection">
        <h2>Explore por Gênero</h2>
        <a href="ranking.php">Todos</a>
        <a href="ranking.php?genre=acao">Ação</a>
        <a href="ranking.php?genre=comedia">Comédia</a>
        <a href="ranking.php?genre=drama">Drama</a>
        <a href="ranking.php?genre=fantasia">Fantasia</a>
        <a href="ranking.php?genre=ficcao">Ficcao</a>
        <a href="ranking.php?genre=terror">Terror</a>
        <a href="ranking.php?genre=romance">Romance</a>
        <a href="ranking.php?genre=misterio">Mistério</a>
    </div>

    <!-- Carousel Section -->
    <div class="carousel-container">
        <div class="container" id="movie-carousel">
            <?php
                // Display movies based on the selected genre or all movies
                if (!empty($genre)) {
                    $result = getMoviesByGenre($genre, $conn);
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo '<div class="movie-card" style="background-image: url(' . $row['image'] . ');">';
                            echo '<div class="content">';
                            echo '<h2>' . $row['title'] . '</h2>';
                            if(isset($row['subtitle'])){echo '<span><h3>'. $row['subtitle'] . '</h3></span>';}
                            elseif(isset($row['subtitle_small'])){echo '<span><h4>'. $row['subtitle_small'] . '</h4></span>';}
                            echo '<span>' . $row['description'] . '</span>';
                            echo '</div>';
                            echo '</div>';
                        }
                    } else {
                        echo "No movies found for this genre.";
                    }
                } else {
                    // Display all movies 
                    if ($allMoviesResult->num_rows > 0) {
                        while ($row = $allMoviesResult->fetch_assoc()) {
                            echo '<div class="movie-card" style="background-image: url(' . $row['image'] . ');">';
                            echo '<div class="content">';
                            echo '<h2>' . $row['title'] . '</h2>';
                            if(isset($row['subtitle'])){echo '<span><h3>'. $row['subtitle'] . '</h3></span>';}
                            elseif(isset($row['subtitle_small'])){echo '<span><h4>'. $row['subtitle_small'] . '</h4></span>';}
                            echo '<span>' . $row['description'] . '</span>';
                            echo '</div>';
                            echo '</div>';
                        }
                    } else {
                        echo "No movies found.";
                    }
                }
                $conn->close();
            ?>
        </div>
    </div>

</body>
</html>