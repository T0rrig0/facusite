<?php
session_start();

// Verifica se o usuário já está logado
if (isset($_SESSION['usuario'])) {
    header("Location: index.php");
    exit;
}

// Dados de login estáticos (em uma aplicação real, estes viriam de um banco de dados)
$usuarioPadrao = 'admin';
$senhaPadrao = '1234';

$erro = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $usuario = $_POST['usuario'];
    $senha = $_POST['senha'];

    // Valida o login
    if ($usuario === $usuarioPadrao && $senha === $senhaPadrao) {
        $_SESSION['usuario'] = $usuario;
        header("Location: index.php");
        exit;
    } else {
        $erro = 'Usuário ou senha incorretos.';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <nav>
        <span class="logo">FlixRate</span>
        <div class="menu">
            <a href="index.php">Home</a>
            <a href="#">Ranking</a>
            <a href="#">Novos</a>
        </div>
        <div class="login-form">
            <form method="POST" action="login.php">
                <input type="text" name="usuario" placeholder="Usuário" required>
                <input type="password" name="senha" placeholder="Senha" required>
                <button type="submit">Entrar</button>
            </form>
        </div>
    </nav>

    <div class="container">
        <h1>Login</h1>
        <?php if ($erro): ?>
            <p class="erro"><?php echo $erro; ?></p>
        <?php endif; ?>
    </div>
</body>
</html>
