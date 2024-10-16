<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FlixRate - Ranking por Gênero</title>
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

    <div class="ranking_container">
        <h1>Ranking por Gênero</h1>
        <p>Escolha um gênero para ver as séries mais bem classificadas.</p>

        <div class="genre-selection">
            <button onclick="showGenre('acao')">Ação</button>
            <button onclick="showGenre('comedia')">Comédia</button>
            <button onclick="showGenre('drama')">Drama</button>
            <button onclick="showGenre('fantasia')">Fantasia</button>
            <button onclick="showGenre('ficcao')">Ficção Científica</button>
            <button onclick="showGenre('terror')">Terror</button>
            <button onclick="showGenre('romance')">Romance</button>
            <button onclick="showGenre('misterio')">Mistério</button>
        </div>

        <div id="genre-gallery" class="image-gallery">
            <!-- Movie cards will be loaded here -->
        </div>
    </div>

    <script>
        function showGenre(genre) {
            const gallery = document.getElementById('genre-gallery');
            let content = '';

            <?php 
                // PHP code to fetch the movies array
                $movies = [
                    'acao' => [
                        [
                            "title" => "John Wick",
                            "description" => "Description for John Wick",
                            "image" => "imagens/acao1.jpg"
                        ],
                        [
                            "title" => "Mad Max",
                            "description" => "Description for Mad Max",
                            "image" => "imagens/acao2.jpg"
                        ],
                        [
                            "title" => "The Raid",
                            "description" => "Description for The Raid",
                            "image" => "imagens/acao3.jpg"
                        ],
                        [
                            "title" => "Mission Impossible",
                            "description" => "Description for Mission Impossible",
                            "image" => "imagens/acao4.jpg"
                        ],
                        [
                            "title" => "Fast and Furious",
                            "description" => "Description for Fast and Furious",
                            "image" => "imagens/acao5.jpg"
                        ],
                    ],
                    'comedia' => [
                        // ... ( comedy movies)
                    ],
                    'drama' => [
                        // ... (Add drama movies)
                    ],
                    'fantasia' => [
                        // ... (Add fantasy movies)
                    ],
                    'ficcao' => [
                        // ... (Add sci-fi movies)
                    ],
                    'terror' => [
                        // ... (Add horror movies)
                    ],
                    'romance' => [
                        // ... (Add romance movies)
                    ],
                    'misterio' => [
                        // ... (Add mystery movies)
                    ]
                ];

                // Encode the movies array as JavaScript variable
                echo "const movies = " . json_encode($movies) . ";";
            ?>

            movies[genre].forEach(movie => {
                content += `
                    <div class="movie-card" style="background-image: url(${movie.image}); height: 500px; width: 200px;">
                        <div class="content">
                            <h2>${movie.title}</h2>
                            <span>${movie.description}</span>
                        </div>
                    </div>
                `;
            });

            gallery.innerHTML = content;
        }
    </script>
</body>
</html>