<%-- 
    Document   : login
    Created on : 23 de mai. de 2026, 20:13:40
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
    <title>BuscaPet Login</title>
</head>

<body>
    
    <main class="container">
        <form action="GerenciarUsuario"
              method="post">

            <input type="hidden"
                   name="acao"
                   value="login">

            <h1>Login BuscaPet</h1>

            <div class="input-box">
                <input id="emailLogin" type="email" name="email" placeholder="Email" required>
                <i class="bx bxs-user"></i>
            </div>

            <div class="input-box">
                <input id="senhaLogin" type="password" name="senha" placeholder="Senha" required>
                <i class="bx bxs-lock-alt"></i>
            </div>

            <div class="remember-forgot">
                <label>
                    <input type="checkbox">
                    Lembrar senha
                </label>
                <a href="esqueciSenha.jsp">Esqueci a senha</a>
            </div>

            <button type="submit">Login</button>

            <div class="register-link">
                <p>Não tem uma conta? <a href="cadastrarUsuarios.jsp">Cadastra-se</a></p>
            </div>

        </form>
    </main>

    <script src="js/login.js"></script>

</body>
</html>