<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anunciar Pet</title>

    <link rel="stylesheet" href="css/style4.css">
</head>

<body>

<main class="container">

    <div class="topo">
        <h2>Anunciar Pet 🐾</h2>
        <p>Preencha os dados para ajudar a encontrar o pet</p>
    </div>

    <!-- FORMULÁRIO -->
    <form id="formAnuncio" action="anuncio2.jsp" method="post">

        <div class="input-group">
            <input type="text" name="nome">
            <label>Nome do pet (Opcional)</label>
        </div>

        <div class="input-group">
            <select name="especie" required>
                <option value="" disabled selected></option>
                <option value="Cachorro">Cachorro</option>
                <option value="Gato">Gato</option>
                <option value="Calopsita">Calopsita</option>
            </select>
            <label>Espécie</label>
        </div>

        <div class="input-group">
            <input type="text" name="raca">
            <label>Raça (Opcional)</label>
        </div>

        <div class="input-group">
            <select name="genero" required>
                <option value="" disabled selected></option>
                <option value="Macho">Macho</option>
                <option value="Fêmea">Fêmea</option>
            </select>
            <label>Gênero</label>
        </div>

        <div class="input-group">
            <input type="text" name="cidade" required>
            <label>Cidade</label>
        </div>

        <div class="input-group">
            <select id="tipo" name="tipo_anuncio" required>
                <option value=""></option>
                <option value="Perdido">Perdido</option>
                <option value="Encontrador">Procurando Tutor</option>
                <option value="Adocao">Para Adoção</option>
            </select>
            <label>Tipo de anúncio</label>
        </div>

        <div class="input-group">
            <input id="telefone" type="tel"
                   name="telefone"
                   placeholder="(61) 99999-9999"
                   maxlength="11"
                   required>
            <label>Telefone para contato</label>
        </div>

        <div class="input-group">
            <textarea id="descricao" name="descricao"
                      maxlength="150"
                      placeholder=" "></textarea>

            <p id="contadorDescricao">0/150</p>

            <label id="descri">Descrição (Opcional)</label>
        </div>

        <button type="submit">Continuar</button>

    </form>

    <p id="mensagem"></p>

</main>

<script src="js/anun.js"></script>

</body>
</html>