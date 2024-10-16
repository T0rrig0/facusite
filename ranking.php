<?php
session_start();
?>

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
        <span class="logo">FlixRate</span>
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

    <div class="container">
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
           
        </div>
    </div>

    <script>
        function showGenre(genre) {
            const gallery = document.getElementById('genre-gallery');
            let content = '';

            if (genre === 'acao') {
                content = `
                    <div class="image-item"><img src="imagens/acao1.jpg" alt="acao1"></div>
                    <div class="image-item"><img src="imagens/acao2.jpg" alt="acao2"></div>
                    <div class="image-item"><img src="imagens/acao3.jpg" alt="acao3"></div>
                    <div class="image-item"><img src="imagens/acao4.jpg" alt="acao4"></div>
                    <div class="image-item"><img src="imagens/acao5.jpg" alt="acao5"></div>
                `;
            } else if (genre === 'comedia') {
                content = `
                    <div class="image-item"><img src="imagens/comedia1.jpg" alt="comedia1"></div>
                    <div class="image-item"><img src="imagens/comedia2.jpg" alt="comedia2"></div>
                    <div class="image-item"><img src="imagens/comedia3.jpg" alt="comedia3"></div>
                    <div class="image-item"><img src="imagens/comedia4.jpg" alt="comedia4"></div>
                    <div class="image-item"><img src="imagens/comedia5.jpg" alt="comedia5"></div>
                `;
            } else if (genre === 'drama') {
                content = `
                    <div class="image-item"><img src="imagens/drama1.jpg" alt="drama1"></div>
                    <div class="image-item"><img src="imagens/drama2.jpg" alt="drama2"></div>
                    <div class="image-item"><img src="imagens/drama3.jpg" alt="drama3"></div>
                    <div class="image-item"><img src="imagens/drama4.jpg" alt="drama4"></div>
                    <div class="image-item"><img src="imagens/drama5.jpg" alt="drama5"></div>
                `;
            } else if (genre === 'fantasia') {
                content = `
                    <div class="image-item"><img src="imagens/fantasia1.jpg" alt="fantasia1"></div>
                    <div class="image-item"><img src="imagens/fantasia2.jpg" alt="fantasia2"></div>
                    <div class="image-item"><img src="imagens/fantasia3.jpg" alt="fantasia3"></div>
                    <div class="image-item"><img src="imagens/fantasia4.jpg" alt="fantasia4"></div>
                    <div class="image-item"><img src="imagens/fantasia5.jpg" alt="fantasia5"></div>
                `;
            } else if (genre === 'ficcao') {
                content = `
                    <div class="image-item"><img src="imagens/ficcao1.jpg" alt="ficcao1"></div>
                    <div class="image-item"><img src="imagens/ficcao2.jpg" alt="ficcao2"></div>
                    <div class="image-item"><img src="imagens/ficcao3.jpg" alt="ficcao3"></div>
                    <div class="image-item"><img src="imagens/ficcao4.jpg" alt="ficcao4"></div>
                    <div class="image-item"><img src="imagens/ficcao5.jpg" alt="ficcao5"></div>
                `;
            } else if (genre === 'terror') {
                content = `
                    <div class="image-item"><img src="imagens/terror1.jpg" alt="terror1"></div>
                    <div class="image-item"><img src="imagens/terror2.jpg" alt="terror2"></div>
                    <div class="image-item"><img src="imagens/terror3.jpg" alt="terror3"></div>
                    <div class="image-item"><img src="imagens/terror4.jpg" alt="terror4"></div>
                    <div class="image-item"><img src="imagens/terror5.jpg" alt="terror5"></div>
                `;
            } else if (genre === 'romance') {
                content = `
                    <div class="image-item"><img src="imagens/romance1.jpg" alt="romance1"></div>
                    <div class="image-item"><img src="imagens/romance2.jpg" alt="romance2"></div>
                    <div class="image-item"><img src="imagens/romance3.jpg" alt="romance3"></div>
                    <div class="image-item"><img src="imagens/romance4.jpg" alt="romance4"></div>
                    <div class="image-item"><img src="imagens/romance5.jpg" alt="romance5"></div>
                `;
            } else if (genre === 'misterio') {
                content = `
                    <div class="image-item"><img src="imagens/misterio1.jpg" alt="misterio1"></div>
                    <div class="image-item"><img src="imagens/misterio2.jpg" alt="misterio2"></div>
                    <div class="image-item"><img src="imagens/misterio3.jpg" alt="misterio3"></div>
                    <div class="image-item"><img src="imagens/misterio4.jpg" alt="misterio4"></div>
                    <div class="image-item"><img src="imagens/misterio5.jpg" alt="misterio5"></div>
                `;
            }

            gallery.innerHTML = content;
        }
    </script>
</body>
</html>
