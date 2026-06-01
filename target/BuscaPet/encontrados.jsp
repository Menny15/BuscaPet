<%-- 
    Document   : encontrados
    Created on : 23 de mai. de 2026, 20:16:43
    Author     : 2anhn4e0ucgu58a7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<title>Encontrados</title>
<link rel="stylesheet" href="css/style2.css">
</head>

<body>

<nav class="navbar">

        <div class="logo-area">
          <img id="logopet" src="logo_tcc_1_2-removebg-preview 1.svg" alt="">
        <h1 id="logo">Busca Pet</h1>
        </div>

        <div class="menu">
            <a href="index.jsp" onclick="ini()">Início</a>
            <a href="GerenciarPet?acao=perdidos" onclick="pp()" class="quebra">Pets Perdidos</a>
            <a href="encontrados.jsp" onclick="encon()">Encontrados</a>
            <a href="adocao.jsp" onclick="adocao()">Adoção</a>
            <a href="cadastrarPet.jsp" onclick="an()" class="anun">Anunciar</a>
            <a href="login.jsp" onclick="login()" class="cad">Login</a>
        </div>
    </nav>

     <header class="header">

        <div id="pesquisa">
            <input id="searchInput" type="text" placeholder="Digite o nome, raça ou cidade..." />
            <button type = "button" id="btnBuscar">🔍</button>
            <p id="resultado" ></p>
            <p id="mensagem" ></p>
        </div>

<h2 class="titulo-pagina">Pets Encontrados 🐾</h2>

<section id="listaEncontrados" class="pets-container"></section>

<script src="js/encontrados.js"></script>

</body>
</html>
