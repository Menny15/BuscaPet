<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Imagem e Recompensa</title>

    <link rel="stylesheet"
          href="css/style5.css">

</head>

<body>
    
<main class="container">

    <h2>Estamos quase lá! 🐾</h2>

    <p class="sub">
        Adicione uma foto e defina uma recompensa
    </p>

    <form action="GerenciarPet"
          method="post"
          enctype="multipart/form-data">

        <!-- NOME -->
        <input type="hidden" name="nome" value="${param.nome}">
        <input type="hidden" name="especie" value="${param.especie}">
        <input type="hidden" name="raca" value="${param.raca}">
        <input type="hidden" name="genero" value="${param.genero}">
        <input type="hidden" name="cidade" value="${param.cidade}">
        <input type="hidden" name="tipo_anuncio" value="${param.tipo_anuncio}">
        <input type="hidden" name="telefone" value="${param.telefone}">
        <input type="hidden" name="descricao" value="${param.descricao}">

                <!-- FOTO -->
        <div class="upload-area">

            <input type="file"
                   id="imagem"
                   name="foto"
                   accept="image/*"
                   required>

            <label for="imagem">
                Clique "Aqui" para adicionar a foto do pet 📸
            </label>

        </div>

        <!-- PREVIEW -->
        <img id="preview"
             class="preview-img"
             style="display:none;" />

        <!-- RECOMPENSA -->
        <div class="recompensa-box">

            <span>
                Oferecer recompensa?
            </span>

            <label class="switch">

                <input type="checkbox"
                       id="toggleRecompensa"
                       name="recompensa">

                <span class="slider"></span>

            </label>

        </div>

        <!-- VALOR -->
        <div id="valorBox"
             class="valor-box"
             style="display:none;">

            <input type="number"
                   id="valor"
                   placeholder="Digite o valor da recompensa">

        </div>

        <button type="submit">

            Finalizar anúncio

        </button>

    </form>

</main>

<script>

const imagem =
    document.getElementById("imagem");

const preview =
    document.getElementById("preview");

imagem.addEventListener("change", function() {

    const arquivo =
        this.files[0];

    if (arquivo) {

        preview.src =
            URL.createObjectURL(arquivo);

        preview.style.display =
            "block";
    }
});

const toggle =
    document.getElementById("toggleRecompensa");

const valorBox =
    document.getElementById("valorBox");

toggle.addEventListener("change", function() {

    if (this.checked) {

        valorBox.style.display =
            "block";

    } else {

        valorBox.style.display =
            "none";
    }
});

</script>

</body>
</html>