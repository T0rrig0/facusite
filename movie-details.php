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

// Get the movie ID from the URL
$movieId = isset($_GET['id']) ? $_GET['id'] : '';

// Fetch movie data
if (!empty($movieId)) {
    $sql = "SELECT * FROM all_movies WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $movieId);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $movie = $result->fetch_assoc();
    } else {
        // If not found in ranking_movies, search in movies
        $sql = "SELECT * FROM all_movies WHERE id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $movieId);
        $stmt->execute();
        $result = $stmt->get_result();
        $movie = $result->fetch_assoc(); 
    }

    // Check for genre before rendering HTML
    $hasGenre = isset($movie['genre']) && !empty($movie['genre']); 
} else {
    // Handle the case where movieId is empty (perhaps show an error message)
    $movie = null;
    $hasGenre = false; // Make sure it's false if movie is null
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FlixRate - Movie Details</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <nav>
        <span class="logo"><a href="index.php"><img src="imagens/flixrate2.png" alt="FlixRate" height="100"></a></span>
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

    <div class="movie-container">
        <?php if ($movie):
        ?>
        <h1><?php echo $movie['title']; ?></h1>
        <img src="<?php echo $movie['image']; ?>" alt="<?php echo $movie['title']; ?>">
        <div class="movie-info">
            <p>Description for <?php echo $movie['title']; ":" ?></p>
            <p><?php echo $movie['description'] ?></p>
            <div class="genre">
                <?php if ($hasGenre): ?>
                    <a href="ranking.php?genre=<?php echo $movie['genre'] ?>"><?php echo $movie['genre'] ?></a> 
                <?php endif; ?>
            </div>
            <!-- Add a rating system -->
            <div class="rating">
                <span>Rating:</span>
                <span class="star-rating">
                    <?php echo $movie['rating'] ?>
                </span>
            </div>
        </div>
        <?php if($movie['id'] <= 40): ?> <a href="ranking.php"><button>Voltar para Rankings</button></a>
        <?php else: ?> <a href="index.php"><button>Voltar para Home</button></a> <?php endif; ?>
        <?php else: ?>
            <p>Movie not found.</p>
        <?php endif; ?>
    </div>

</body>
</html>
