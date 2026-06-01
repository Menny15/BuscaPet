<%-- 
    Document   : verificacao
    Created on : 23 de mai. de 2026, 20:15:18
    Author     : 2anhn4e0ucgu58a7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="css/styles.css">
    <title>Verificação</title>
</head>

<body>
    
<main class="container">

    <form id="formVerificacao">

        <h1>Verificação</h1>
        <p style="text-align:center; margin-top:10px;">
            Digite o código de 6 dígitos enviado no seu Email
        </p>

        <!-- CAMPOS DE CÓDIGO -->
        <div class="codigo-container">
            <input type="text" maxlength="1" class="codigo" inputmode="numeric">
            <input type="text" maxlength="1" class="codigo" inputmode="numeric">
            <input type="text" maxlength="1" class="codigo" inputmode="numeric">
            <input type="text" maxlength="1" class="codigo" inputmode="numeric">
            <input type="text" maxlength="1" class="codigo" inputmode="numeric">
            <input type="text" maxlength="1" class="codigo" inputmode="numeric">
        </div>

        <button type="submit">Verificar</button>

    </form>

</main>

<script src="js/verificacao.js"></script>

</body>
</html>