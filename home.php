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
        <h1>Bem-vindo ao FlixRate</h1>
        <p>Descubra as melhores séries, explore rankings e veja novidades!</p>

        <!-- Adicionando a seção de imagens retangulares -->
        <div class="image-gallery">
            <!-- Exibindo 16 imagens -->
            <div class="image-item">
                <img src="imagens/deadpool1.jpg" alt="Série 1">
            </div>
            <div class="image-item">
                <img src="imagens/divertidamente.jpg" alt="Série 2">
            </div>
            <div class="image-item">
                <img src="imagens/joker3.jpg" alt="Série 3">
            </div>
            <div class="image-item">
                <img src="imagens/venom4.jpg" alt="Série 4">
            </div>

            <div class="image-item">
                <img src="imagens/corvo5.jpg" alt="Série 5">
            </div>
            <div class="image-item">
                <img src="imagens/it6.jpg" alt="Série 6">
            </div>
            <div class="image-item">
                <img src="imagens/vingadores7.jpg" alt="Série 7">
            </div>
            <div class="image-item">
                <img src="imagens/malvado8.jpg" alt="Série 8">
            </div>

            <div class="image-item">
                <img src="imagens/babydriver9.jpg" alt="Série 9">
            </div>
            <div class="image-item">
                <img src="imagens/velozes10.jpg" alt="Série 10">
            </div>
            <div class="image-item">
                <img src="imagens/aranha11.jpg" alt="Série 11">
            </div>
            <div class="image-item">
                <img src="imagens/harry12.jpg" alt="Série 12">
            </div>
        </div>
    </div>
</body>
</html>
