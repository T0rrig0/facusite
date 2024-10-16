<?php
session_start();
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
                // Movie data
                $movies = [
                    [
                        "title" => "", 
                        "description" => "", 
                        "image" => "imagens/null.jpg" 
                    ],
                    [
                        "title" => "", 
                        "description" => "", 
                        "image" => "imagens/null.jpg" 
                    ],
                    [
                        "title" => "Deadpool",
                        "subtitle" => "& Wolverine",
                        "description" => "Description for Deadpool", 
                        "image" => "imagens/deadpool1.jpg" 
                    ],
                    [
                        "title" => "Joker", 
                        "description" => "Description for Joker", 
                        "image" => "imagens/joker3.jpg" 
                    ],
                    [
                        "title" => "Venom:",
                        "subtitle" => "Tempo de Carnificina",
                        "description" => "Description for Venom", 
                        "image" => "imagens/venom4.jpg" 
                    ],
                    [
                        "title" => "O Corvo", 
                        "description" => "Description for O Corvo", 
                        "image" => "imagens/corvo5.jpg" 
                    ],
                    [
                        "title" => "IT", 
                        "description" => "Description for IT", 
                        "image" => "imagens/it6.jpg" 
                    ],
                    [
                        "title" => "Vingadores:",
                        "subtitle" => "Guerra Infinita",
                        "description" => "Description for Vingadores", 
                        "image" => "imagens/vingadores7.jpg" 
                    ],
                    [
                        "title" => "O Malvado", 
                        "description" => "Description for O Malvado", 
                        "image" => "imagens/malvado8.jpg" 
                    ],
                    [
                        "title" => "Baby Driver", 
                        "description" => "Description for Baby Driver", 
                        "image" => "imagens/babydriver9.jpg" 
                    ],
                    [
                        "title" => "Velozes e Furiosos", 
                        "description" => "Description for Velozes e Furiosos", 
                        "image" => "imagens/velozes10.jpg" 
                    ],
                    [
                        "title" => "Homem Aranha:",
                        "subtitle" => "Sem Volta Para Casa",
                        "description" => "Description for Homem Aranha", 
                        "image" => "imagens/aranha11.jpg" 
                    ],
                    [
                        "title" => "Harry Potter", 
                        "description" => "Description for Harry Potter", 
                        "image" => "imagens/harry12.jpg" 
                    ]
                    // Add more movies here...
                ];

                // Generate the movie cards HTML
                foreach ($movies as $movie) {
                    echo '<div class="movie-card" style="background-image: url(' . $movie['image'] . ');">';
                    echo '<div class="content">';
                    echo '<h2>' . $movie['title'] . '</h2>';
                    if(isset($movie['subtitle'])){echo '<span><h3>'. $movie['subtitle'] . '</h3></span>';}
                    echo '<span>' . $movie['description'] . '</span>';
                    echo '</div>';
                    echo '</div>';
                } 

                ?>
            </div>
        </div>
    </div>

    </body>
</html>
