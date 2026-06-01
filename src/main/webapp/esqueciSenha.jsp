<%-- 
    Document   : esqueciSenha
    Created on : 23 de mai. de 2026, 20:15:45
    Author     : 2anhn4e0ucgu58a7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="css/styles.css">

<title>Redefinir Senha</title>
</head>

<body>

<main class="container">

    <form id="formReset">

        <h1>Redefinir Senha</h1>

        <div class="input-box">
            <input type="email" id="emailReset" placeholder="Digite seu email" required>
        </div>

        <div class="input-box">
            <input type="password" id="novaSenha" placeholder="Nova senha" required>
        </div>

        <div class="input-box">
            <input type="password" id="confirmarSenha" placeholder="Confirmar senha" required>
        </div>

        <button type="submit">Atualizar Senha</button>

    </form>

</main>

<script src="js/reset.js"></script>

</body>
</html>