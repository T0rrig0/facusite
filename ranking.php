<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $_SESSION['genero'] = $_POST['genero'];
    header("Location: series.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ranking de Séries por Gênero</title>
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
        <h1>Escolha o Gênero de Série</h1>
        <form method="POST" action="ranking.php">
            <label for="genero">Escolha o gênero:</label>
            <select name="genero" id="genero" required>
                <option value="acao">Ação</option>
                <option value="drama">Drama</option>
                <option value="comedia">Comédia</option>
                <option value="terror">Terror</option>
            </select>
            <button type="submit">Ver Ranking</button>
        </form>
    </div>
</body>
</html>

