<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Pet" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Pets</title>
</head>

<body>

<h2>Lista de Pets</h2>

<a href="cadastrarPet.jsp">
    Novo Pet
</a>

<br><br>

<table border="1">

<tr>
    <th>ID</th>
    <th>Nome</th>
    <th>Espécie</th>
    <th>Cidade</th>
    <th>Telefone</th>
    <th>Foto</th>
    <th>Ações</th>
</tr>

<%

List<Pet> lista =
        (List<Pet>)
        request.getAttribute("lista");

if (lista != null) {

    for (Pet p : lista) {

%>

<tr>

<td><%= p.getId() %></td>
<td><%= p.getNome() %></td>
<td><%= p.getEspecie() %></td>
<td><%= p.getCidade() %></td>
<td><%= p.getTelefone() %></td>

<td>
    <img
        src="imagens/<%= p.getFoto() %>"
        width="120"
        height="120"
    >
</td>

<td>

<a href="GerenciarPet?acao=alterar&id=<%= p.getId() %>">
    Editar
</a>

|

<a href="GerenciarPet?acao=excluir&id=<%= p.getId() %>">
    Excluir
</a>

</td>

</tr>

<%
    }
}
%>

</table>

</body>
</html>