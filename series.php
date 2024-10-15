<?php
session_start();

// Verifica se o gênero foi escolhido
if (!isset($_SESSION['genero'])) {
    header("Location: ranking.php");
    exit;
}

$genero = $_SESSION['genero'];

// Lista de séries por gênero
$series = [
    'acao' => ['Série Ação 1', 'Série Ação 2', 'Série Ação 3'],
    'drama' => ['Série Drama 1', 'Série Drama 2', 'Série Drama 3'],
    'comedia' => ['Série Comédia 1', 'Série Comédia 2', 'Série Comédia 3'],
    'terror' => ['Série Terror 1', 'Série Terror 2', 'Série Terror 3']
];

$seriesSelecionadas = $series[$genero];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ranking de Séries - <?php echo ucfirst($genero); ?></title>
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
        <h1>Ranking de Séries - <?php echo ucfirst($genero); ?></h1>
        <ul>
            <?php foreach ($seriesSelecionadas as $serie): ?>
                <li><?php echo $serie; ?></li>
            <?php endforeach; ?>
        </ul>
        <a href="ranking.php"><button>Voltar</button></a>
    </div>
</body>
</html>
