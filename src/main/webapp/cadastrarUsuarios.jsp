<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
          rel='stylesheet'>

    <title>
        Cadastro BuscaPet
    </title>

    <link rel="stylesheet"
          href="css/styles.css">

</head>

<body>

<main class="container">

    <form action="GerenciarUsuario"
          method="post">

        <input type="hidden"
               name="acao"
               value="cadastrar">

        <h1>
            Cadastro BuscaPet
        </h1>

        <!-- NOME -->
        <div class="input-box">

            <input type="text"
                   name="nome"
                   placeholder="Nome completo"
                   required>

            <i class="bx bxs-user"></i>

        </div>

        <!-- EMAIL -->
        <div class="input-box">

            <input
                   type="email"
                   name="email"
                   placeholder="Email"
                   required>

            <i class="bx bxs-user"></i>

        </div>

        <!-- TELEFONE -->
        <div class="input-box">

            <input type="text"
                   name="telefone"
                   pattern ="[0-9]+"
                   placeholder="Telefone"
                   required>

            <i class="bx bxs-phone"></i>

        </div>

        <!-- SENHA -->
        <div class="input-box">

            <input id="senha"
                   type="password"
                   name="senha"
                   placeholder="Crie uma senha"
                   required>

            <i class="bx bxs-lock-alt"></i>

        </div>

        <!-- CONFIRMAR -->
        <div class="input-box">

            <input id="confirmar"
                   type="password"
                   placeholder="Confirmar senha"
                   required>

            <i class="bx bxs-lock-alt"></i>

        </div>

        <button type="submit">

            Criar conta

        </button>

        <p style="margin-top:15px; text-align:center;">

            Já possui conta?

            <a href="login.jsp">

                Fazer login

            </a>

        </p>

    </form>

</main>

<script src="js/cadastro.js"></script>

</body>
</html>