<?php
session_start();

include 'sql_link.php';

// Fetch movie data from the database
$sql = "SELECT * FROM all_movies";
$result = $conn->query($sql);

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
        <span class="logo"><a href="index.php"><img src="imagens/flixrate2.png" alt="FlixRate" height="100"></a></span>
        <div class="menu">
            <a href="index.php">Home</a>
            <a href="ranking.php">Ranking</a>
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
    <h1>Bem-vindo</h1>
    <p>Descubra as melhores séries, explore rankings e veja novidades!</p>

    <!-- Carousel Section -->
    <div class="carousel-container">
        <div class="container">
        <?php
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<div class="movie-card" data-movie-id="' . $row['id'] . '" style="background-image: url(' . $row['image'] . ');">';
                    echo '<div class="content">';
                    echo '<h2>' . $row['title'] . '</h2>';
                    if (isset($row['subtitle'])) {
                        echo '<span><h3>' . $row['subtitle'] . '</h3></span>';
                    } elseif (isset($row['subtitle_small'])) {
                        echo '<span><h4>' . $row['subtitle_small'] . '</h4></span>';
                    }
                    echo '<span>' . $row['description'] . '</span>'; 
                    echo '</div>'; // close the content div
                    echo '</div>'; // close the movie-card div
                }
            } else {
                echo "No movies found.";
            }
            $conn->close();
        ?>
        </div>
    </div>
    <big><a href="https://github.com/T0rrig0/facusite/tree/main">github repository</a></big>
    <script src="script.js"></script>

</body>
</html>
