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

                    // Fetch movie data from the database
                    $sql = "SELECT * FROM movies";
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

        <!-- Carousel section -->
        <div class="carousel-container">
            <div class="container">
                <?php
                    // Generate the movie cards HTML
                    if ($result->num_rows > 0) {
                      while($row = $result->fetch_assoc()) {
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

                    $conn->close();
                ?>
            </div>
        </div>
    </div>

    </body>
</html>
