<%@page import="java.util.List"%>
<%@page import="model.Pet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

<meta charset="UTF-8">

<title>Pets Perdidos</title>

<link rel="stylesheet" href="css/style1.css">

</head>

<body>

<nav class="navbar">

    <div class="logo-area">

        <img id="logopet"
             src="logo_tcc_1_2-removebg-preview 1.svg"
             alt="">

        <h1 id="logo">
            Busca Pet
        </h1>

    </div>

    <div class="menu">

        <a href="index.jsp">
            Início
        </a>

        <a href="GerenciarPet?acao=perdidos"
           class="quebra">

            Pets Perdidos
        </a>

        <a href="encontrados.jsp">
            Encontrados
        </a>

        <a href="adocao.jsp">
            Adoção
        </a>

        <a href="cadastrarPet.jsp"
           class="anun">

            Anunciar
        </a>

        <a href="login.jsp"
           class="cad">

            Login
        </a>

    </div>

</nav>

<header class="header">

    <div id="pesquisa">

        <input id="searchInput"
               type="text"
               placeholder="Digite o nome, raça ou cidade..." />

        <button type="button"
                id="btnBuscar">

            🔍
        </button>

        <p id="resultado"></p>

        <p id="mensagem"></p>

    </div>

</header>

<h2 style="padding:20px;">
    Pets Perdidos
</h2>

<section id="listaPets"
         class="pets-container">

<%

List<Pet> lista =
    (List<Pet>) request.getAttribute("lista");

if (lista != null) {

    for (Pet p : lista) {

%>

    <div class="card">

        <img src="imagens/<%= p.getFoto() %>"
             alt="pet">

        <h3>
            <%= p.getNome() %>
        </h3>

        <p>
            <%= p.getRaca() %>
        </p>

        <p>
            <%= p.getCidade() %>
        </p>

        <% if (p.isRecompensa()) { %>

            <p class="recompensa">
                💰 Possui recompensa
            </p>

        <% } %>

        <button class="btn-details"
                onclick="toggleDetalhes(<%= p.getId() %>)">

            Ver detalhes

        </button>

        <div id="detalhes-<%= p.getId() %>"
             class="box-extra">

            <p>
                <strong>Tipo:</strong>
                <%= p.getTipoAnuncio() %>
            </p>

            <p>
                <strong>Telefone:</strong>
                <%= p.getTelefone() %>
            </p>

            <p>
                <strong>Espécie:</strong>
                <%= p.getEspecie() %>
            </p>

            <p>
                <strong>Gênero:</strong>
                <%= p.getGenero() %>
            </p>

            <p>
                <strong>Descrição:</strong>
                <%= p.getDescricao() %>
            </p>

        </div>

    </div>

<%
    }
}
%>

</section>



    <script>

function toggleDetalhes(id) {

    const box =
        document.getElementById(
            "detalhes-" + id
        );

    if (box.style.display === "block") {

        box.style.display = "none";

    } else {

        box.style.display = "block";
    }
}

</script>

</body>
</html>